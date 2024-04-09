; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65660 () Bool)

(assert start!65660)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41786 0))(
  ( (array!41787 (arr!20003 (Array (_ BitVec 32) (_ BitVec 64))) (size!20424 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41786)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7610 0))(
  ( (MissingZero!7610 (index!32807 (_ BitVec 32))) (Found!7610 (index!32808 (_ BitVec 32))) (Intermediate!7610 (undefined!8422 Bool) (index!32809 (_ BitVec 32)) (x!63753 (_ BitVec 32))) (Undefined!7610) (MissingVacant!7610 (index!32810 (_ BitVec 32))) )
))
(declare-fun lt!334211 () SeekEntryResult!7610)

(declare-fun e!419209 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!751433 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41786 (_ BitVec 32)) SeekEntryResult!7610)

(assert (=> b!751433 (= e!419209 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20003 a!3186) j!159) a!3186 mask!3328) lt!334211))))

(declare-fun b!751434 () Bool)

(declare-fun res!507429 () Bool)

(declare-fun e!419211 () Bool)

(assert (=> b!751434 (=> res!507429 e!419211)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!751434 (= res!507429 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20003 a!3186) j!159) a!3186 mask!3328) lt!334211)))))

(declare-fun b!751435 () Bool)

(declare-fun e!419212 () Bool)

(assert (=> b!751435 (= e!419212 true)))

(declare-fun e!419210 () Bool)

(assert (=> b!751435 e!419210))

(declare-fun res!507433 () Bool)

(assert (=> b!751435 (=> (not res!507433) (not e!419210))))

(declare-fun lt!334208 () (_ BitVec 64))

(assert (=> b!751435 (= res!507433 (= lt!334208 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25842 0))(
  ( (Unit!25843) )
))
(declare-fun lt!334204 () Unit!25842)

(declare-fun e!419204 () Unit!25842)

(assert (=> b!751435 (= lt!334204 e!419204)))

(declare-fun c!82385 () Bool)

(assert (=> b!751435 (= c!82385 (= lt!334208 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!751436 () Bool)

(declare-fun e!419207 () Bool)

(declare-fun e!419214 () Bool)

(assert (=> b!751436 (= e!419207 e!419214)))

(declare-fun res!507436 () Bool)

(assert (=> b!751436 (=> (not res!507436) (not e!419214))))

(declare-fun lt!334210 () SeekEntryResult!7610)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!751436 (= res!507436 (or (= lt!334210 (MissingZero!7610 i!1173)) (= lt!334210 (MissingVacant!7610 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41786 (_ BitVec 32)) SeekEntryResult!7610)

(assert (=> b!751436 (= lt!334210 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!751437 () Bool)

(declare-fun e!419205 () Bool)

(assert (=> b!751437 (= e!419214 e!419205)))

(declare-fun res!507426 () Bool)

(assert (=> b!751437 (=> (not res!507426) (not e!419205))))

(declare-fun lt!334207 () SeekEntryResult!7610)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41786 (_ BitVec 32)) SeekEntryResult!7610)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!751437 (= res!507426 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20003 a!3186) j!159) mask!3328) (select (arr!20003 a!3186) j!159) a!3186 mask!3328) lt!334207))))

(assert (=> b!751437 (= lt!334207 (Intermediate!7610 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!751438 () Bool)

(declare-fun res!507438 () Bool)

(assert (=> b!751438 (=> (not res!507438) (not e!419207))))

(declare-fun arrayContainsKey!0 (array!41786 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!751438 (= res!507438 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!751439 () Bool)

(declare-fun res!507427 () Bool)

(assert (=> b!751439 (=> (not res!507427) (not e!419207))))

(assert (=> b!751439 (= res!507427 (and (= (size!20424 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20424 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20424 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!751441 () Bool)

(declare-fun Unit!25844 () Unit!25842)

(assert (=> b!751441 (= e!419204 Unit!25844)))

(assert (=> b!751441 false))

(declare-fun b!751442 () Bool)

(declare-fun res!507428 () Bool)

(assert (=> b!751442 (=> (not res!507428) (not e!419205))))

(assert (=> b!751442 (= res!507428 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20003 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!751443 () Bool)

(declare-fun res!507434 () Bool)

(assert (=> b!751443 (=> (not res!507434) (not e!419205))))

(declare-fun e!419213 () Bool)

(assert (=> b!751443 (= res!507434 e!419213)))

(declare-fun c!82386 () Bool)

(assert (=> b!751443 (= c!82386 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!751444 () Bool)

(declare-fun res!507431 () Bool)

(assert (=> b!751444 (=> (not res!507431) (not e!419214))))

(assert (=> b!751444 (= res!507431 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20424 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20424 a!3186))))))

(declare-fun b!751445 () Bool)

(assert (=> b!751445 (= e!419213 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20003 a!3186) j!159) a!3186 mask!3328) (Found!7610 j!159)))))

(declare-fun b!751446 () Bool)

(declare-fun e!419208 () Bool)

(assert (=> b!751446 (= e!419208 (not e!419211))))

(declare-fun res!507425 () Bool)

(assert (=> b!751446 (=> res!507425 e!419211)))

(declare-fun lt!334214 () SeekEntryResult!7610)

(assert (=> b!751446 (= res!507425 (or (not (is-Intermediate!7610 lt!334214)) (bvslt x!1131 (x!63753 lt!334214)) (not (= x!1131 (x!63753 lt!334214))) (not (= index!1321 (index!32809 lt!334214)))))))

(assert (=> b!751446 e!419209))

(declare-fun res!507424 () Bool)

(assert (=> b!751446 (=> (not res!507424) (not e!419209))))

(declare-fun lt!334209 () SeekEntryResult!7610)

(assert (=> b!751446 (= res!507424 (= lt!334209 lt!334211))))

(assert (=> b!751446 (= lt!334211 (Found!7610 j!159))))

(assert (=> b!751446 (= lt!334209 (seekEntryOrOpen!0 (select (arr!20003 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41786 (_ BitVec 32)) Bool)

(assert (=> b!751446 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334205 () Unit!25842)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41786 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25842)

(assert (=> b!751446 (= lt!334205 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!751447 () Bool)

(declare-fun res!507441 () Bool)

(assert (=> b!751447 (=> (not res!507441) (not e!419207))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!751447 (= res!507441 (validKeyInArray!0 (select (arr!20003 a!3186) j!159)))))

(declare-fun b!751448 () Bool)

(assert (=> b!751448 (= e!419213 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20003 a!3186) j!159) a!3186 mask!3328) lt!334207))))

(declare-fun b!751449 () Bool)

(declare-fun res!507440 () Bool)

(assert (=> b!751449 (=> (not res!507440) (not e!419214))))

(assert (=> b!751449 (= res!507440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!751450 () Bool)

(declare-fun Unit!25845 () Unit!25842)

(assert (=> b!751450 (= e!419204 Unit!25845)))

(declare-fun b!751451 () Bool)

(assert (=> b!751451 (= e!419205 e!419208)))

(declare-fun res!507435 () Bool)

(assert (=> b!751451 (=> (not res!507435) (not e!419208))))

(declare-fun lt!334213 () SeekEntryResult!7610)

(assert (=> b!751451 (= res!507435 (= lt!334213 lt!334214))))

(declare-fun lt!334206 () (_ BitVec 64))

(declare-fun lt!334212 () array!41786)

(assert (=> b!751451 (= lt!334214 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334206 lt!334212 mask!3328))))

(assert (=> b!751451 (= lt!334213 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334206 mask!3328) lt!334206 lt!334212 mask!3328))))

(assert (=> b!751451 (= lt!334206 (select (store (arr!20003 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!751451 (= lt!334212 (array!41787 (store (arr!20003 a!3186) i!1173 k!2102) (size!20424 a!3186)))))

(declare-fun b!751452 () Bool)

(assert (=> b!751452 (= e!419210 (= (seekEntryOrOpen!0 lt!334206 lt!334212 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334206 lt!334212 mask!3328)))))

(declare-fun b!751453 () Bool)

(declare-fun res!507437 () Bool)

(assert (=> b!751453 (=> (not res!507437) (not e!419214))))

(declare-datatypes ((List!14058 0))(
  ( (Nil!14055) (Cons!14054 (h!15126 (_ BitVec 64)) (t!20381 List!14058)) )
))
(declare-fun arrayNoDuplicates!0 (array!41786 (_ BitVec 32) List!14058) Bool)

(assert (=> b!751453 (= res!507437 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14055))))

(declare-fun b!751454 () Bool)

(declare-fun res!507430 () Bool)

(assert (=> b!751454 (=> (not res!507430) (not e!419207))))

(assert (=> b!751454 (= res!507430 (validKeyInArray!0 k!2102))))

(declare-fun res!507439 () Bool)

(assert (=> start!65660 (=> (not res!507439) (not e!419207))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65660 (= res!507439 (validMask!0 mask!3328))))

(assert (=> start!65660 e!419207))

(assert (=> start!65660 true))

(declare-fun array_inv!15777 (array!41786) Bool)

(assert (=> start!65660 (array_inv!15777 a!3186)))

(declare-fun b!751440 () Bool)

(assert (=> b!751440 (= e!419211 e!419212)))

(declare-fun res!507432 () Bool)

(assert (=> b!751440 (=> res!507432 e!419212)))

(assert (=> b!751440 (= res!507432 (= lt!334208 lt!334206))))

(assert (=> b!751440 (= lt!334208 (select (store (arr!20003 a!3186) i!1173 k!2102) index!1321))))

(assert (= (and start!65660 res!507439) b!751439))

(assert (= (and b!751439 res!507427) b!751447))

(assert (= (and b!751447 res!507441) b!751454))

(assert (= (and b!751454 res!507430) b!751438))

(assert (= (and b!751438 res!507438) b!751436))

(assert (= (and b!751436 res!507436) b!751449))

(assert (= (and b!751449 res!507440) b!751453))

(assert (= (and b!751453 res!507437) b!751444))

(assert (= (and b!751444 res!507431) b!751437))

(assert (= (and b!751437 res!507426) b!751442))

(assert (= (and b!751442 res!507428) b!751443))

(assert (= (and b!751443 c!82386) b!751448))

(assert (= (and b!751443 (not c!82386)) b!751445))

(assert (= (and b!751443 res!507434) b!751451))

(assert (= (and b!751451 res!507435) b!751446))

(assert (= (and b!751446 res!507424) b!751433))

(assert (= (and b!751446 (not res!507425)) b!751434))

(assert (= (and b!751434 (not res!507429)) b!751440))

(assert (= (and b!751440 (not res!507432)) b!751435))

(assert (= (and b!751435 c!82385) b!751441))

(assert (= (and b!751435 (not c!82385)) b!751450))

(assert (= (and b!751435 res!507433) b!751452))

(declare-fun m!700689 () Bool)

(assert (=> b!751452 m!700689))

(declare-fun m!700691 () Bool)

(assert (=> b!751452 m!700691))

(declare-fun m!700693 () Bool)

(assert (=> b!751447 m!700693))

(assert (=> b!751447 m!700693))

(declare-fun m!700695 () Bool)

(assert (=> b!751447 m!700695))

(declare-fun m!700697 () Bool)

(assert (=> b!751438 m!700697))

(assert (=> b!751437 m!700693))

(assert (=> b!751437 m!700693))

(declare-fun m!700699 () Bool)

(assert (=> b!751437 m!700699))

(assert (=> b!751437 m!700699))

(assert (=> b!751437 m!700693))

(declare-fun m!700701 () Bool)

(assert (=> b!751437 m!700701))

(declare-fun m!700703 () Bool)

(assert (=> b!751453 m!700703))

(assert (=> b!751446 m!700693))

(assert (=> b!751446 m!700693))

(declare-fun m!700705 () Bool)

(assert (=> b!751446 m!700705))

(declare-fun m!700707 () Bool)

(assert (=> b!751446 m!700707))

(declare-fun m!700709 () Bool)

(assert (=> b!751446 m!700709))

(declare-fun m!700711 () Bool)

(assert (=> b!751454 m!700711))

(assert (=> b!751448 m!700693))

(assert (=> b!751448 m!700693))

(declare-fun m!700713 () Bool)

(assert (=> b!751448 m!700713))

(assert (=> b!751434 m!700693))

(assert (=> b!751434 m!700693))

(declare-fun m!700715 () Bool)

(assert (=> b!751434 m!700715))

(assert (=> b!751445 m!700693))

(assert (=> b!751445 m!700693))

(assert (=> b!751445 m!700715))

(declare-fun m!700717 () Bool)

(assert (=> b!751440 m!700717))

(declare-fun m!700719 () Bool)

(assert (=> b!751440 m!700719))

(declare-fun m!700721 () Bool)

(assert (=> b!751451 m!700721))

(assert (=> b!751451 m!700717))

(declare-fun m!700723 () Bool)

(assert (=> b!751451 m!700723))

(declare-fun m!700725 () Bool)

(assert (=> b!751451 m!700725))

(assert (=> b!751451 m!700721))

(declare-fun m!700727 () Bool)

(assert (=> b!751451 m!700727))

(declare-fun m!700729 () Bool)

(assert (=> b!751449 m!700729))

(assert (=> b!751433 m!700693))

(assert (=> b!751433 m!700693))

(declare-fun m!700731 () Bool)

(assert (=> b!751433 m!700731))

(declare-fun m!700733 () Bool)

(assert (=> b!751436 m!700733))

(declare-fun m!700735 () Bool)

(assert (=> b!751442 m!700735))

(declare-fun m!700737 () Bool)

(assert (=> start!65660 m!700737))

(declare-fun m!700739 () Bool)

(assert (=> start!65660 m!700739))

(push 1)

