; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45684 () Bool)

(assert start!45684)

(declare-fun b!503920 () Bool)

(declare-fun res!305302 () Bool)

(declare-fun e!295081 () Bool)

(assert (=> b!503920 (=> res!305302 e!295081)))

(declare-datatypes ((SeekEntryResult!4051 0))(
  ( (MissingZero!4051 (index!18392 (_ BitVec 32))) (Found!4051 (index!18393 (_ BitVec 32))) (Intermediate!4051 (undefined!4863 Bool) (index!18394 (_ BitVec 32)) (x!47439 (_ BitVec 32))) (Undefined!4051) (MissingVacant!4051 (index!18395 (_ BitVec 32))) )
))
(declare-fun lt!229427 () SeekEntryResult!4051)

(get-info :version)

(assert (=> b!503920 (= res!305302 (or (undefined!4863 lt!229427) (not ((_ is Intermediate!4051) lt!229427))))))

(declare-fun b!503921 () Bool)

(declare-fun res!305301 () Bool)

(declare-fun e!295075 () Bool)

(assert (=> b!503921 (=> (not res!305301) (not e!295075))))

(declare-datatypes ((array!32400 0))(
  ( (array!32401 (arr!15577 (Array (_ BitVec 32) (_ BitVec 64))) (size!15941 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32400)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32400 (_ BitVec 32)) Bool)

(assert (=> b!503921 (= res!305301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!503922 () Bool)

(declare-fun e!295076 () Bool)

(assert (=> b!503922 (= e!295076 true)))

(declare-fun lt!229428 () SeekEntryResult!4051)

(declare-fun lt!229424 () array!32400)

(declare-fun lt!229432 () (_ BitVec 64))

(declare-fun lt!229433 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32400 (_ BitVec 32)) SeekEntryResult!4051)

(assert (=> b!503922 (= lt!229428 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229433 lt!229432 lt!229424 mask!3524))))

(declare-fun b!503923 () Bool)

(declare-fun res!305299 () Bool)

(assert (=> b!503923 (=> (not res!305299) (not e!295075))))

(declare-datatypes ((List!9788 0))(
  ( (Nil!9785) (Cons!9784 (h!10661 (_ BitVec 64)) (t!16024 List!9788)) )
))
(declare-fun arrayNoDuplicates!0 (array!32400 (_ BitVec 32) List!9788) Bool)

(assert (=> b!503923 (= res!305299 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9785))))

(declare-fun b!503924 () Bool)

(declare-fun res!305291 () Bool)

(assert (=> b!503924 (=> res!305291 e!295076)))

(declare-fun e!295078 () Bool)

(assert (=> b!503924 (= res!305291 e!295078)))

(declare-fun res!305297 () Bool)

(assert (=> b!503924 (=> (not res!305297) (not e!295078))))

(assert (=> b!503924 (= res!305297 (bvsgt #b00000000000000000000000000000000 (x!47439 lt!229427)))))

(declare-fun b!503925 () Bool)

(assert (=> b!503925 (= e!295081 e!295076)))

(declare-fun res!305298 () Bool)

(assert (=> b!503925 (=> res!305298 e!295076)))

(assert (=> b!503925 (= res!305298 (or (bvsgt (x!47439 lt!229427) #b01111111111111111111111111111110) (bvslt lt!229433 #b00000000000000000000000000000000) (bvsge lt!229433 (size!15941 a!3235)) (bvslt (index!18394 lt!229427) #b00000000000000000000000000000000) (bvsge (index!18394 lt!229427) (size!15941 a!3235)) (not (= lt!229427 (Intermediate!4051 false (index!18394 lt!229427) (x!47439 lt!229427))))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!503925 (= (index!18394 lt!229427) i!1204)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-datatypes ((Unit!15294 0))(
  ( (Unit!15295) )
))
(declare-fun lt!229429 () Unit!15294)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32400 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15294)

(assert (=> b!503925 (= lt!229429 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!229433 #b00000000000000000000000000000000 (index!18394 lt!229427) (x!47439 lt!229427) mask!3524))))

(assert (=> b!503925 (and (or (= (select (arr!15577 a!3235) (index!18394 lt!229427)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15577 a!3235) (index!18394 lt!229427)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15577 a!3235) (index!18394 lt!229427)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15577 a!3235) (index!18394 lt!229427)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229430 () Unit!15294)

(declare-fun e!295080 () Unit!15294)

(assert (=> b!503925 (= lt!229430 e!295080)))

(declare-fun c!59594 () Bool)

(assert (=> b!503925 (= c!59594 (= (select (arr!15577 a!3235) (index!18394 lt!229427)) (select (arr!15577 a!3235) j!176)))))

(assert (=> b!503925 (and (bvslt (x!47439 lt!229427) #b01111111111111111111111111111110) (or (= (select (arr!15577 a!3235) (index!18394 lt!229427)) (select (arr!15577 a!3235) j!176)) (= (select (arr!15577 a!3235) (index!18394 lt!229427)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15577 a!3235) (index!18394 lt!229427)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!503926 () Bool)

(declare-fun res!305292 () Bool)

(declare-fun e!295079 () Bool)

(assert (=> b!503926 (=> (not res!305292) (not e!295079))))

(assert (=> b!503926 (= res!305292 (and (= (size!15941 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15941 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15941 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!503927 () Bool)

(declare-fun e!295077 () Bool)

(assert (=> b!503927 (= e!295077 false)))

(declare-fun b!503928 () Bool)

(declare-fun res!305300 () Bool)

(assert (=> b!503928 (=> (not res!305300) (not e!295079))))

(declare-fun arrayContainsKey!0 (array!32400 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!503928 (= res!305300 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!503929 () Bool)

(assert (=> b!503929 (= e!295075 (not e!295081))))

(declare-fun res!305296 () Bool)

(assert (=> b!503929 (=> res!305296 e!295081)))

(declare-fun lt!229425 () (_ BitVec 32))

(assert (=> b!503929 (= res!305296 (= lt!229427 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229425 lt!229432 lt!229424 mask!3524)))))

(assert (=> b!503929 (= lt!229427 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229433 (select (arr!15577 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!503929 (= lt!229425 (toIndex!0 lt!229432 mask!3524))))

(assert (=> b!503929 (= lt!229432 (select (store (arr!15577 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!503929 (= lt!229433 (toIndex!0 (select (arr!15577 a!3235) j!176) mask!3524))))

(assert (=> b!503929 (= lt!229424 (array!32401 (store (arr!15577 a!3235) i!1204 k0!2280) (size!15941 a!3235)))))

(declare-fun e!295074 () Bool)

(assert (=> b!503929 e!295074))

(declare-fun res!305303 () Bool)

(assert (=> b!503929 (=> (not res!305303) (not e!295074))))

(assert (=> b!503929 (= res!305303 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!229431 () Unit!15294)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32400 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15294)

(assert (=> b!503929 (= lt!229431 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!503930 () Bool)

(assert (=> b!503930 (= e!295079 e!295075)))

(declare-fun res!305294 () Bool)

(assert (=> b!503930 (=> (not res!305294) (not e!295075))))

(declare-fun lt!229423 () SeekEntryResult!4051)

(assert (=> b!503930 (= res!305294 (or (= lt!229423 (MissingZero!4051 i!1204)) (= lt!229423 (MissingVacant!4051 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32400 (_ BitVec 32)) SeekEntryResult!4051)

(assert (=> b!503930 (= lt!229423 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!503931 () Bool)

(declare-fun Unit!15296 () Unit!15294)

(assert (=> b!503931 (= e!295080 Unit!15296)))

(declare-fun b!503932 () Bool)

(assert (=> b!503932 (= e!295074 (= (seekEntryOrOpen!0 (select (arr!15577 a!3235) j!176) a!3235 mask!3524) (Found!4051 j!176)))))

(declare-fun b!503933 () Bool)

(declare-fun res!305293 () Bool)

(assert (=> b!503933 (=> (not res!305293) (not e!295079))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!503933 (= res!305293 (validKeyInArray!0 k0!2280))))

(declare-fun res!305290 () Bool)

(assert (=> start!45684 (=> (not res!305290) (not e!295079))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45684 (= res!305290 (validMask!0 mask!3524))))

(assert (=> start!45684 e!295079))

(assert (=> start!45684 true))

(declare-fun array_inv!11351 (array!32400) Bool)

(assert (=> start!45684 (array_inv!11351 a!3235)))

(declare-fun b!503934 () Bool)

(declare-fun res!305289 () Bool)

(assert (=> b!503934 (=> (not res!305289) (not e!295079))))

(assert (=> b!503934 (= res!305289 (validKeyInArray!0 (select (arr!15577 a!3235) j!176)))))

(declare-fun b!503935 () Bool)

(declare-fun Unit!15297 () Unit!15294)

(assert (=> b!503935 (= e!295080 Unit!15297)))

(declare-fun lt!229426 () Unit!15294)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32400 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15294)

(assert (=> b!503935 (= lt!229426 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!229433 #b00000000000000000000000000000000 (index!18394 lt!229427) (x!47439 lt!229427) mask!3524))))

(declare-fun res!305295 () Bool)

(assert (=> b!503935 (= res!305295 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229433 lt!229432 lt!229424 mask!3524) (Intermediate!4051 false (index!18394 lt!229427) (x!47439 lt!229427))))))

(assert (=> b!503935 (=> (not res!305295) (not e!295077))))

(assert (=> b!503935 e!295077))

(declare-fun b!503936 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32400 (_ BitVec 32)) SeekEntryResult!4051)

(assert (=> b!503936 (= e!295078 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229433 (index!18394 lt!229427) (select (arr!15577 a!3235) j!176) a!3235 mask!3524) (Found!4051 j!176))))))

(assert (= (and start!45684 res!305290) b!503926))

(assert (= (and b!503926 res!305292) b!503934))

(assert (= (and b!503934 res!305289) b!503933))

(assert (= (and b!503933 res!305293) b!503928))

(assert (= (and b!503928 res!305300) b!503930))

(assert (= (and b!503930 res!305294) b!503921))

(assert (= (and b!503921 res!305301) b!503923))

(assert (= (and b!503923 res!305299) b!503929))

(assert (= (and b!503929 res!305303) b!503932))

(assert (= (and b!503929 (not res!305296)) b!503920))

(assert (= (and b!503920 (not res!305302)) b!503925))

(assert (= (and b!503925 c!59594) b!503935))

(assert (= (and b!503925 (not c!59594)) b!503931))

(assert (= (and b!503935 res!305295) b!503927))

(assert (= (and b!503925 (not res!305298)) b!503924))

(assert (= (and b!503924 res!305297) b!503936))

(assert (= (and b!503924 (not res!305291)) b!503922))

(declare-fun m!484727 () Bool)

(assert (=> b!503936 m!484727))

(assert (=> b!503936 m!484727))

(declare-fun m!484729 () Bool)

(assert (=> b!503936 m!484729))

(declare-fun m!484731 () Bool)

(assert (=> b!503933 m!484731))

(declare-fun m!484733 () Bool)

(assert (=> start!45684 m!484733))

(declare-fun m!484735 () Bool)

(assert (=> start!45684 m!484735))

(declare-fun m!484737 () Bool)

(assert (=> b!503930 m!484737))

(declare-fun m!484739 () Bool)

(assert (=> b!503935 m!484739))

(declare-fun m!484741 () Bool)

(assert (=> b!503935 m!484741))

(assert (=> b!503922 m!484741))

(declare-fun m!484743 () Bool)

(assert (=> b!503921 m!484743))

(declare-fun m!484745 () Bool)

(assert (=> b!503928 m!484745))

(declare-fun m!484747 () Bool)

(assert (=> b!503929 m!484747))

(declare-fun m!484749 () Bool)

(assert (=> b!503929 m!484749))

(declare-fun m!484751 () Bool)

(assert (=> b!503929 m!484751))

(declare-fun m!484753 () Bool)

(assert (=> b!503929 m!484753))

(assert (=> b!503929 m!484727))

(declare-fun m!484755 () Bool)

(assert (=> b!503929 m!484755))

(assert (=> b!503929 m!484727))

(assert (=> b!503929 m!484727))

(declare-fun m!484757 () Bool)

(assert (=> b!503929 m!484757))

(declare-fun m!484759 () Bool)

(assert (=> b!503929 m!484759))

(declare-fun m!484761 () Bool)

(assert (=> b!503929 m!484761))

(declare-fun m!484763 () Bool)

(assert (=> b!503923 m!484763))

(declare-fun m!484765 () Bool)

(assert (=> b!503925 m!484765))

(declare-fun m!484767 () Bool)

(assert (=> b!503925 m!484767))

(assert (=> b!503925 m!484727))

(assert (=> b!503932 m!484727))

(assert (=> b!503932 m!484727))

(declare-fun m!484769 () Bool)

(assert (=> b!503932 m!484769))

(assert (=> b!503934 m!484727))

(assert (=> b!503934 m!484727))

(declare-fun m!484771 () Bool)

(assert (=> b!503934 m!484771))

(check-sat (not b!503922) (not b!503935) (not b!503930) (not b!503929) (not b!503928) (not b!503921) (not b!503925) (not start!45684) (not b!503933) (not b!503923) (not b!503936) (not b!503932) (not b!503934))
(check-sat)
