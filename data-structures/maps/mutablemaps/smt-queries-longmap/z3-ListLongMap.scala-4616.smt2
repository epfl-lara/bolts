; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64350 () Bool)

(assert start!64350)

(declare-fun b!722851 () Bool)

(declare-fun res!484630 () Bool)

(declare-fun e!405077 () Bool)

(assert (=> b!722851 (=> (not res!484630) (not e!405077))))

(declare-datatypes ((array!40884 0))(
  ( (array!40885 (arr!19561 (Array (_ BitVec 32) (_ BitVec 64))) (size!19982 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40884)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40884 (_ BitVec 32)) Bool)

(assert (=> b!722851 (= res!484630 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722852 () Bool)

(declare-fun e!405075 () Bool)

(assert (=> b!722852 (= e!405077 e!405075)))

(declare-fun res!484626 () Bool)

(assert (=> b!722852 (=> (not res!484626) (not e!405075))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7168 0))(
  ( (MissingZero!7168 (index!31039 (_ BitVec 32))) (Found!7168 (index!31040 (_ BitVec 32))) (Intermediate!7168 (undefined!7980 Bool) (index!31041 (_ BitVec 32)) (x!62066 (_ BitVec 32))) (Undefined!7168) (MissingVacant!7168 (index!31042 (_ BitVec 32))) )
))
(declare-fun lt!320472 () SeekEntryResult!7168)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40884 (_ BitVec 32)) SeekEntryResult!7168)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722852 (= res!484626 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19561 a!3186) j!159) mask!3328) (select (arr!19561 a!3186) j!159) a!3186 mask!3328) lt!320472))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722852 (= lt!320472 (Intermediate!7168 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!722853 () Bool)

(declare-fun res!484624 () Bool)

(declare-fun e!405076 () Bool)

(assert (=> b!722853 (=> (not res!484624) (not e!405076))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722853 (= res!484624 (validKeyInArray!0 k0!2102))))

(declare-fun b!722854 () Bool)

(declare-fun res!484632 () Bool)

(assert (=> b!722854 (=> (not res!484632) (not e!405076))))

(assert (=> b!722854 (= res!484632 (validKeyInArray!0 (select (arr!19561 a!3186) j!159)))))

(declare-fun b!722855 () Bool)

(declare-fun res!484627 () Bool)

(assert (=> b!722855 (=> (not res!484627) (not e!405076))))

(declare-fun arrayContainsKey!0 (array!40884 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722855 (= res!484627 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!722857 () Bool)

(declare-fun res!484625 () Bool)

(assert (=> b!722857 (=> (not res!484625) (not e!405077))))

(declare-datatypes ((List!13616 0))(
  ( (Nil!13613) (Cons!13612 (h!14666 (_ BitVec 64)) (t!19939 List!13616)) )
))
(declare-fun arrayNoDuplicates!0 (array!40884 (_ BitVec 32) List!13616) Bool)

(assert (=> b!722857 (= res!484625 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13613))))

(declare-fun b!722858 () Bool)

(declare-fun e!405074 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!722858 (= e!405074 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19561 a!3186) j!159) a!3186 mask!3328) lt!320472))))

(declare-fun b!722859 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40884 (_ BitVec 32)) SeekEntryResult!7168)

(assert (=> b!722859 (= e!405074 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19561 a!3186) j!159) a!3186 mask!3328) (Found!7168 j!159)))))

(declare-fun b!722860 () Bool)

(assert (=> b!722860 (= e!405075 false)))

(declare-fun lt!320475 () SeekEntryResult!7168)

(declare-fun lt!320477 () array!40884)

(declare-fun lt!320473 () (_ BitVec 64))

(assert (=> b!722860 (= lt!320475 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320473 lt!320477 mask!3328))))

(declare-fun lt!320476 () SeekEntryResult!7168)

(assert (=> b!722860 (= lt!320476 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320473 mask!3328) lt!320473 lt!320477 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!722860 (= lt!320473 (select (store (arr!19561 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!722860 (= lt!320477 (array!40885 (store (arr!19561 a!3186) i!1173 k0!2102) (size!19982 a!3186)))))

(declare-fun b!722861 () Bool)

(declare-fun res!484628 () Bool)

(assert (=> b!722861 (=> (not res!484628) (not e!405076))))

(assert (=> b!722861 (= res!484628 (and (= (size!19982 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19982 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19982 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722862 () Bool)

(declare-fun res!484635 () Bool)

(assert (=> b!722862 (=> (not res!484635) (not e!405075))))

(assert (=> b!722862 (= res!484635 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19561 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!722856 () Bool)

(declare-fun res!484631 () Bool)

(assert (=> b!722856 (=> (not res!484631) (not e!405075))))

(assert (=> b!722856 (= res!484631 e!405074)))

(declare-fun c!79485 () Bool)

(assert (=> b!722856 (= c!79485 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!484629 () Bool)

(assert (=> start!64350 (=> (not res!484629) (not e!405076))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64350 (= res!484629 (validMask!0 mask!3328))))

(assert (=> start!64350 e!405076))

(assert (=> start!64350 true))

(declare-fun array_inv!15335 (array!40884) Bool)

(assert (=> start!64350 (array_inv!15335 a!3186)))

(declare-fun b!722863 () Bool)

(declare-fun res!484634 () Bool)

(assert (=> b!722863 (=> (not res!484634) (not e!405077))))

(assert (=> b!722863 (= res!484634 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19982 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19982 a!3186))))))

(declare-fun b!722864 () Bool)

(assert (=> b!722864 (= e!405076 e!405077)))

(declare-fun res!484633 () Bool)

(assert (=> b!722864 (=> (not res!484633) (not e!405077))))

(declare-fun lt!320474 () SeekEntryResult!7168)

(assert (=> b!722864 (= res!484633 (or (= lt!320474 (MissingZero!7168 i!1173)) (= lt!320474 (MissingVacant!7168 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40884 (_ BitVec 32)) SeekEntryResult!7168)

(assert (=> b!722864 (= lt!320474 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(assert (= (and start!64350 res!484629) b!722861))

(assert (= (and b!722861 res!484628) b!722854))

(assert (= (and b!722854 res!484632) b!722853))

(assert (= (and b!722853 res!484624) b!722855))

(assert (= (and b!722855 res!484627) b!722864))

(assert (= (and b!722864 res!484633) b!722851))

(assert (= (and b!722851 res!484630) b!722857))

(assert (= (and b!722857 res!484625) b!722863))

(assert (= (and b!722863 res!484634) b!722852))

(assert (= (and b!722852 res!484626) b!722862))

(assert (= (and b!722862 res!484635) b!722856))

(assert (= (and b!722856 c!79485) b!722858))

(assert (= (and b!722856 (not c!79485)) b!722859))

(assert (= (and b!722856 res!484631) b!722860))

(declare-fun m!677427 () Bool)

(assert (=> b!722859 m!677427))

(assert (=> b!722859 m!677427))

(declare-fun m!677429 () Bool)

(assert (=> b!722859 m!677429))

(declare-fun m!677431 () Bool)

(assert (=> b!722860 m!677431))

(declare-fun m!677433 () Bool)

(assert (=> b!722860 m!677433))

(assert (=> b!722860 m!677431))

(declare-fun m!677435 () Bool)

(assert (=> b!722860 m!677435))

(declare-fun m!677437 () Bool)

(assert (=> b!722860 m!677437))

(declare-fun m!677439 () Bool)

(assert (=> b!722860 m!677439))

(declare-fun m!677441 () Bool)

(assert (=> b!722855 m!677441))

(declare-fun m!677443 () Bool)

(assert (=> b!722851 m!677443))

(assert (=> b!722858 m!677427))

(assert (=> b!722858 m!677427))

(declare-fun m!677445 () Bool)

(assert (=> b!722858 m!677445))

(declare-fun m!677447 () Bool)

(assert (=> b!722864 m!677447))

(assert (=> b!722852 m!677427))

(assert (=> b!722852 m!677427))

(declare-fun m!677449 () Bool)

(assert (=> b!722852 m!677449))

(assert (=> b!722852 m!677449))

(assert (=> b!722852 m!677427))

(declare-fun m!677451 () Bool)

(assert (=> b!722852 m!677451))

(assert (=> b!722854 m!677427))

(assert (=> b!722854 m!677427))

(declare-fun m!677453 () Bool)

(assert (=> b!722854 m!677453))

(declare-fun m!677455 () Bool)

(assert (=> b!722857 m!677455))

(declare-fun m!677457 () Bool)

(assert (=> b!722853 m!677457))

(declare-fun m!677459 () Bool)

(assert (=> start!64350 m!677459))

(declare-fun m!677461 () Bool)

(assert (=> start!64350 m!677461))

(declare-fun m!677463 () Bool)

(assert (=> b!722862 m!677463))

(check-sat (not b!722858) (not b!722852) (not b!722855) (not b!722857) (not b!722860) (not b!722854) (not b!722851) (not start!64350) (not b!722864) (not b!722859) (not b!722853))
(check-sat)
