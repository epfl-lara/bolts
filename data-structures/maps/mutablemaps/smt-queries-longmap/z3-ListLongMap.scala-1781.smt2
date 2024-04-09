; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32396 () Bool)

(assert start!32396)

(declare-fun b!322713 () Bool)

(declare-fun res!176606 () Bool)

(declare-fun e!199629 () Bool)

(assert (=> b!322713 (=> (not res!176606) (not e!199629))))

(declare-datatypes ((array!16531 0))(
  ( (array!16532 (arr!7820 (Array (_ BitVec 32) (_ BitVec 64))) (size!8172 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16531)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!322713 (= res!176606 (and (= (size!8172 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8172 a!3305))))))

(declare-fun res!176604 () Bool)

(assert (=> start!32396 (=> (not res!176604) (not e!199629))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32396 (= res!176604 (validMask!0 mask!3777))))

(assert (=> start!32396 e!199629))

(declare-fun array_inv!5774 (array!16531) Bool)

(assert (=> start!32396 (array_inv!5774 a!3305)))

(assert (=> start!32396 true))

(declare-fun b!322714 () Bool)

(declare-datatypes ((Unit!9920 0))(
  ( (Unit!9921) )
))
(declare-fun e!199625 () Unit!9920)

(declare-fun Unit!9922 () Unit!9920)

(assert (=> b!322714 (= e!199625 Unit!9922)))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun b!322715 () Bool)

(declare-fun e!199627 () Bool)

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!322715 (= e!199627 (not (or (not (= (select (arr!7820 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsle x!1490 #b01111111111111111111111111111110))))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!322715 (= index!1840 resIndex!58)))

(declare-fun lt!156499 () Unit!9920)

(declare-fun e!199626 () Unit!9920)

(assert (=> b!322715 (= lt!156499 e!199626)))

(declare-fun c!50682 () Bool)

(assert (=> b!322715 (= c!50682 (not (= resIndex!58 index!1840)))))

(declare-fun b!322716 () Bool)

(declare-fun res!176612 () Bool)

(assert (=> b!322716 (=> (not res!176612) (not e!199627))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2962 0))(
  ( (MissingZero!2962 (index!14024 (_ BitVec 32))) (Found!2962 (index!14025 (_ BitVec 32))) (Intermediate!2962 (undefined!3774 Bool) (index!14026 (_ BitVec 32)) (x!32249 (_ BitVec 32))) (Undefined!2962) (MissingVacant!2962 (index!14027 (_ BitVec 32))) )
))
(declare-fun lt!156498 () SeekEntryResult!2962)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16531 (_ BitVec 32)) SeekEntryResult!2962)

(assert (=> b!322716 (= res!176612 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156498))))

(declare-fun b!322717 () Bool)

(assert (=> b!322717 (= e!199629 e!199627)))

(declare-fun res!176610 () Bool)

(assert (=> b!322717 (=> (not res!176610) (not e!199627))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322717 (= res!176610 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156498))))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!322717 (= lt!156498 (Intermediate!2962 false resIndex!58 resX!58))))

(declare-fun b!322718 () Bool)

(declare-fun res!176608 () Bool)

(assert (=> b!322718 (=> (not res!176608) (not e!199629))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322718 (= res!176608 (validKeyInArray!0 k0!2497))))

(declare-fun b!322719 () Bool)

(declare-fun res!176611 () Bool)

(assert (=> b!322719 (=> (not res!176611) (not e!199629))))

(declare-fun arrayContainsKey!0 (array!16531 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322719 (= res!176611 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!322720 () Bool)

(declare-fun res!176605 () Bool)

(assert (=> b!322720 (=> (not res!176605) (not e!199629))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16531 (_ BitVec 32)) SeekEntryResult!2962)

(assert (=> b!322720 (= res!176605 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2962 i!1250)))))

(declare-fun b!322721 () Bool)

(declare-fun res!176613 () Bool)

(assert (=> b!322721 (=> (not res!176613) (not e!199629))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16531 (_ BitVec 32)) Bool)

(assert (=> b!322721 (= res!176613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!322722 () Bool)

(declare-fun res!176607 () Bool)

(assert (=> b!322722 (=> (not res!176607) (not e!199627))))

(assert (=> b!322722 (= res!176607 (and (= (select (arr!7820 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8172 a!3305))))))

(declare-fun b!322723 () Bool)

(assert (=> b!322723 false))

(declare-fun lt!156500 () Unit!9920)

(assert (=> b!322723 (= lt!156500 e!199625)))

(declare-fun c!50683 () Bool)

(get-info :version)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322723 (= c!50683 ((_ is Intermediate!2962) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777)))))

(declare-fun e!199630 () Unit!9920)

(declare-fun Unit!9923 () Unit!9920)

(assert (=> b!322723 (= e!199630 Unit!9923)))

(declare-fun b!322724 () Bool)

(assert (=> b!322724 false))

(declare-fun Unit!9924 () Unit!9920)

(assert (=> b!322724 (= e!199630 Unit!9924)))

(declare-fun b!322725 () Bool)

(declare-fun Unit!9925 () Unit!9920)

(assert (=> b!322725 (= e!199626 Unit!9925)))

(declare-fun b!322726 () Bool)

(assert (=> b!322726 (= e!199626 e!199630)))

(declare-fun c!50684 () Bool)

(assert (=> b!322726 (= c!50684 (or (= (select (arr!7820 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7820 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!322727 () Bool)

(declare-fun res!176609 () Bool)

(assert (=> b!322727 (=> (not res!176609) (not e!199627))))

(assert (=> b!322727 (= res!176609 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7820 a!3305) index!1840) k0!2497)) (= x!1490 resX!58)))))

(declare-fun b!322728 () Bool)

(declare-fun Unit!9926 () Unit!9920)

(assert (=> b!322728 (= e!199625 Unit!9926)))

(assert (=> b!322728 false))

(assert (= (and start!32396 res!176604) b!322713))

(assert (= (and b!322713 res!176606) b!322718))

(assert (= (and b!322718 res!176608) b!322719))

(assert (= (and b!322719 res!176611) b!322720))

(assert (= (and b!322720 res!176605) b!322721))

(assert (= (and b!322721 res!176613) b!322717))

(assert (= (and b!322717 res!176610) b!322722))

(assert (= (and b!322722 res!176607) b!322716))

(assert (= (and b!322716 res!176612) b!322727))

(assert (= (and b!322727 res!176609) b!322715))

(assert (= (and b!322715 c!50682) b!322726))

(assert (= (and b!322715 (not c!50682)) b!322725))

(assert (= (and b!322726 c!50684) b!322724))

(assert (= (and b!322726 (not c!50684)) b!322723))

(assert (= (and b!322723 c!50683) b!322714))

(assert (= (and b!322723 (not c!50683)) b!322728))

(declare-fun m!330375 () Bool)

(assert (=> b!322717 m!330375))

(assert (=> b!322717 m!330375))

(declare-fun m!330377 () Bool)

(assert (=> b!322717 m!330377))

(declare-fun m!330379 () Bool)

(assert (=> b!322722 m!330379))

(declare-fun m!330381 () Bool)

(assert (=> b!322715 m!330381))

(declare-fun m!330383 () Bool)

(assert (=> b!322720 m!330383))

(declare-fun m!330385 () Bool)

(assert (=> start!32396 m!330385))

(declare-fun m!330387 () Bool)

(assert (=> start!32396 m!330387))

(declare-fun m!330389 () Bool)

(assert (=> b!322723 m!330389))

(assert (=> b!322723 m!330389))

(declare-fun m!330391 () Bool)

(assert (=> b!322723 m!330391))

(assert (=> b!322727 m!330381))

(declare-fun m!330393 () Bool)

(assert (=> b!322721 m!330393))

(declare-fun m!330395 () Bool)

(assert (=> b!322716 m!330395))

(assert (=> b!322726 m!330381))

(declare-fun m!330397 () Bool)

(assert (=> b!322718 m!330397))

(declare-fun m!330399 () Bool)

(assert (=> b!322719 m!330399))

(check-sat (not b!322718) (not start!32396) (not b!322721) (not b!322716) (not b!322723) (not b!322719) (not b!322720) (not b!322717))
(check-sat)
