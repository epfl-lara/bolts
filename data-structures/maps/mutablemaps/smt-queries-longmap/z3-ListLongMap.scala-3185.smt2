; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44748 () Bool)

(assert start!44748)

(declare-fun b!490865 () Bool)

(declare-fun res!293951 () Bool)

(declare-fun e!288480 () Bool)

(assert (=> b!490865 (=> (not res!293951) (not e!288480))))

(declare-datatypes ((array!31767 0))(
  ( (array!31768 (arr!15268 (Array (_ BitVec 32) (_ BitVec 64))) (size!15632 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31767)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31767 (_ BitVec 32)) Bool)

(assert (=> b!490865 (= res!293951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490866 () Bool)

(declare-fun res!293958 () Bool)

(declare-fun e!288479 () Bool)

(assert (=> b!490866 (=> (not res!293958) (not e!288479))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490866 (= res!293958 (validKeyInArray!0 (select (arr!15268 a!3235) j!176)))))

(declare-fun b!490867 () Bool)

(declare-fun e!288478 () Bool)

(declare-fun lt!221865 () (_ BitVec 64))

(assert (=> b!490867 (= e!288478 (validKeyInArray!0 lt!221865))))

(declare-fun res!293957 () Bool)

(assert (=> start!44748 (=> (not res!293957) (not e!288479))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44748 (= res!293957 (validMask!0 mask!3524))))

(assert (=> start!44748 e!288479))

(assert (=> start!44748 true))

(declare-fun array_inv!11042 (array!31767) Bool)

(assert (=> start!44748 (array_inv!11042 a!3235)))

(declare-fun b!490868 () Bool)

(declare-fun res!293952 () Bool)

(assert (=> b!490868 (=> (not res!293952) (not e!288479))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!490868 (= res!293952 (and (= (size!15632 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15632 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15632 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490869 () Bool)

(declare-fun res!293954 () Bool)

(assert (=> b!490869 (=> (not res!293954) (not e!288480))))

(declare-datatypes ((List!9479 0))(
  ( (Nil!9476) (Cons!9475 (h!10337 (_ BitVec 64)) (t!15715 List!9479)) )
))
(declare-fun arrayNoDuplicates!0 (array!31767 (_ BitVec 32) List!9479) Bool)

(assert (=> b!490869 (= res!293954 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9476))))

(declare-fun b!490870 () Bool)

(declare-fun e!288481 () Bool)

(assert (=> b!490870 (= e!288481 e!288478)))

(declare-fun res!293955 () Bool)

(assert (=> b!490870 (=> res!293955 e!288478)))

(assert (=> b!490870 (= res!293955 (bvslt mask!3524 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!3742 0))(
  ( (MissingZero!3742 (index!17147 (_ BitVec 32))) (Found!3742 (index!17148 (_ BitVec 32))) (Intermediate!3742 (undefined!4554 Bool) (index!17149 (_ BitVec 32)) (x!46267 (_ BitVec 32))) (Undefined!3742) (MissingVacant!3742 (index!17150 (_ BitVec 32))) )
))
(declare-fun lt!221870 () SeekEntryResult!3742)

(declare-fun lt!221869 () array!31767)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31767 (_ BitVec 32)) SeekEntryResult!3742)

(assert (=> b!490870 (= lt!221870 (seekEntryOrOpen!0 lt!221865 lt!221869 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-datatypes ((Unit!14422 0))(
  ( (Unit!14423) )
))
(declare-fun lt!221868 () Unit!14422)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31767 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14422)

(assert (=> b!490870 (= lt!221868 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(declare-fun b!490871 () Bool)

(assert (=> b!490871 (= e!288479 e!288480)))

(declare-fun res!293960 () Bool)

(assert (=> b!490871 (=> (not res!293960) (not e!288480))))

(declare-fun lt!221867 () SeekEntryResult!3742)

(assert (=> b!490871 (= res!293960 (or (= lt!221867 (MissingZero!3742 i!1204)) (= lt!221867 (MissingVacant!3742 i!1204))))))

(assert (=> b!490871 (= lt!221867 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!490872 () Bool)

(declare-fun res!293959 () Bool)

(assert (=> b!490872 (=> (not res!293959) (not e!288479))))

(declare-fun arrayContainsKey!0 (array!31767 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490872 (= res!293959 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490873 () Bool)

(declare-fun res!293953 () Bool)

(assert (=> b!490873 (=> (not res!293953) (not e!288479))))

(assert (=> b!490873 (= res!293953 (validKeyInArray!0 k0!2280))))

(declare-fun b!490874 () Bool)

(assert (=> b!490874 (= e!288480 (not e!288481))))

(declare-fun res!293956 () Bool)

(assert (=> b!490874 (=> res!293956 e!288481)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31767 (_ BitVec 32)) SeekEntryResult!3742)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490874 (= res!293956 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15268 a!3235) j!176) mask!3524) (select (arr!15268 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221865 mask!3524) lt!221865 lt!221869 mask!3524))))))

(assert (=> b!490874 (= lt!221865 (select (store (arr!15268 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!490874 (= lt!221869 (array!31768 (store (arr!15268 a!3235) i!1204 k0!2280) (size!15632 a!3235)))))

(assert (=> b!490874 (= lt!221870 (Found!3742 j!176))))

(assert (=> b!490874 (= lt!221870 (seekEntryOrOpen!0 (select (arr!15268 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!490874 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!221866 () Unit!14422)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31767 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14422)

(assert (=> b!490874 (= lt!221866 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!44748 res!293957) b!490868))

(assert (= (and b!490868 res!293952) b!490866))

(assert (= (and b!490866 res!293958) b!490873))

(assert (= (and b!490873 res!293953) b!490872))

(assert (= (and b!490872 res!293959) b!490871))

(assert (= (and b!490871 res!293960) b!490865))

(assert (= (and b!490865 res!293951) b!490869))

(assert (= (and b!490869 res!293954) b!490874))

(assert (= (and b!490874 (not res!293956)) b!490870))

(assert (= (and b!490870 (not res!293955)) b!490867))

(declare-fun m!471301 () Bool)

(assert (=> b!490866 m!471301))

(assert (=> b!490866 m!471301))

(declare-fun m!471303 () Bool)

(assert (=> b!490866 m!471303))

(declare-fun m!471305 () Bool)

(assert (=> b!490865 m!471305))

(declare-fun m!471307 () Bool)

(assert (=> b!490873 m!471307))

(declare-fun m!471309 () Bool)

(assert (=> b!490869 m!471309))

(declare-fun m!471311 () Bool)

(assert (=> b!490870 m!471311))

(declare-fun m!471313 () Bool)

(assert (=> b!490870 m!471313))

(declare-fun m!471315 () Bool)

(assert (=> b!490872 m!471315))

(declare-fun m!471317 () Bool)

(assert (=> start!44748 m!471317))

(declare-fun m!471319 () Bool)

(assert (=> start!44748 m!471319))

(declare-fun m!471321 () Bool)

(assert (=> b!490867 m!471321))

(declare-fun m!471323 () Bool)

(assert (=> b!490871 m!471323))

(declare-fun m!471325 () Bool)

(assert (=> b!490874 m!471325))

(declare-fun m!471327 () Bool)

(assert (=> b!490874 m!471327))

(declare-fun m!471329 () Bool)

(assert (=> b!490874 m!471329))

(declare-fun m!471331 () Bool)

(assert (=> b!490874 m!471331))

(declare-fun m!471333 () Bool)

(assert (=> b!490874 m!471333))

(assert (=> b!490874 m!471301))

(declare-fun m!471335 () Bool)

(assert (=> b!490874 m!471335))

(assert (=> b!490874 m!471325))

(declare-fun m!471337 () Bool)

(assert (=> b!490874 m!471337))

(assert (=> b!490874 m!471301))

(assert (=> b!490874 m!471333))

(assert (=> b!490874 m!471301))

(declare-fun m!471339 () Bool)

(assert (=> b!490874 m!471339))

(assert (=> b!490874 m!471301))

(declare-fun m!471341 () Bool)

(assert (=> b!490874 m!471341))

(check-sat (not b!490871) (not b!490867) (not start!44748) (not b!490869) (not b!490870) (not b!490872) (not b!490874) (not b!490873) (not b!490865) (not b!490866))
(check-sat)
