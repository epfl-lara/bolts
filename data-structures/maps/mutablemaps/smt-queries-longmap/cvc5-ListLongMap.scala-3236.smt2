; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45232 () Bool)

(assert start!45232)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!291036 () Bool)

(declare-datatypes ((array!32080 0))(
  ( (array!32081 (arr!15420 (Array (_ BitVec 32) (_ BitVec 64))) (size!15784 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32080)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!496291 () Bool)

(declare-datatypes ((SeekEntryResult!3894 0))(
  ( (MissingZero!3894 (index!17755 (_ BitVec 32))) (Found!3894 (index!17756 (_ BitVec 32))) (Intermediate!3894 (undefined!4706 Bool) (index!17757 (_ BitVec 32)) (x!46845 (_ BitVec 32))) (Undefined!3894) (MissingVacant!3894 (index!17758 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32080 (_ BitVec 32)) SeekEntryResult!3894)

(assert (=> b!496291 (= e!291036 (= (seekEntryOrOpen!0 (select (arr!15420 a!3235) j!176) a!3235 mask!3524) (Found!3894 j!176)))))

(declare-fun b!496292 () Bool)

(declare-fun res!298834 () Bool)

(declare-fun e!291040 () Bool)

(assert (=> b!496292 (=> res!298834 e!291040)))

(declare-fun lt!224728 () SeekEntryResult!3894)

(assert (=> b!496292 (= res!298834 (or (undefined!4706 lt!224728) (not (is-Intermediate!3894 lt!224728))))))

(declare-fun b!496293 () Bool)

(declare-fun res!298833 () Bool)

(declare-fun e!291039 () Bool)

(assert (=> b!496293 (=> (not res!298833) (not e!291039))))

(declare-datatypes ((List!9631 0))(
  ( (Nil!9628) (Cons!9627 (h!10498 (_ BitVec 64)) (t!15867 List!9631)) )
))
(declare-fun arrayNoDuplicates!0 (array!32080 (_ BitVec 32) List!9631) Bool)

(assert (=> b!496293 (= res!298833 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9628))))

(declare-fun b!496294 () Bool)

(declare-fun res!298828 () Bool)

(declare-fun e!291037 () Bool)

(assert (=> b!496294 (=> (not res!298828) (not e!291037))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!496294 (= res!298828 (and (= (size!15784 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15784 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15784 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496295 () Bool)

(declare-fun res!298836 () Bool)

(assert (=> b!496295 (=> (not res!298836) (not e!291037))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496295 (= res!298836 (validKeyInArray!0 (select (arr!15420 a!3235) j!176)))))

(declare-fun b!496296 () Bool)

(declare-fun res!298837 () Bool)

(assert (=> b!496296 (=> (not res!298837) (not e!291037))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32080 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496296 (= res!298837 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!298829 () Bool)

(assert (=> start!45232 (=> (not res!298829) (not e!291037))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45232 (= res!298829 (validMask!0 mask!3524))))

(assert (=> start!45232 e!291037))

(assert (=> start!45232 true))

(declare-fun array_inv!11194 (array!32080) Bool)

(assert (=> start!45232 (array_inv!11194 a!3235)))

(declare-fun b!496297 () Bool)

(declare-fun res!298830 () Bool)

(assert (=> b!496297 (=> (not res!298830) (not e!291039))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32080 (_ BitVec 32)) Bool)

(assert (=> b!496297 (= res!298830 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496298 () Bool)

(declare-fun res!298832 () Bool)

(assert (=> b!496298 (=> (not res!298832) (not e!291037))))

(assert (=> b!496298 (= res!298832 (validKeyInArray!0 k!2280))))

(declare-fun b!496299 () Bool)

(assert (=> b!496299 (= e!291037 e!291039)))

(declare-fun res!298835 () Bool)

(assert (=> b!496299 (=> (not res!298835) (not e!291039))))

(declare-fun lt!224726 () SeekEntryResult!3894)

(assert (=> b!496299 (= res!298835 (or (= lt!224726 (MissingZero!3894 i!1204)) (= lt!224726 (MissingVacant!3894 i!1204))))))

(assert (=> b!496299 (= lt!224726 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!496300 () Bool)

(assert (=> b!496300 (= e!291040 true)))

(assert (=> b!496300 (and (bvslt (x!46845 lt!224728) #b01111111111111111111111111111110) (or (= (select (arr!15420 a!3235) (index!17757 lt!224728)) (select (arr!15420 a!3235) j!176)) (= (select (arr!15420 a!3235) (index!17757 lt!224728)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15420 a!3235) (index!17757 lt!224728)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496301 () Bool)

(assert (=> b!496301 (= e!291039 (not e!291040))))

(declare-fun res!298831 () Bool)

(assert (=> b!496301 (=> res!298831 e!291040)))

(declare-fun lt!224725 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32080 (_ BitVec 32)) SeekEntryResult!3894)

(assert (=> b!496301 (= res!298831 (= lt!224728 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224725 (select (store (arr!15420 a!3235) i!1204 k!2280) j!176) (array!32081 (store (arr!15420 a!3235) i!1204 k!2280) (size!15784 a!3235)) mask!3524)))))

(declare-fun lt!224729 () (_ BitVec 32))

(assert (=> b!496301 (= lt!224728 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224729 (select (arr!15420 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496301 (= lt!224725 (toIndex!0 (select (store (arr!15420 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496301 (= lt!224729 (toIndex!0 (select (arr!15420 a!3235) j!176) mask!3524))))

(assert (=> b!496301 e!291036))

(declare-fun res!298838 () Bool)

(assert (=> b!496301 (=> (not res!298838) (not e!291036))))

(assert (=> b!496301 (= res!298838 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14726 0))(
  ( (Unit!14727) )
))
(declare-fun lt!224727 () Unit!14726)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32080 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14726)

(assert (=> b!496301 (= lt!224727 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45232 res!298829) b!496294))

(assert (= (and b!496294 res!298828) b!496295))

(assert (= (and b!496295 res!298836) b!496298))

(assert (= (and b!496298 res!298832) b!496296))

(assert (= (and b!496296 res!298837) b!496299))

(assert (= (and b!496299 res!298835) b!496297))

(assert (= (and b!496297 res!298830) b!496293))

(assert (= (and b!496293 res!298833) b!496301))

(assert (= (and b!496301 res!298838) b!496291))

(assert (= (and b!496301 (not res!298831)) b!496292))

(assert (= (and b!496292 (not res!298834)) b!496300))

(declare-fun m!477571 () Bool)

(assert (=> b!496297 m!477571))

(declare-fun m!477573 () Bool)

(assert (=> start!45232 m!477573))

(declare-fun m!477575 () Bool)

(assert (=> start!45232 m!477575))

(declare-fun m!477577 () Bool)

(assert (=> b!496293 m!477577))

(declare-fun m!477579 () Bool)

(assert (=> b!496299 m!477579))

(declare-fun m!477581 () Bool)

(assert (=> b!496295 m!477581))

(assert (=> b!496295 m!477581))

(declare-fun m!477583 () Bool)

(assert (=> b!496295 m!477583))

(declare-fun m!477585 () Bool)

(assert (=> b!496301 m!477585))

(declare-fun m!477587 () Bool)

(assert (=> b!496301 m!477587))

(assert (=> b!496301 m!477581))

(declare-fun m!477589 () Bool)

(assert (=> b!496301 m!477589))

(assert (=> b!496301 m!477581))

(declare-fun m!477591 () Bool)

(assert (=> b!496301 m!477591))

(assert (=> b!496301 m!477581))

(declare-fun m!477593 () Bool)

(assert (=> b!496301 m!477593))

(declare-fun m!477595 () Bool)

(assert (=> b!496301 m!477595))

(assert (=> b!496301 m!477595))

(declare-fun m!477597 () Bool)

(assert (=> b!496301 m!477597))

(assert (=> b!496301 m!477595))

(declare-fun m!477599 () Bool)

(assert (=> b!496301 m!477599))

(assert (=> b!496291 m!477581))

(assert (=> b!496291 m!477581))

(declare-fun m!477601 () Bool)

(assert (=> b!496291 m!477601))

(declare-fun m!477603 () Bool)

(assert (=> b!496300 m!477603))

(assert (=> b!496300 m!477581))

(declare-fun m!477605 () Bool)

(assert (=> b!496296 m!477605))

(declare-fun m!477607 () Bool)

(assert (=> b!496298 m!477607))

(push 1)

