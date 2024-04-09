; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45268 () Bool)

(assert start!45268)

(declare-fun b!496885 () Bool)

(declare-fun res!299423 () Bool)

(declare-fun e!291309 () Bool)

(assert (=> b!496885 (=> (not res!299423) (not e!291309))))

(declare-datatypes ((array!32116 0))(
  ( (array!32117 (arr!15438 (Array (_ BitVec 32) (_ BitVec 64))) (size!15802 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32116)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32116 (_ BitVec 32)) Bool)

(assert (=> b!496885 (= res!299423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496886 () Bool)

(declare-fun e!291308 () Bool)

(assert (=> b!496886 (= e!291308 true)))

(declare-datatypes ((SeekEntryResult!3912 0))(
  ( (MissingZero!3912 (index!17827 (_ BitVec 32))) (Found!3912 (index!17828 (_ BitVec 32))) (Intermediate!3912 (undefined!4724 Bool) (index!17829 (_ BitVec 32)) (x!46911 (_ BitVec 32))) (Undefined!3912) (MissingVacant!3912 (index!17830 (_ BitVec 32))) )
))
(declare-fun lt!224999 () SeekEntryResult!3912)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!496886 (and (bvslt (x!46911 lt!224999) #b01111111111111111111111111111110) (or (= (select (arr!15438 a!3235) (index!17829 lt!224999)) (select (arr!15438 a!3235) j!176)) (= (select (arr!15438 a!3235) (index!17829 lt!224999)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15438 a!3235) (index!17829 lt!224999)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496887 () Bool)

(declare-fun res!299429 () Bool)

(declare-fun e!291307 () Bool)

(assert (=> b!496887 (=> (not res!299429) (not e!291307))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32116 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496887 (= res!299429 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!299432 () Bool)

(assert (=> start!45268 (=> (not res!299432) (not e!291307))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45268 (= res!299432 (validMask!0 mask!3524))))

(assert (=> start!45268 e!291307))

(assert (=> start!45268 true))

(declare-fun array_inv!11212 (array!32116) Bool)

(assert (=> start!45268 (array_inv!11212 a!3235)))

(declare-fun b!496888 () Bool)

(declare-fun res!299422 () Bool)

(assert (=> b!496888 (=> res!299422 e!291308)))

(assert (=> b!496888 (= res!299422 (or (undefined!4724 lt!224999) (not (is-Intermediate!3912 lt!224999))))))

(declare-fun b!496889 () Bool)

(declare-fun res!299431 () Bool)

(assert (=> b!496889 (=> (not res!299431) (not e!291309))))

(declare-datatypes ((List!9649 0))(
  ( (Nil!9646) (Cons!9645 (h!10516 (_ BitVec 64)) (t!15885 List!9649)) )
))
(declare-fun arrayNoDuplicates!0 (array!32116 (_ BitVec 32) List!9649) Bool)

(assert (=> b!496889 (= res!299431 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9646))))

(declare-fun b!496890 () Bool)

(assert (=> b!496890 (= e!291309 (not e!291308))))

(declare-fun res!299424 () Bool)

(assert (=> b!496890 (=> res!299424 e!291308)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!224998 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32116 (_ BitVec 32)) SeekEntryResult!3912)

(assert (=> b!496890 (= res!299424 (= lt!224999 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224998 (select (store (arr!15438 a!3235) i!1204 k!2280) j!176) (array!32117 (store (arr!15438 a!3235) i!1204 k!2280) (size!15802 a!3235)) mask!3524)))))

(declare-fun lt!224996 () (_ BitVec 32))

(assert (=> b!496890 (= lt!224999 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224996 (select (arr!15438 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496890 (= lt!224998 (toIndex!0 (select (store (arr!15438 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496890 (= lt!224996 (toIndex!0 (select (arr!15438 a!3235) j!176) mask!3524))))

(declare-fun e!291306 () Bool)

(assert (=> b!496890 e!291306))

(declare-fun res!299426 () Bool)

(assert (=> b!496890 (=> (not res!299426) (not e!291306))))

(assert (=> b!496890 (= res!299426 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14762 0))(
  ( (Unit!14763) )
))
(declare-fun lt!224995 () Unit!14762)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32116 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14762)

(assert (=> b!496890 (= lt!224995 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496891 () Bool)

(declare-fun res!299425 () Bool)

(assert (=> b!496891 (=> (not res!299425) (not e!291307))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496891 (= res!299425 (validKeyInArray!0 k!2280))))

(declare-fun b!496892 () Bool)

(assert (=> b!496892 (= e!291307 e!291309)))

(declare-fun res!299428 () Bool)

(assert (=> b!496892 (=> (not res!299428) (not e!291309))))

(declare-fun lt!224997 () SeekEntryResult!3912)

(assert (=> b!496892 (= res!299428 (or (= lt!224997 (MissingZero!3912 i!1204)) (= lt!224997 (MissingVacant!3912 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32116 (_ BitVec 32)) SeekEntryResult!3912)

(assert (=> b!496892 (= lt!224997 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!496893 () Bool)

(assert (=> b!496893 (= e!291306 (= (seekEntryOrOpen!0 (select (arr!15438 a!3235) j!176) a!3235 mask!3524) (Found!3912 j!176)))))

(declare-fun b!496894 () Bool)

(declare-fun res!299430 () Bool)

(assert (=> b!496894 (=> (not res!299430) (not e!291307))))

(assert (=> b!496894 (= res!299430 (and (= (size!15802 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15802 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15802 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496895 () Bool)

(declare-fun res!299427 () Bool)

(assert (=> b!496895 (=> (not res!299427) (not e!291307))))

(assert (=> b!496895 (= res!299427 (validKeyInArray!0 (select (arr!15438 a!3235) j!176)))))

(assert (= (and start!45268 res!299432) b!496894))

(assert (= (and b!496894 res!299430) b!496895))

(assert (= (and b!496895 res!299427) b!496891))

(assert (= (and b!496891 res!299425) b!496887))

(assert (= (and b!496887 res!299429) b!496892))

(assert (= (and b!496892 res!299428) b!496885))

(assert (= (and b!496885 res!299423) b!496889))

(assert (= (and b!496889 res!299431) b!496890))

(assert (= (and b!496890 res!299426) b!496893))

(assert (= (and b!496890 (not res!299424)) b!496888))

(assert (= (and b!496888 (not res!299422)) b!496886))

(declare-fun m!478255 () Bool)

(assert (=> b!496885 m!478255))

(declare-fun m!478257 () Bool)

(assert (=> b!496895 m!478257))

(assert (=> b!496895 m!478257))

(declare-fun m!478259 () Bool)

(assert (=> b!496895 m!478259))

(declare-fun m!478261 () Bool)

(assert (=> b!496889 m!478261))

(declare-fun m!478263 () Bool)

(assert (=> b!496890 m!478263))

(declare-fun m!478265 () Bool)

(assert (=> b!496890 m!478265))

(declare-fun m!478267 () Bool)

(assert (=> b!496890 m!478267))

(assert (=> b!496890 m!478267))

(declare-fun m!478269 () Bool)

(assert (=> b!496890 m!478269))

(assert (=> b!496890 m!478257))

(declare-fun m!478271 () Bool)

(assert (=> b!496890 m!478271))

(assert (=> b!496890 m!478257))

(declare-fun m!478273 () Bool)

(assert (=> b!496890 m!478273))

(assert (=> b!496890 m!478257))

(declare-fun m!478275 () Bool)

(assert (=> b!496890 m!478275))

(assert (=> b!496890 m!478267))

(declare-fun m!478277 () Bool)

(assert (=> b!496890 m!478277))

(declare-fun m!478279 () Bool)

(assert (=> b!496892 m!478279))

(declare-fun m!478281 () Bool)

(assert (=> b!496887 m!478281))

(declare-fun m!478283 () Bool)

(assert (=> b!496886 m!478283))

(assert (=> b!496886 m!478257))

(assert (=> b!496893 m!478257))

(assert (=> b!496893 m!478257))

(declare-fun m!478285 () Bool)

(assert (=> b!496893 m!478285))

(declare-fun m!478287 () Bool)

(assert (=> b!496891 m!478287))

(declare-fun m!478289 () Bool)

(assert (=> start!45268 m!478289))

(declare-fun m!478291 () Bool)

(assert (=> start!45268 m!478291))

(push 1)

