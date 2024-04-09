; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65658 () Bool)

(assert start!65658)

(declare-fun b!751367 () Bool)

(declare-fun e!419177 () Bool)

(declare-fun e!419175 () Bool)

(assert (=> b!751367 (= e!419177 e!419175)))

(declare-fun res!507383 () Bool)

(assert (=> b!751367 (=> res!507383 e!419175)))

(declare-fun lt!334180 () (_ BitVec 64))

(declare-fun lt!334177 () (_ BitVec 64))

(assert (=> b!751367 (= res!507383 (= lt!334180 lt!334177))))

(declare-datatypes ((array!41784 0))(
  ( (array!41785 (arr!20002 (Array (_ BitVec 32) (_ BitVec 64))) (size!20423 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41784)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!751367 (= lt!334180 (select (store (arr!20002 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!751368 () Bool)

(declare-fun res!507381 () Bool)

(declare-fun e!419179 () Bool)

(assert (=> b!751368 (=> (not res!507381) (not e!419179))))

(declare-fun e!419171 () Bool)

(assert (=> b!751368 (= res!507381 e!419171)))

(declare-fun c!82379 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!751368 (= c!82379 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!751369 () Bool)

(declare-datatypes ((Unit!25838 0))(
  ( (Unit!25839) )
))
(declare-fun e!419180 () Unit!25838)

(declare-fun Unit!25840 () Unit!25838)

(assert (=> b!751369 (= e!419180 Unit!25840)))

(declare-datatypes ((SeekEntryResult!7609 0))(
  ( (MissingZero!7609 (index!32803 (_ BitVec 32))) (Found!7609 (index!32804 (_ BitVec 32))) (Intermediate!7609 (undefined!8421 Bool) (index!32805 (_ BitVec 32)) (x!63752 (_ BitVec 32))) (Undefined!7609) (MissingVacant!7609 (index!32806 (_ BitVec 32))) )
))
(declare-fun lt!334175 () SeekEntryResult!7609)

(declare-fun b!751370 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41784 (_ BitVec 32)) SeekEntryResult!7609)

(assert (=> b!751370 (= e!419171 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20002 a!3186) j!159) a!3186 mask!3328) lt!334175))))

(declare-fun res!507384 () Bool)

(declare-fun e!419172 () Bool)

(assert (=> start!65658 (=> (not res!507384) (not e!419172))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65658 (= res!507384 (validMask!0 mask!3328))))

(assert (=> start!65658 e!419172))

(assert (=> start!65658 true))

(declare-fun array_inv!15776 (array!41784) Bool)

(assert (=> start!65658 (array_inv!15776 a!3186)))

(declare-fun b!751371 () Bool)

(declare-fun e!419178 () Bool)

(assert (=> b!751371 (= e!419179 e!419178)))

(declare-fun res!507375 () Bool)

(assert (=> b!751371 (=> (not res!507375) (not e!419178))))

(declare-fun lt!334174 () SeekEntryResult!7609)

(declare-fun lt!334173 () SeekEntryResult!7609)

(assert (=> b!751371 (= res!507375 (= lt!334174 lt!334173))))

(declare-fun lt!334172 () array!41784)

(assert (=> b!751371 (= lt!334173 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334177 lt!334172 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!751371 (= lt!334174 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334177 mask!3328) lt!334177 lt!334172 mask!3328))))

(assert (=> b!751371 (= lt!334177 (select (store (arr!20002 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!751371 (= lt!334172 (array!41785 (store (arr!20002 a!3186) i!1173 k0!2102) (size!20423 a!3186)))))

(declare-fun b!751372 () Bool)

(declare-fun res!507373 () Bool)

(assert (=> b!751372 (=> (not res!507373) (not e!419172))))

(assert (=> b!751372 (= res!507373 (and (= (size!20423 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20423 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20423 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!751373 () Bool)

(declare-fun e!419173 () Bool)

(assert (=> b!751373 (= e!419172 e!419173)))

(declare-fun res!507378 () Bool)

(assert (=> b!751373 (=> (not res!507378) (not e!419173))))

(declare-fun lt!334179 () SeekEntryResult!7609)

(assert (=> b!751373 (= res!507378 (or (= lt!334179 (MissingZero!7609 i!1173)) (= lt!334179 (MissingVacant!7609 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41784 (_ BitVec 32)) SeekEntryResult!7609)

(assert (=> b!751373 (= lt!334179 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!751374 () Bool)

(declare-fun res!507374 () Bool)

(assert (=> b!751374 (=> (not res!507374) (not e!419172))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!751374 (= res!507374 (validKeyInArray!0 k0!2102))))

(declare-fun b!751375 () Bool)

(declare-fun res!507387 () Bool)

(assert (=> b!751375 (=> (not res!507387) (not e!419179))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!751375 (= res!507387 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20002 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!751376 () Bool)

(assert (=> b!751376 (= e!419178 (not e!419177))))

(declare-fun res!507371 () Bool)

(assert (=> b!751376 (=> res!507371 e!419177)))

(get-info :version)

(assert (=> b!751376 (= res!507371 (or (not ((_ is Intermediate!7609) lt!334173)) (bvslt x!1131 (x!63752 lt!334173)) (not (= x!1131 (x!63752 lt!334173))) (not (= index!1321 (index!32805 lt!334173)))))))

(declare-fun e!419176 () Bool)

(assert (=> b!751376 e!419176))

(declare-fun res!507380 () Bool)

(assert (=> b!751376 (=> (not res!507380) (not e!419176))))

(declare-fun lt!334176 () SeekEntryResult!7609)

(declare-fun lt!334181 () SeekEntryResult!7609)

(assert (=> b!751376 (= res!507380 (= lt!334176 lt!334181))))

(assert (=> b!751376 (= lt!334181 (Found!7609 j!159))))

(assert (=> b!751376 (= lt!334176 (seekEntryOrOpen!0 (select (arr!20002 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41784 (_ BitVec 32)) Bool)

(assert (=> b!751376 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334178 () Unit!25838)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41784 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25838)

(assert (=> b!751376 (= lt!334178 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!751377 () Bool)

(assert (=> b!751377 (= e!419173 e!419179)))

(declare-fun res!507386 () Bool)

(assert (=> b!751377 (=> (not res!507386) (not e!419179))))

(assert (=> b!751377 (= res!507386 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20002 a!3186) j!159) mask!3328) (select (arr!20002 a!3186) j!159) a!3186 mask!3328) lt!334175))))

(assert (=> b!751377 (= lt!334175 (Intermediate!7609 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!751378 () Bool)

(declare-fun res!507370 () Bool)

(assert (=> b!751378 (=> (not res!507370) (not e!419172))))

(assert (=> b!751378 (= res!507370 (validKeyInArray!0 (select (arr!20002 a!3186) j!159)))))

(declare-fun b!751379 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41784 (_ BitVec 32)) SeekEntryResult!7609)

(assert (=> b!751379 (= e!419171 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20002 a!3186) j!159) a!3186 mask!3328) (Found!7609 j!159)))))

(declare-fun e!419181 () Bool)

(declare-fun b!751380 () Bool)

(assert (=> b!751380 (= e!419181 (= (seekEntryOrOpen!0 lt!334177 lt!334172 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334177 lt!334172 mask!3328)))))

(declare-fun b!751381 () Bool)

(assert (=> b!751381 (= e!419176 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20002 a!3186) j!159) a!3186 mask!3328) lt!334181))))

(declare-fun b!751382 () Bool)

(declare-fun res!507372 () Bool)

(assert (=> b!751382 (=> (not res!507372) (not e!419173))))

(assert (=> b!751382 (= res!507372 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!751383 () Bool)

(declare-fun res!507377 () Bool)

(assert (=> b!751383 (=> res!507377 e!419177)))

(assert (=> b!751383 (= res!507377 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20002 a!3186) j!159) a!3186 mask!3328) lt!334181)))))

(declare-fun b!751384 () Bool)

(declare-fun res!507376 () Bool)

(assert (=> b!751384 (=> (not res!507376) (not e!419173))))

(declare-datatypes ((List!14057 0))(
  ( (Nil!14054) (Cons!14053 (h!15125 (_ BitVec 64)) (t!20380 List!14057)) )
))
(declare-fun arrayNoDuplicates!0 (array!41784 (_ BitVec 32) List!14057) Bool)

(assert (=> b!751384 (= res!507376 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14054))))

(declare-fun b!751385 () Bool)

(declare-fun res!507379 () Bool)

(assert (=> b!751385 (=> (not res!507379) (not e!419172))))

(declare-fun arrayContainsKey!0 (array!41784 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!751385 (= res!507379 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!751386 () Bool)

(declare-fun Unit!25841 () Unit!25838)

(assert (=> b!751386 (= e!419180 Unit!25841)))

(assert (=> b!751386 false))

(declare-fun b!751387 () Bool)

(assert (=> b!751387 (= e!419175 true)))

(assert (=> b!751387 e!419181))

(declare-fun res!507382 () Bool)

(assert (=> b!751387 (=> (not res!507382) (not e!419181))))

(assert (=> b!751387 (= res!507382 (= lt!334180 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334171 () Unit!25838)

(assert (=> b!751387 (= lt!334171 e!419180)))

(declare-fun c!82380 () Bool)

(assert (=> b!751387 (= c!82380 (= lt!334180 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!751388 () Bool)

(declare-fun res!507385 () Bool)

(assert (=> b!751388 (=> (not res!507385) (not e!419173))))

(assert (=> b!751388 (= res!507385 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20423 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20423 a!3186))))))

(assert (= (and start!65658 res!507384) b!751372))

(assert (= (and b!751372 res!507373) b!751378))

(assert (= (and b!751378 res!507370) b!751374))

(assert (= (and b!751374 res!507374) b!751385))

(assert (= (and b!751385 res!507379) b!751373))

(assert (= (and b!751373 res!507378) b!751382))

(assert (= (and b!751382 res!507372) b!751384))

(assert (= (and b!751384 res!507376) b!751388))

(assert (= (and b!751388 res!507385) b!751377))

(assert (= (and b!751377 res!507386) b!751375))

(assert (= (and b!751375 res!507387) b!751368))

(assert (= (and b!751368 c!82379) b!751370))

(assert (= (and b!751368 (not c!82379)) b!751379))

(assert (= (and b!751368 res!507381) b!751371))

(assert (= (and b!751371 res!507375) b!751376))

(assert (= (and b!751376 res!507380) b!751381))

(assert (= (and b!751376 (not res!507371)) b!751383))

(assert (= (and b!751383 (not res!507377)) b!751367))

(assert (= (and b!751367 (not res!507383)) b!751387))

(assert (= (and b!751387 c!82380) b!751386))

(assert (= (and b!751387 (not c!82380)) b!751369))

(assert (= (and b!751387 res!507382) b!751380))

(declare-fun m!700637 () Bool)

(assert (=> b!751371 m!700637))

(declare-fun m!700639 () Bool)

(assert (=> b!751371 m!700639))

(declare-fun m!700641 () Bool)

(assert (=> b!751371 m!700641))

(declare-fun m!700643 () Bool)

(assert (=> b!751371 m!700643))

(declare-fun m!700645 () Bool)

(assert (=> b!751371 m!700645))

(assert (=> b!751371 m!700637))

(declare-fun m!700647 () Bool)

(assert (=> b!751382 m!700647))

(declare-fun m!700649 () Bool)

(assert (=> b!751381 m!700649))

(assert (=> b!751381 m!700649))

(declare-fun m!700651 () Bool)

(assert (=> b!751381 m!700651))

(declare-fun m!700653 () Bool)

(assert (=> b!751375 m!700653))

(assert (=> b!751379 m!700649))

(assert (=> b!751379 m!700649))

(declare-fun m!700655 () Bool)

(assert (=> b!751379 m!700655))

(assert (=> b!751383 m!700649))

(assert (=> b!751383 m!700649))

(assert (=> b!751383 m!700655))

(assert (=> b!751376 m!700649))

(assert (=> b!751376 m!700649))

(declare-fun m!700657 () Bool)

(assert (=> b!751376 m!700657))

(declare-fun m!700659 () Bool)

(assert (=> b!751376 m!700659))

(declare-fun m!700661 () Bool)

(assert (=> b!751376 m!700661))

(declare-fun m!700663 () Bool)

(assert (=> b!751385 m!700663))

(assert (=> b!751378 m!700649))

(assert (=> b!751378 m!700649))

(declare-fun m!700665 () Bool)

(assert (=> b!751378 m!700665))

(declare-fun m!700667 () Bool)

(assert (=> b!751373 m!700667))

(assert (=> b!751370 m!700649))

(assert (=> b!751370 m!700649))

(declare-fun m!700669 () Bool)

(assert (=> b!751370 m!700669))

(assert (=> b!751367 m!700641))

(declare-fun m!700671 () Bool)

(assert (=> b!751367 m!700671))

(declare-fun m!700673 () Bool)

(assert (=> b!751374 m!700673))

(assert (=> b!751377 m!700649))

(assert (=> b!751377 m!700649))

(declare-fun m!700675 () Bool)

(assert (=> b!751377 m!700675))

(assert (=> b!751377 m!700675))

(assert (=> b!751377 m!700649))

(declare-fun m!700677 () Bool)

(assert (=> b!751377 m!700677))

(declare-fun m!700679 () Bool)

(assert (=> start!65658 m!700679))

(declare-fun m!700681 () Bool)

(assert (=> start!65658 m!700681))

(declare-fun m!700683 () Bool)

(assert (=> b!751380 m!700683))

(declare-fun m!700685 () Bool)

(assert (=> b!751380 m!700685))

(declare-fun m!700687 () Bool)

(assert (=> b!751384 m!700687))

(check-sat (not b!751379) (not b!751370) (not b!751378) (not b!751385) (not b!751382) (not b!751381) (not b!751377) (not b!751380) (not b!751383) (not b!751374) (not b!751373) (not b!751371) (not b!751384) (not b!751376) (not start!65658))
(check-sat)
