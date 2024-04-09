; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65724 () Bool)

(assert start!65724)

(declare-fun b!753640 () Bool)

(declare-fun res!509265 () Bool)

(declare-fun e!420365 () Bool)

(assert (=> b!753640 (=> (not res!509265) (not e!420365))))

(declare-fun e!420356 () Bool)

(assert (=> b!753640 (= res!509265 e!420356)))

(declare-fun c!82577 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!753640 (= c!82577 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!753641 () Bool)

(declare-fun res!509254 () Bool)

(declare-fun e!420366 () Bool)

(assert (=> b!753641 (=> (not res!509254) (not e!420366))))

(declare-datatypes ((array!41850 0))(
  ( (array!41851 (arr!20035 (Array (_ BitVec 32) (_ BitVec 64))) (size!20456 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41850)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41850 (_ BitVec 32)) Bool)

(assert (=> b!753641 (= res!509254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!509251 () Bool)

(declare-fun e!420355 () Bool)

(assert (=> start!65724 (=> (not res!509251) (not e!420355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65724 (= res!509251 (validMask!0 mask!3328))))

(assert (=> start!65724 e!420355))

(assert (=> start!65724 true))

(declare-fun array_inv!15809 (array!41850) Bool)

(assert (=> start!65724 (array_inv!15809 a!3186)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7642 0))(
  ( (MissingZero!7642 (index!32935 (_ BitVec 32))) (Found!7642 (index!32936 (_ BitVec 32))) (Intermediate!7642 (undefined!8454 Bool) (index!32937 (_ BitVec 32)) (x!63873 (_ BitVec 32))) (Undefined!7642) (MissingVacant!7642 (index!32938 (_ BitVec 32))) )
))
(declare-fun lt!335359 () SeekEntryResult!7642)

(declare-fun b!753642 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41850 (_ BitVec 32)) SeekEntryResult!7642)

(assert (=> b!753642 (= e!420356 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20035 a!3186) j!159) a!3186 mask!3328) lt!335359))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!420364 () Bool)

(declare-fun b!753643 () Bool)

(declare-fun lt!335358 () SeekEntryResult!7642)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41850 (_ BitVec 32)) SeekEntryResult!7642)

(assert (=> b!753643 (= e!420364 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20035 a!3186) j!159) a!3186 mask!3328) lt!335358))))

(declare-fun b!753644 () Bool)

(declare-fun res!509255 () Bool)

(assert (=> b!753644 (=> (not res!509255) (not e!420355))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!753644 (= res!509255 (and (= (size!20456 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20456 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20456 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!753645 () Bool)

(declare-fun res!509257 () Bool)

(declare-fun e!420359 () Bool)

(assert (=> b!753645 (=> (not res!509257) (not e!420359))))

(declare-fun lt!335355 () (_ BitVec 64))

(declare-fun lt!335363 () array!41850)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41850 (_ BitVec 32)) SeekEntryResult!7642)

(assert (=> b!753645 (= res!509257 (= (seekEntryOrOpen!0 lt!335355 lt!335363 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335355 lt!335363 mask!3328)))))

(declare-fun b!753646 () Bool)

(declare-fun res!509256 () Bool)

(assert (=> b!753646 (=> (not res!509256) (not e!420355))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41850 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!753646 (= res!509256 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!753647 () Bool)

(declare-fun res!509252 () Bool)

(assert (=> b!753647 (=> (not res!509252) (not e!420365))))

(assert (=> b!753647 (= res!509252 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20035 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!753648 () Bool)

(declare-fun e!420362 () Bool)

(assert (=> b!753648 (= e!420365 e!420362)))

(declare-fun res!509263 () Bool)

(assert (=> b!753648 (=> (not res!509263) (not e!420362))))

(declare-fun lt!335362 () SeekEntryResult!7642)

(declare-fun lt!335361 () SeekEntryResult!7642)

(assert (=> b!753648 (= res!509263 (= lt!335362 lt!335361))))

(assert (=> b!753648 (= lt!335361 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335355 lt!335363 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!753648 (= lt!335362 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335355 mask!3328) lt!335355 lt!335363 mask!3328))))

(assert (=> b!753648 (= lt!335355 (select (store (arr!20035 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!753648 (= lt!335363 (array!41851 (store (arr!20035 a!3186) i!1173 k0!2102) (size!20456 a!3186)))))

(declare-fun b!753649 () Bool)

(assert (=> b!753649 (= e!420356 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20035 a!3186) j!159) a!3186 mask!3328) (Found!7642 j!159)))))

(declare-fun b!753650 () Bool)

(declare-fun res!509253 () Bool)

(assert (=> b!753650 (=> (not res!509253) (not e!420366))))

(declare-datatypes ((List!14090 0))(
  ( (Nil!14087) (Cons!14086 (h!15158 (_ BitVec 64)) (t!20413 List!14090)) )
))
(declare-fun arrayNoDuplicates!0 (array!41850 (_ BitVec 32) List!14090) Bool)

(assert (=> b!753650 (= res!509253 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14087))))

(declare-fun b!753651 () Bool)

(declare-fun res!509262 () Bool)

(assert (=> b!753651 (=> (not res!509262) (not e!420366))))

(assert (=> b!753651 (= res!509262 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20456 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20456 a!3186))))))

(declare-fun b!753652 () Bool)

(declare-fun e!420363 () Bool)

(declare-fun e!420357 () Bool)

(assert (=> b!753652 (= e!420363 e!420357)))

(declare-fun res!509261 () Bool)

(assert (=> b!753652 (=> res!509261 e!420357)))

(declare-fun lt!335356 () (_ BitVec 64))

(assert (=> b!753652 (= res!509261 (= lt!335356 lt!335355))))

(assert (=> b!753652 (= lt!335356 (select (store (arr!20035 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!753653 () Bool)

(declare-fun e!420360 () Bool)

(assert (=> b!753653 (= e!420362 (not e!420360))))

(declare-fun res!509260 () Bool)

(assert (=> b!753653 (=> res!509260 e!420360)))

(get-info :version)

(assert (=> b!753653 (= res!509260 (or (not ((_ is Intermediate!7642) lt!335361)) (bvslt x!1131 (x!63873 lt!335361)) (not (= x!1131 (x!63873 lt!335361))) (not (= index!1321 (index!32937 lt!335361)))))))

(assert (=> b!753653 e!420364))

(declare-fun res!509258 () Bool)

(assert (=> b!753653 (=> (not res!509258) (not e!420364))))

(declare-fun lt!335365 () SeekEntryResult!7642)

(assert (=> b!753653 (= res!509258 (= lt!335365 lt!335358))))

(assert (=> b!753653 (= lt!335358 (Found!7642 j!159))))

(assert (=> b!753653 (= lt!335365 (seekEntryOrOpen!0 (select (arr!20035 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!753653 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25970 0))(
  ( (Unit!25971) )
))
(declare-fun lt!335366 () Unit!25970)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41850 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25970)

(assert (=> b!753653 (= lt!335366 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!753654 () Bool)

(declare-fun res!509259 () Bool)

(assert (=> b!753654 (=> (not res!509259) (not e!420355))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!753654 (= res!509259 (validKeyInArray!0 k0!2102))))

(declare-fun b!753655 () Bool)

(assert (=> b!753655 (= e!420357 true)))

(assert (=> b!753655 e!420359))

(declare-fun res!509247 () Bool)

(assert (=> b!753655 (=> (not res!509247) (not e!420359))))

(assert (=> b!753655 (= res!509247 (= lt!335356 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335357 () Unit!25970)

(declare-fun e!420361 () Unit!25970)

(assert (=> b!753655 (= lt!335357 e!420361)))

(declare-fun c!82578 () Bool)

(assert (=> b!753655 (= c!82578 (= lt!335356 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!753656 () Bool)

(assert (=> b!753656 (= e!420366 e!420365)))

(declare-fun res!509248 () Bool)

(assert (=> b!753656 (=> (not res!509248) (not e!420365))))

(assert (=> b!753656 (= res!509248 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20035 a!3186) j!159) mask!3328) (select (arr!20035 a!3186) j!159) a!3186 mask!3328) lt!335359))))

(assert (=> b!753656 (= lt!335359 (Intermediate!7642 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!753657 () Bool)

(declare-fun res!509249 () Bool)

(assert (=> b!753657 (=> (not res!509249) (not e!420355))))

(assert (=> b!753657 (= res!509249 (validKeyInArray!0 (select (arr!20035 a!3186) j!159)))))

(declare-fun b!753658 () Bool)

(declare-fun lt!335360 () SeekEntryResult!7642)

(assert (=> b!753658 (= e!420359 (= lt!335365 lt!335360))))

(declare-fun b!753659 () Bool)

(declare-fun Unit!25972 () Unit!25970)

(assert (=> b!753659 (= e!420361 Unit!25972)))

(declare-fun b!753660 () Bool)

(declare-fun Unit!25973 () Unit!25970)

(assert (=> b!753660 (= e!420361 Unit!25973)))

(assert (=> b!753660 false))

(declare-fun b!753661 () Bool)

(assert (=> b!753661 (= e!420360 e!420363)))

(declare-fun res!509250 () Bool)

(assert (=> b!753661 (=> res!509250 e!420363)))

(assert (=> b!753661 (= res!509250 (not (= lt!335360 lt!335358)))))

(assert (=> b!753661 (= lt!335360 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20035 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!753662 () Bool)

(assert (=> b!753662 (= e!420355 e!420366)))

(declare-fun res!509264 () Bool)

(assert (=> b!753662 (=> (not res!509264) (not e!420366))))

(declare-fun lt!335364 () SeekEntryResult!7642)

(assert (=> b!753662 (= res!509264 (or (= lt!335364 (MissingZero!7642 i!1173)) (= lt!335364 (MissingVacant!7642 i!1173))))))

(assert (=> b!753662 (= lt!335364 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(assert (= (and start!65724 res!509251) b!753644))

(assert (= (and b!753644 res!509255) b!753657))

(assert (= (and b!753657 res!509249) b!753654))

(assert (= (and b!753654 res!509259) b!753646))

(assert (= (and b!753646 res!509256) b!753662))

(assert (= (and b!753662 res!509264) b!753641))

(assert (= (and b!753641 res!509254) b!753650))

(assert (= (and b!753650 res!509253) b!753651))

(assert (= (and b!753651 res!509262) b!753656))

(assert (= (and b!753656 res!509248) b!753647))

(assert (= (and b!753647 res!509252) b!753640))

(assert (= (and b!753640 c!82577) b!753642))

(assert (= (and b!753640 (not c!82577)) b!753649))

(assert (= (and b!753640 res!509265) b!753648))

(assert (= (and b!753648 res!509263) b!753653))

(assert (= (and b!753653 res!509258) b!753643))

(assert (= (and b!753653 (not res!509260)) b!753661))

(assert (= (and b!753661 (not res!509250)) b!753652))

(assert (= (and b!753652 (not res!509261)) b!753655))

(assert (= (and b!753655 c!82578) b!753660))

(assert (= (and b!753655 (not c!82578)) b!753659))

(assert (= (and b!753655 res!509247) b!753645))

(assert (= (and b!753645 res!509257) b!753658))

(declare-fun m!702353 () Bool)

(assert (=> b!753648 m!702353))

(declare-fun m!702355 () Bool)

(assert (=> b!753648 m!702355))

(declare-fun m!702357 () Bool)

(assert (=> b!753648 m!702357))

(assert (=> b!753648 m!702353))

(declare-fun m!702359 () Bool)

(assert (=> b!753648 m!702359))

(declare-fun m!702361 () Bool)

(assert (=> b!753648 m!702361))

(declare-fun m!702363 () Bool)

(assert (=> b!753657 m!702363))

(assert (=> b!753657 m!702363))

(declare-fun m!702365 () Bool)

(assert (=> b!753657 m!702365))

(assert (=> b!753652 m!702357))

(declare-fun m!702367 () Bool)

(assert (=> b!753652 m!702367))

(declare-fun m!702369 () Bool)

(assert (=> start!65724 m!702369))

(declare-fun m!702371 () Bool)

(assert (=> start!65724 m!702371))

(declare-fun m!702373 () Bool)

(assert (=> b!753650 m!702373))

(assert (=> b!753656 m!702363))

(assert (=> b!753656 m!702363))

(declare-fun m!702375 () Bool)

(assert (=> b!753656 m!702375))

(assert (=> b!753656 m!702375))

(assert (=> b!753656 m!702363))

(declare-fun m!702377 () Bool)

(assert (=> b!753656 m!702377))

(assert (=> b!753649 m!702363))

(assert (=> b!753649 m!702363))

(declare-fun m!702379 () Bool)

(assert (=> b!753649 m!702379))

(assert (=> b!753642 m!702363))

(assert (=> b!753642 m!702363))

(declare-fun m!702381 () Bool)

(assert (=> b!753642 m!702381))

(declare-fun m!702383 () Bool)

(assert (=> b!753645 m!702383))

(declare-fun m!702385 () Bool)

(assert (=> b!753645 m!702385))

(assert (=> b!753643 m!702363))

(assert (=> b!753643 m!702363))

(declare-fun m!702387 () Bool)

(assert (=> b!753643 m!702387))

(assert (=> b!753653 m!702363))

(assert (=> b!753653 m!702363))

(declare-fun m!702389 () Bool)

(assert (=> b!753653 m!702389))

(declare-fun m!702391 () Bool)

(assert (=> b!753653 m!702391))

(declare-fun m!702393 () Bool)

(assert (=> b!753653 m!702393))

(declare-fun m!702395 () Bool)

(assert (=> b!753646 m!702395))

(declare-fun m!702397 () Bool)

(assert (=> b!753647 m!702397))

(assert (=> b!753661 m!702363))

(assert (=> b!753661 m!702363))

(assert (=> b!753661 m!702379))

(declare-fun m!702399 () Bool)

(assert (=> b!753654 m!702399))

(declare-fun m!702401 () Bool)

(assert (=> b!753641 m!702401))

(declare-fun m!702403 () Bool)

(assert (=> b!753662 m!702403))

(check-sat (not b!753642) (not b!753661) (not b!753643) (not start!65724) (not b!753662) (not b!753641) (not b!753648) (not b!753656) (not b!753653) (not b!753646) (not b!753650) (not b!753654) (not b!753649) (not b!753657) (not b!753645))
(check-sat)
