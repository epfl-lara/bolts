; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46218 () Bool)

(assert start!46218)

(declare-fun b!511415 () Bool)

(declare-fun e!298825 () Bool)

(declare-datatypes ((array!32832 0))(
  ( (array!32833 (arr!15790 (Array (_ BitVec 32) (_ BitVec 64))) (size!16154 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32832)

(assert (=> b!511415 (= e!298825 (bvsle #b00000000000000000000000000000000 (size!16154 a!3235)))))

(declare-datatypes ((SeekEntryResult!4264 0))(
  ( (MissingZero!4264 (index!19244 (_ BitVec 32))) (Found!4264 (index!19245 (_ BitVec 32))) (Intermediate!4264 (undefined!5076 Bool) (index!19246 (_ BitVec 32)) (x!48226 (_ BitVec 32))) (Undefined!4264) (MissingVacant!4264 (index!19247 (_ BitVec 32))) )
))
(declare-fun lt!234048 () SeekEntryResult!4264)

(assert (=> b!511415 (= lt!234048 Undefined!4264)))

(declare-fun res!312228 () Bool)

(declare-fun e!298826 () Bool)

(assert (=> start!46218 (=> (not res!312228) (not e!298826))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46218 (= res!312228 (validMask!0 mask!3524))))

(assert (=> start!46218 e!298826))

(assert (=> start!46218 true))

(declare-fun array_inv!11564 (array!32832) Bool)

(assert (=> start!46218 (array_inv!11564 a!3235)))

(declare-fun b!511416 () Bool)

(declare-fun res!312233 () Bool)

(declare-fun e!298828 () Bool)

(assert (=> b!511416 (=> (not res!312233) (not e!298828))))

(declare-datatypes ((List!10001 0))(
  ( (Nil!9998) (Cons!9997 (h!10877 (_ BitVec 64)) (t!16237 List!10001)) )
))
(declare-fun arrayNoDuplicates!0 (array!32832 (_ BitVec 32) List!10001) Bool)

(assert (=> b!511416 (= res!312233 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9998))))

(declare-fun b!511417 () Bool)

(declare-fun res!312232 () Bool)

(assert (=> b!511417 (=> (not res!312232) (not e!298826))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511417 (= res!312232 (validKeyInArray!0 (select (arr!15790 a!3235) j!176)))))

(declare-fun b!511418 () Bool)

(declare-fun res!312227 () Bool)

(assert (=> b!511418 (=> (not res!312227) (not e!298828))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32832 (_ BitVec 32)) Bool)

(assert (=> b!511418 (= res!312227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511419 () Bool)

(assert (=> b!511419 (= e!298826 e!298828)))

(declare-fun res!312234 () Bool)

(assert (=> b!511419 (=> (not res!312234) (not e!298828))))

(declare-fun lt!234050 () SeekEntryResult!4264)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!511419 (= res!312234 (or (= lt!234050 (MissingZero!4264 i!1204)) (= lt!234050 (MissingVacant!4264 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32832 (_ BitVec 32)) SeekEntryResult!4264)

(assert (=> b!511419 (= lt!234050 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!511420 () Bool)

(declare-fun res!312230 () Bool)

(assert (=> b!511420 (=> (not res!312230) (not e!298826))))

(assert (=> b!511420 (= res!312230 (validKeyInArray!0 k0!2280))))

(declare-fun b!511421 () Bool)

(declare-fun res!312229 () Bool)

(assert (=> b!511421 (=> res!312229 e!298825)))

(declare-fun lt!234045 () SeekEntryResult!4264)

(get-info :version)

(assert (=> b!511421 (= res!312229 (or (not ((_ is Intermediate!4264) lt!234045)) (not (undefined!5076 lt!234045))))))

(declare-fun b!511422 () Bool)

(declare-fun res!312236 () Bool)

(assert (=> b!511422 (=> (not res!312236) (not e!298826))))

(declare-fun arrayContainsKey!0 (array!32832 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511422 (= res!312236 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511423 () Bool)

(assert (=> b!511423 (= e!298828 (not e!298825))))

(declare-fun res!312235 () Bool)

(assert (=> b!511423 (=> res!312235 e!298825)))

(declare-fun lt!234046 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32832 (_ BitVec 32)) SeekEntryResult!4264)

(assert (=> b!511423 (= res!312235 (= lt!234045 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234046 (select (store (arr!15790 a!3235) i!1204 k0!2280) j!176) (array!32833 (store (arr!15790 a!3235) i!1204 k0!2280) (size!16154 a!3235)) mask!3524)))))

(declare-fun lt!234049 () (_ BitVec 32))

(assert (=> b!511423 (= lt!234045 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234049 (select (arr!15790 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511423 (= lt!234046 (toIndex!0 (select (store (arr!15790 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!511423 (= lt!234049 (toIndex!0 (select (arr!15790 a!3235) j!176) mask!3524))))

(assert (=> b!511423 (= lt!234048 (Found!4264 j!176))))

(assert (=> b!511423 (= lt!234048 (seekEntryOrOpen!0 (select (arr!15790 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!511423 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15778 0))(
  ( (Unit!15779) )
))
(declare-fun lt!234047 () Unit!15778)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32832 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15778)

(assert (=> b!511423 (= lt!234047 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511424 () Bool)

(declare-fun res!312231 () Bool)

(assert (=> b!511424 (=> (not res!312231) (not e!298826))))

(assert (=> b!511424 (= res!312231 (and (= (size!16154 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16154 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16154 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!46218 res!312228) b!511424))

(assert (= (and b!511424 res!312231) b!511417))

(assert (= (and b!511417 res!312232) b!511420))

(assert (= (and b!511420 res!312230) b!511422))

(assert (= (and b!511422 res!312236) b!511419))

(assert (= (and b!511419 res!312234) b!511418))

(assert (= (and b!511418 res!312227) b!511416))

(assert (= (and b!511416 res!312233) b!511423))

(assert (= (and b!511423 (not res!312235)) b!511421))

(assert (= (and b!511421 (not res!312229)) b!511415))

(declare-fun m!492943 () Bool)

(assert (=> b!511423 m!492943))

(declare-fun m!492945 () Bool)

(assert (=> b!511423 m!492945))

(declare-fun m!492947 () Bool)

(assert (=> b!511423 m!492947))

(assert (=> b!511423 m!492943))

(declare-fun m!492949 () Bool)

(assert (=> b!511423 m!492949))

(declare-fun m!492951 () Bool)

(assert (=> b!511423 m!492951))

(assert (=> b!511423 m!492949))

(declare-fun m!492953 () Bool)

(assert (=> b!511423 m!492953))

(assert (=> b!511423 m!492949))

(declare-fun m!492955 () Bool)

(assert (=> b!511423 m!492955))

(assert (=> b!511423 m!492943))

(declare-fun m!492957 () Bool)

(assert (=> b!511423 m!492957))

(assert (=> b!511423 m!492949))

(declare-fun m!492959 () Bool)

(assert (=> b!511423 m!492959))

(declare-fun m!492961 () Bool)

(assert (=> b!511423 m!492961))

(declare-fun m!492963 () Bool)

(assert (=> start!46218 m!492963))

(declare-fun m!492965 () Bool)

(assert (=> start!46218 m!492965))

(declare-fun m!492967 () Bool)

(assert (=> b!511416 m!492967))

(declare-fun m!492969 () Bool)

(assert (=> b!511422 m!492969))

(declare-fun m!492971 () Bool)

(assert (=> b!511419 m!492971))

(declare-fun m!492973 () Bool)

(assert (=> b!511420 m!492973))

(declare-fun m!492975 () Bool)

(assert (=> b!511418 m!492975))

(assert (=> b!511417 m!492949))

(assert (=> b!511417 m!492949))

(declare-fun m!492977 () Bool)

(assert (=> b!511417 m!492977))

(check-sat (not b!511420) (not b!511416) (not b!511422) (not b!511423) (not b!511419) (not b!511418) (not b!511417) (not start!46218))
(check-sat)
