; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67366 () Bool)

(assert start!67366)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42550 0))(
  ( (array!42551 (arr!20364 (Array (_ BitVec 32) (_ BitVec 64))) (size!20785 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42550)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7971 0))(
  ( (MissingZero!7971 (index!34251 (_ BitVec 32))) (Found!7971 (index!34252 (_ BitVec 32))) (Intermediate!7971 (undefined!8783 Bool) (index!34253 (_ BitVec 32)) (x!65229 (_ BitVec 32))) (Undefined!7971) (MissingVacant!7971 (index!34254 (_ BitVec 32))) )
))
(declare-fun lt!346944 () SeekEntryResult!7971)

(declare-fun b!778681 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!433244 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42550 (_ BitVec 32)) SeekEntryResult!7971)

(assert (=> b!778681 (= e!433244 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20364 a!3186) j!159) a!3186 mask!3328) lt!346944))))

(declare-fun b!778682 () Bool)

(declare-fun res!526883 () Bool)

(declare-fun e!433250 () Bool)

(assert (=> b!778682 (=> (not res!526883) (not e!433250))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!778682 (= res!526883 (and (= (size!20785 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20785 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20785 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!778683 () Bool)

(declare-fun e!433251 () Bool)

(assert (=> b!778683 (= e!433251 e!433244)))

(declare-fun res!526887 () Bool)

(assert (=> b!778683 (=> (not res!526887) (not e!433244))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42550 (_ BitVec 32)) SeekEntryResult!7971)

(assert (=> b!778683 (= res!526887 (= (seekEntryOrOpen!0 (select (arr!20364 a!3186) j!159) a!3186 mask!3328) lt!346944))))

(assert (=> b!778683 (= lt!346944 (Found!7971 j!159))))

(declare-fun res!526874 () Bool)

(assert (=> start!67366 (=> (not res!526874) (not e!433250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67366 (= res!526874 (validMask!0 mask!3328))))

(assert (=> start!67366 e!433250))

(assert (=> start!67366 true))

(declare-fun array_inv!16138 (array!42550) Bool)

(assert (=> start!67366 (array_inv!16138 a!3186)))

(declare-fun b!778684 () Bool)

(declare-fun res!526885 () Bool)

(declare-fun e!433252 () Bool)

(assert (=> b!778684 (=> (not res!526885) (not e!433252))))

(declare-datatypes ((List!14419 0))(
  ( (Nil!14416) (Cons!14415 (h!15529 (_ BitVec 64)) (t!20742 List!14419)) )
))
(declare-fun arrayNoDuplicates!0 (array!42550 (_ BitVec 32) List!14419) Bool)

(assert (=> b!778684 (= res!526885 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14416))))

(declare-fun b!778685 () Bool)

(declare-fun res!526878 () Bool)

(assert (=> b!778685 (=> (not res!526878) (not e!433252))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!778685 (= res!526878 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20785 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20785 a!3186))))))

(declare-fun e!433246 () Bool)

(declare-fun b!778686 () Bool)

(assert (=> b!778686 (= e!433246 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20364 a!3186) j!159) a!3186 mask!3328) (Found!7971 j!159)))))

(declare-fun b!778687 () Bool)

(declare-fun res!526879 () Bool)

(assert (=> b!778687 (=> (not res!526879) (not e!433252))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42550 (_ BitVec 32)) Bool)

(assert (=> b!778687 (= res!526879 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!778688 () Bool)

(declare-fun e!433247 () Bool)

(assert (=> b!778688 (= e!433252 e!433247)))

(declare-fun res!526882 () Bool)

(assert (=> b!778688 (=> (not res!526882) (not e!433247))))

(declare-fun lt!346940 () SeekEntryResult!7971)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42550 (_ BitVec 32)) SeekEntryResult!7971)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!778688 (= res!526882 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20364 a!3186) j!159) mask!3328) (select (arr!20364 a!3186) j!159) a!3186 mask!3328) lt!346940))))

(assert (=> b!778688 (= lt!346940 (Intermediate!7971 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!778689 () Bool)

(declare-fun res!526884 () Bool)

(assert (=> b!778689 (=> (not res!526884) (not e!433247))))

(assert (=> b!778689 (= res!526884 e!433246)))

(declare-fun c!86307 () Bool)

(assert (=> b!778689 (= c!86307 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!778690 () Bool)

(declare-fun res!526880 () Bool)

(assert (=> b!778690 (=> (not res!526880) (not e!433247))))

(assert (=> b!778690 (= res!526880 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20364 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!778691 () Bool)

(assert (=> b!778691 (= e!433246 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20364 a!3186) j!159) a!3186 mask!3328) lt!346940))))

(declare-fun b!778692 () Bool)

(declare-fun res!526875 () Bool)

(assert (=> b!778692 (=> (not res!526875) (not e!433250))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!778692 (= res!526875 (validKeyInArray!0 k!2102))))

(declare-fun b!778693 () Bool)

(declare-fun res!526888 () Bool)

(assert (=> b!778693 (=> (not res!526888) (not e!433250))))

(assert (=> b!778693 (= res!526888 (validKeyInArray!0 (select (arr!20364 a!3186) j!159)))))

(declare-fun b!778694 () Bool)

(assert (=> b!778694 (= e!433250 e!433252)))

(declare-fun res!526873 () Bool)

(assert (=> b!778694 (=> (not res!526873) (not e!433252))))

(declare-fun lt!346945 () SeekEntryResult!7971)

(assert (=> b!778694 (= res!526873 (or (= lt!346945 (MissingZero!7971 i!1173)) (= lt!346945 (MissingVacant!7971 i!1173))))))

(assert (=> b!778694 (= lt!346945 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!778695 () Bool)

(declare-fun e!433248 () Bool)

(declare-fun e!433245 () Bool)

(assert (=> b!778695 (= e!433248 (not e!433245))))

(declare-fun res!526886 () Bool)

(assert (=> b!778695 (=> res!526886 e!433245)))

(declare-fun lt!346948 () SeekEntryResult!7971)

(assert (=> b!778695 (= res!526886 (or (not (is-Intermediate!7971 lt!346948)) (bvslt x!1131 (x!65229 lt!346948)) (not (= x!1131 (x!65229 lt!346948))) (not (= index!1321 (index!34253 lt!346948)))))))

(assert (=> b!778695 e!433251))

(declare-fun res!526876 () Bool)

(assert (=> b!778695 (=> (not res!526876) (not e!433251))))

(assert (=> b!778695 (= res!526876 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26836 0))(
  ( (Unit!26837) )
))
(declare-fun lt!346946 () Unit!26836)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42550 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26836)

(assert (=> b!778695 (= lt!346946 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!778696 () Bool)

(assert (=> b!778696 (= e!433247 e!433248)))

(declare-fun res!526877 () Bool)

(assert (=> b!778696 (=> (not res!526877) (not e!433248))))

(declare-fun lt!346947 () SeekEntryResult!7971)

(assert (=> b!778696 (= res!526877 (= lt!346947 lt!346948))))

(declare-fun lt!346943 () (_ BitVec 64))

(declare-fun lt!346942 () array!42550)

(assert (=> b!778696 (= lt!346948 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346943 lt!346942 mask!3328))))

(assert (=> b!778696 (= lt!346947 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346943 mask!3328) lt!346943 lt!346942 mask!3328))))

(assert (=> b!778696 (= lt!346943 (select (store (arr!20364 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!778696 (= lt!346942 (array!42551 (store (arr!20364 a!3186) i!1173 k!2102) (size!20785 a!3186)))))

(declare-fun b!778697 () Bool)

(declare-fun res!526881 () Bool)

(assert (=> b!778697 (=> (not res!526881) (not e!433250))))

(declare-fun arrayContainsKey!0 (array!42550 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!778697 (= res!526881 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!778698 () Bool)

(assert (=> b!778698 (= e!433245 true)))

(declare-fun lt!346941 () SeekEntryResult!7971)

(assert (=> b!778698 (= lt!346941 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20364 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and start!67366 res!526874) b!778682))

(assert (= (and b!778682 res!526883) b!778693))

(assert (= (and b!778693 res!526888) b!778692))

(assert (= (and b!778692 res!526875) b!778697))

(assert (= (and b!778697 res!526881) b!778694))

(assert (= (and b!778694 res!526873) b!778687))

(assert (= (and b!778687 res!526879) b!778684))

(assert (= (and b!778684 res!526885) b!778685))

(assert (= (and b!778685 res!526878) b!778688))

(assert (= (and b!778688 res!526882) b!778690))

(assert (= (and b!778690 res!526880) b!778689))

(assert (= (and b!778689 c!86307) b!778691))

(assert (= (and b!778689 (not c!86307)) b!778686))

(assert (= (and b!778689 res!526884) b!778696))

(assert (= (and b!778696 res!526877) b!778695))

(assert (= (and b!778695 res!526876) b!778683))

(assert (= (and b!778683 res!526887) b!778681))

(assert (= (and b!778695 (not res!526886)) b!778698))

(declare-fun m!722353 () Bool)

(assert (=> b!778696 m!722353))

(declare-fun m!722355 () Bool)

(assert (=> b!778696 m!722355))

(declare-fun m!722357 () Bool)

(assert (=> b!778696 m!722357))

(declare-fun m!722359 () Bool)

(assert (=> b!778696 m!722359))

(assert (=> b!778696 m!722353))

(declare-fun m!722361 () Bool)

(assert (=> b!778696 m!722361))

(declare-fun m!722363 () Bool)

(assert (=> b!778684 m!722363))

(declare-fun m!722365 () Bool)

(assert (=> b!778692 m!722365))

(declare-fun m!722367 () Bool)

(assert (=> b!778695 m!722367))

(declare-fun m!722369 () Bool)

(assert (=> b!778695 m!722369))

(declare-fun m!722371 () Bool)

(assert (=> b!778691 m!722371))

(assert (=> b!778691 m!722371))

(declare-fun m!722373 () Bool)

(assert (=> b!778691 m!722373))

(assert (=> b!778681 m!722371))

(assert (=> b!778681 m!722371))

(declare-fun m!722375 () Bool)

(assert (=> b!778681 m!722375))

(declare-fun m!722377 () Bool)

(assert (=> start!67366 m!722377))

(declare-fun m!722379 () Bool)

(assert (=> start!67366 m!722379))

(assert (=> b!778698 m!722371))

(assert (=> b!778698 m!722371))

(declare-fun m!722381 () Bool)

(assert (=> b!778698 m!722381))

(assert (=> b!778686 m!722371))

(assert (=> b!778686 m!722371))

(assert (=> b!778686 m!722381))

(declare-fun m!722383 () Bool)

(assert (=> b!778687 m!722383))

(assert (=> b!778683 m!722371))

(assert (=> b!778683 m!722371))

(declare-fun m!722385 () Bool)

(assert (=> b!778683 m!722385))

(assert (=> b!778693 m!722371))

(assert (=> b!778693 m!722371))

(declare-fun m!722387 () Bool)

(assert (=> b!778693 m!722387))

(assert (=> b!778688 m!722371))

(assert (=> b!778688 m!722371))

(declare-fun m!722389 () Bool)

(assert (=> b!778688 m!722389))

(assert (=> b!778688 m!722389))

(assert (=> b!778688 m!722371))

(declare-fun m!722391 () Bool)

(assert (=> b!778688 m!722391))

(declare-fun m!722393 () Bool)

(assert (=> b!778694 m!722393))

(declare-fun m!722395 () Bool)

(assert (=> b!778690 m!722395))

(declare-fun m!722397 () Bool)

(assert (=> b!778697 m!722397))

(push 1)

