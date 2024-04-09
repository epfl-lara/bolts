; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46710 () Bool)

(assert start!46710)

(declare-fun b!515219 () Bool)

(declare-fun res!314940 () Bool)

(declare-fun e!300832 () Bool)

(assert (=> b!515219 (=> (not res!314940) (not e!300832))))

(declare-datatypes ((array!32982 0))(
  ( (array!32983 (arr!15856 (Array (_ BitVec 32) (_ BitVec 64))) (size!16220 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32982)

(declare-datatypes ((List!10067 0))(
  ( (Nil!10064) (Cons!10063 (h!10961 (_ BitVec 64)) (t!16303 List!10067)) )
))
(declare-fun arrayNoDuplicates!0 (array!32982 (_ BitVec 32) List!10067) Bool)

(assert (=> b!515219 (= res!314940 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10064))))

(declare-fun b!515220 () Bool)

(declare-fun e!300830 () Bool)

(assert (=> b!515220 (= e!300830 e!300832)))

(declare-fun res!314932 () Bool)

(assert (=> b!515220 (=> (not res!314932) (not e!300832))))

(declare-datatypes ((SeekEntryResult!4330 0))(
  ( (MissingZero!4330 (index!19508 (_ BitVec 32))) (Found!4330 (index!19509 (_ BitVec 32))) (Intermediate!4330 (undefined!5142 Bool) (index!19510 (_ BitVec 32)) (x!48504 (_ BitVec 32))) (Undefined!4330) (MissingVacant!4330 (index!19511 (_ BitVec 32))) )
))
(declare-fun lt!235916 () SeekEntryResult!4330)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!515220 (= res!314932 (or (= lt!235916 (MissingZero!4330 i!1204)) (= lt!235916 (MissingVacant!4330 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32982 (_ BitVec 32)) SeekEntryResult!4330)

(assert (=> b!515220 (= lt!235916 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!515221 () Bool)

(declare-fun res!314937 () Bool)

(declare-fun e!300831 () Bool)

(assert (=> b!515221 (=> res!314937 e!300831)))

(declare-fun lt!235915 () SeekEntryResult!4330)

(get-info :version)

(assert (=> b!515221 (= res!314937 (or (undefined!5142 lt!235915) (not ((_ is Intermediate!4330) lt!235915))))))

(declare-fun b!515222 () Bool)

(declare-fun res!314934 () Bool)

(assert (=> b!515222 (=> (not res!314934) (not e!300830))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515222 (= res!314934 (validKeyInArray!0 k0!2280))))

(declare-fun b!515223 () Bool)

(assert (=> b!515223 (= e!300832 (not e!300831))))

(declare-fun res!314935 () Bool)

(assert (=> b!515223 (=> res!314935 e!300831)))

(declare-fun lt!235912 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32982 (_ BitVec 32)) SeekEntryResult!4330)

(assert (=> b!515223 (= res!314935 (= lt!235915 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235912 (select (store (arr!15856 a!3235) i!1204 k0!2280) j!176) (array!32983 (store (arr!15856 a!3235) i!1204 k0!2280) (size!16220 a!3235)) mask!3524)))))

(declare-fun lt!235913 () (_ BitVec 32))

(assert (=> b!515223 (= lt!235915 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235913 (select (arr!15856 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515223 (= lt!235912 (toIndex!0 (select (store (arr!15856 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!515223 (= lt!235913 (toIndex!0 (select (arr!15856 a!3235) j!176) mask!3524))))

(declare-fun e!300828 () Bool)

(assert (=> b!515223 e!300828))

(declare-fun res!314936 () Bool)

(assert (=> b!515223 (=> (not res!314936) (not e!300828))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32982 (_ BitVec 32)) Bool)

(assert (=> b!515223 (= res!314936 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15910 0))(
  ( (Unit!15911) )
))
(declare-fun lt!235914 () Unit!15910)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32982 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15910)

(assert (=> b!515223 (= lt!235914 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515224 () Bool)

(declare-fun res!314942 () Bool)

(assert (=> b!515224 (=> (not res!314942) (not e!300832))))

(assert (=> b!515224 (= res!314942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515225 () Bool)

(declare-fun res!314941 () Bool)

(assert (=> b!515225 (=> (not res!314941) (not e!300830))))

(declare-fun arrayContainsKey!0 (array!32982 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515225 (= res!314941 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515226 () Bool)

(declare-fun res!314933 () Bool)

(assert (=> b!515226 (=> (not res!314933) (not e!300830))))

(assert (=> b!515226 (= res!314933 (and (= (size!16220 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16220 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16220 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515227 () Bool)

(assert (=> b!515227 (= e!300828 (= (seekEntryOrOpen!0 (select (arr!15856 a!3235) j!176) a!3235 mask!3524) (Found!4330 j!176)))))

(declare-fun b!515228 () Bool)

(assert (=> b!515228 (= e!300831 true)))

(assert (=> b!515228 (and (bvslt (x!48504 lt!235915) #b01111111111111111111111111111110) (or (= (select (arr!15856 a!3235) (index!19510 lt!235915)) (select (arr!15856 a!3235) j!176)) (= (select (arr!15856 a!3235) (index!19510 lt!235915)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15856 a!3235) (index!19510 lt!235915)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!515218 () Bool)

(declare-fun res!314939 () Bool)

(assert (=> b!515218 (=> (not res!314939) (not e!300830))))

(assert (=> b!515218 (= res!314939 (validKeyInArray!0 (select (arr!15856 a!3235) j!176)))))

(declare-fun res!314938 () Bool)

(assert (=> start!46710 (=> (not res!314938) (not e!300830))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46710 (= res!314938 (validMask!0 mask!3524))))

(assert (=> start!46710 e!300830))

(assert (=> start!46710 true))

(declare-fun array_inv!11630 (array!32982) Bool)

(assert (=> start!46710 (array_inv!11630 a!3235)))

(assert (= (and start!46710 res!314938) b!515226))

(assert (= (and b!515226 res!314933) b!515218))

(assert (= (and b!515218 res!314939) b!515222))

(assert (= (and b!515222 res!314934) b!515225))

(assert (= (and b!515225 res!314941) b!515220))

(assert (= (and b!515220 res!314932) b!515224))

(assert (= (and b!515224 res!314942) b!515219))

(assert (= (and b!515219 res!314940) b!515223))

(assert (= (and b!515223 res!314936) b!515227))

(assert (= (and b!515223 (not res!314935)) b!515221))

(assert (= (and b!515221 (not res!314937)) b!515228))

(declare-fun m!496587 () Bool)

(assert (=> b!515223 m!496587))

(declare-fun m!496589 () Bool)

(assert (=> b!515223 m!496589))

(declare-fun m!496591 () Bool)

(assert (=> b!515223 m!496591))

(assert (=> b!515223 m!496587))

(declare-fun m!496593 () Bool)

(assert (=> b!515223 m!496593))

(declare-fun m!496595 () Bool)

(assert (=> b!515223 m!496595))

(assert (=> b!515223 m!496593))

(declare-fun m!496597 () Bool)

(assert (=> b!515223 m!496597))

(assert (=> b!515223 m!496587))

(declare-fun m!496599 () Bool)

(assert (=> b!515223 m!496599))

(declare-fun m!496601 () Bool)

(assert (=> b!515223 m!496601))

(assert (=> b!515223 m!496593))

(declare-fun m!496603 () Bool)

(assert (=> b!515223 m!496603))

(declare-fun m!496605 () Bool)

(assert (=> b!515222 m!496605))

(declare-fun m!496607 () Bool)

(assert (=> b!515219 m!496607))

(declare-fun m!496609 () Bool)

(assert (=> start!46710 m!496609))

(declare-fun m!496611 () Bool)

(assert (=> start!46710 m!496611))

(declare-fun m!496613 () Bool)

(assert (=> b!515228 m!496613))

(assert (=> b!515228 m!496593))

(assert (=> b!515218 m!496593))

(assert (=> b!515218 m!496593))

(declare-fun m!496615 () Bool)

(assert (=> b!515218 m!496615))

(declare-fun m!496617 () Bool)

(assert (=> b!515224 m!496617))

(declare-fun m!496619 () Bool)

(assert (=> b!515225 m!496619))

(declare-fun m!496621 () Bool)

(assert (=> b!515220 m!496621))

(assert (=> b!515227 m!496593))

(assert (=> b!515227 m!496593))

(declare-fun m!496623 () Bool)

(assert (=> b!515227 m!496623))

(check-sat (not b!515222) (not b!515219) (not b!515218) (not b!515220) (not b!515225) (not b!515227) (not start!46710) (not b!515223) (not b!515224))
(check-sat)
