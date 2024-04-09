; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46272 () Bool)

(assert start!46272)

(declare-fun res!313037 () Bool)

(declare-fun e!299149 () Bool)

(assert (=> start!46272 (=> (not res!313037) (not e!299149))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46272 (= res!313037 (validMask!0 mask!3524))))

(assert (=> start!46272 e!299149))

(assert (=> start!46272 true))

(declare-datatypes ((array!32886 0))(
  ( (array!32887 (arr!15817 (Array (_ BitVec 32) (_ BitVec 64))) (size!16181 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32886)

(declare-fun array_inv!11591 (array!32886) Bool)

(assert (=> start!46272 (array_inv!11591 a!3235)))

(declare-fun b!512225 () Bool)

(declare-fun res!313040 () Bool)

(declare-fun e!299150 () Bool)

(assert (=> b!512225 (=> (not res!313040) (not e!299150))))

(declare-datatypes ((List!10028 0))(
  ( (Nil!10025) (Cons!10024 (h!10904 (_ BitVec 64)) (t!16264 List!10028)) )
))
(declare-fun arrayNoDuplicates!0 (array!32886 (_ BitVec 32) List!10028) Bool)

(assert (=> b!512225 (= res!313040 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10025))))

(declare-fun b!512226 () Bool)

(declare-fun e!299152 () Bool)

(assert (=> b!512226 (= e!299152 true)))

(declare-datatypes ((SeekEntryResult!4291 0))(
  ( (MissingZero!4291 (index!19352 (_ BitVec 32))) (Found!4291 (index!19353 (_ BitVec 32))) (Intermediate!4291 (undefined!5103 Bool) (index!19354 (_ BitVec 32)) (x!48325 (_ BitVec 32))) (Undefined!4291) (MissingVacant!4291 (index!19355 (_ BitVec 32))) )
))
(declare-fun lt!234534 () SeekEntryResult!4291)

(assert (=> b!512226 (= lt!234534 Undefined!4291)))

(declare-fun b!512227 () Bool)

(declare-fun res!313044 () Bool)

(assert (=> b!512227 (=> (not res!313044) (not e!299149))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512227 (= res!313044 (validKeyInArray!0 (select (arr!15817 a!3235) j!176)))))

(declare-fun b!512228 () Bool)

(assert (=> b!512228 (= e!299149 e!299150)))

(declare-fun res!313043 () Bool)

(assert (=> b!512228 (=> (not res!313043) (not e!299150))))

(declare-fun lt!234531 () SeekEntryResult!4291)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!512228 (= res!313043 (or (= lt!234531 (MissingZero!4291 i!1204)) (= lt!234531 (MissingVacant!4291 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32886 (_ BitVec 32)) SeekEntryResult!4291)

(assert (=> b!512228 (= lt!234531 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!512229 () Bool)

(declare-fun res!313042 () Bool)

(assert (=> b!512229 (=> (not res!313042) (not e!299149))))

(assert (=> b!512229 (= res!313042 (and (= (size!16181 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16181 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16181 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!512230 () Bool)

(declare-fun res!313045 () Bool)

(assert (=> b!512230 (=> (not res!313045) (not e!299149))))

(declare-fun arrayContainsKey!0 (array!32886 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512230 (= res!313045 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!512231 () Bool)

(declare-fun res!313039 () Bool)

(assert (=> b!512231 (=> (not res!313039) (not e!299149))))

(assert (=> b!512231 (= res!313039 (validKeyInArray!0 k0!2280))))

(declare-fun b!512232 () Bool)

(assert (=> b!512232 (= e!299150 (not e!299152))))

(declare-fun res!313038 () Bool)

(assert (=> b!512232 (=> res!313038 e!299152)))

(declare-fun lt!234532 () SeekEntryResult!4291)

(declare-fun lt!234535 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32886 (_ BitVec 32)) SeekEntryResult!4291)

(assert (=> b!512232 (= res!313038 (= lt!234532 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234535 (select (store (arr!15817 a!3235) i!1204 k0!2280) j!176) (array!32887 (store (arr!15817 a!3235) i!1204 k0!2280) (size!16181 a!3235)) mask!3524)))))

(declare-fun lt!234533 () (_ BitVec 32))

(assert (=> b!512232 (= lt!234532 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234533 (select (arr!15817 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512232 (= lt!234535 (toIndex!0 (select (store (arr!15817 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!512232 (= lt!234533 (toIndex!0 (select (arr!15817 a!3235) j!176) mask!3524))))

(assert (=> b!512232 (= lt!234534 (Found!4291 j!176))))

(assert (=> b!512232 (= lt!234534 (seekEntryOrOpen!0 (select (arr!15817 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32886 (_ BitVec 32)) Bool)

(assert (=> b!512232 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15832 0))(
  ( (Unit!15833) )
))
(declare-fun lt!234536 () Unit!15832)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32886 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15832)

(assert (=> b!512232 (= lt!234536 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!512233 () Bool)

(declare-fun res!313041 () Bool)

(assert (=> b!512233 (=> (not res!313041) (not e!299150))))

(assert (=> b!512233 (= res!313041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!512234 () Bool)

(declare-fun res!313046 () Bool)

(assert (=> b!512234 (=> res!313046 e!299152)))

(get-info :version)

(assert (=> b!512234 (= res!313046 (or (not ((_ is Intermediate!4291) lt!234532)) (not (undefined!5103 lt!234532))))))

(assert (= (and start!46272 res!313037) b!512229))

(assert (= (and b!512229 res!313042) b!512227))

(assert (= (and b!512227 res!313044) b!512231))

(assert (= (and b!512231 res!313039) b!512230))

(assert (= (and b!512230 res!313045) b!512228))

(assert (= (and b!512228 res!313043) b!512233))

(assert (= (and b!512233 res!313041) b!512225))

(assert (= (and b!512225 res!313040) b!512232))

(assert (= (and b!512232 (not res!313038)) b!512234))

(assert (= (and b!512234 (not res!313046)) b!512226))

(declare-fun m!493915 () Bool)

(assert (=> b!512231 m!493915))

(declare-fun m!493917 () Bool)

(assert (=> start!46272 m!493917))

(declare-fun m!493919 () Bool)

(assert (=> start!46272 m!493919))

(declare-fun m!493921 () Bool)

(assert (=> b!512227 m!493921))

(assert (=> b!512227 m!493921))

(declare-fun m!493923 () Bool)

(assert (=> b!512227 m!493923))

(declare-fun m!493925 () Bool)

(assert (=> b!512232 m!493925))

(declare-fun m!493927 () Bool)

(assert (=> b!512232 m!493927))

(declare-fun m!493929 () Bool)

(assert (=> b!512232 m!493929))

(assert (=> b!512232 m!493929))

(declare-fun m!493931 () Bool)

(assert (=> b!512232 m!493931))

(assert (=> b!512232 m!493921))

(declare-fun m!493933 () Bool)

(assert (=> b!512232 m!493933))

(assert (=> b!512232 m!493921))

(declare-fun m!493935 () Bool)

(assert (=> b!512232 m!493935))

(assert (=> b!512232 m!493921))

(declare-fun m!493937 () Bool)

(assert (=> b!512232 m!493937))

(assert (=> b!512232 m!493921))

(declare-fun m!493939 () Bool)

(assert (=> b!512232 m!493939))

(assert (=> b!512232 m!493929))

(declare-fun m!493941 () Bool)

(assert (=> b!512232 m!493941))

(declare-fun m!493943 () Bool)

(assert (=> b!512233 m!493943))

(declare-fun m!493945 () Bool)

(assert (=> b!512230 m!493945))

(declare-fun m!493947 () Bool)

(assert (=> b!512225 m!493947))

(declare-fun m!493949 () Bool)

(assert (=> b!512228 m!493949))

(check-sat (not b!512233) (not b!512230) (not b!512232) (not b!512227) (not b!512228) (not b!512231) (not b!512225) (not start!46272))
(check-sat)
