; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46728 () Bool)

(assert start!46728)

(declare-fun res!315239 () Bool)

(declare-fun e!300967 () Bool)

(assert (=> start!46728 (=> (not res!315239) (not e!300967))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46728 (= res!315239 (validMask!0 mask!3524))))

(assert (=> start!46728 e!300967))

(assert (=> start!46728 true))

(declare-datatypes ((array!33000 0))(
  ( (array!33001 (arr!15865 (Array (_ BitVec 32) (_ BitVec 64))) (size!16229 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33000)

(declare-fun array_inv!11639 (array!33000) Bool)

(assert (=> start!46728 (array_inv!11639 a!3235)))

(declare-fun b!515515 () Bool)

(declare-fun e!300965 () Bool)

(declare-fun e!300964 () Bool)

(assert (=> b!515515 (= e!300965 (not e!300964))))

(declare-fun res!315234 () Bool)

(assert (=> b!515515 (=> res!315234 e!300964)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!236047 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4339 0))(
  ( (MissingZero!4339 (index!19544 (_ BitVec 32))) (Found!4339 (index!19545 (_ BitVec 32))) (Intermediate!4339 (undefined!5151 Bool) (index!19546 (_ BitVec 32)) (x!48537 (_ BitVec 32))) (Undefined!4339) (MissingVacant!4339 (index!19547 (_ BitVec 32))) )
))
(declare-fun lt!236048 () SeekEntryResult!4339)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33000 (_ BitVec 32)) SeekEntryResult!4339)

(assert (=> b!515515 (= res!315234 (= lt!236048 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236047 (select (store (arr!15865 a!3235) i!1204 k0!2280) j!176) (array!33001 (store (arr!15865 a!3235) i!1204 k0!2280) (size!16229 a!3235)) mask!3524)))))

(declare-fun lt!236049 () (_ BitVec 32))

(assert (=> b!515515 (= lt!236048 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236049 (select (arr!15865 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515515 (= lt!236047 (toIndex!0 (select (store (arr!15865 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!515515 (= lt!236049 (toIndex!0 (select (arr!15865 a!3235) j!176) mask!3524))))

(declare-fun e!300963 () Bool)

(assert (=> b!515515 e!300963))

(declare-fun res!315231 () Bool)

(assert (=> b!515515 (=> (not res!315231) (not e!300963))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33000 (_ BitVec 32)) Bool)

(assert (=> b!515515 (= res!315231 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15928 0))(
  ( (Unit!15929) )
))
(declare-fun lt!236051 () Unit!15928)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33000 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15928)

(assert (=> b!515515 (= lt!236051 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515516 () Bool)

(assert (=> b!515516 (= e!300964 true)))

(assert (=> b!515516 (and (bvslt (x!48537 lt!236048) #b01111111111111111111111111111110) (or (= (select (arr!15865 a!3235) (index!19546 lt!236048)) (select (arr!15865 a!3235) j!176)) (= (select (arr!15865 a!3235) (index!19546 lt!236048)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15865 a!3235) (index!19546 lt!236048)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!515517 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33000 (_ BitVec 32)) SeekEntryResult!4339)

(assert (=> b!515517 (= e!300963 (= (seekEntryOrOpen!0 (select (arr!15865 a!3235) j!176) a!3235 mask!3524) (Found!4339 j!176)))))

(declare-fun b!515518 () Bool)

(declare-fun res!315229 () Bool)

(assert (=> b!515518 (=> (not res!315229) (not e!300967))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515518 (= res!315229 (validKeyInArray!0 k0!2280))))

(declare-fun b!515519 () Bool)

(declare-fun res!315235 () Bool)

(assert (=> b!515519 (=> (not res!315235) (not e!300967))))

(assert (=> b!515519 (= res!315235 (validKeyInArray!0 (select (arr!15865 a!3235) j!176)))))

(declare-fun b!515520 () Bool)

(declare-fun res!315230 () Bool)

(assert (=> b!515520 (=> (not res!315230) (not e!300967))))

(assert (=> b!515520 (= res!315230 (and (= (size!16229 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16229 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16229 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515521 () Bool)

(declare-fun res!315232 () Bool)

(assert (=> b!515521 (=> (not res!315232) (not e!300967))))

(declare-fun arrayContainsKey!0 (array!33000 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515521 (= res!315232 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515522 () Bool)

(declare-fun res!315233 () Bool)

(assert (=> b!515522 (=> (not res!315233) (not e!300965))))

(declare-datatypes ((List!10076 0))(
  ( (Nil!10073) (Cons!10072 (h!10970 (_ BitVec 64)) (t!16312 List!10076)) )
))
(declare-fun arrayNoDuplicates!0 (array!33000 (_ BitVec 32) List!10076) Bool)

(assert (=> b!515522 (= res!315233 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10073))))

(declare-fun b!515523 () Bool)

(declare-fun res!315237 () Bool)

(assert (=> b!515523 (=> (not res!315237) (not e!300965))))

(assert (=> b!515523 (= res!315237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515524 () Bool)

(declare-fun res!315236 () Bool)

(assert (=> b!515524 (=> res!315236 e!300964)))

(get-info :version)

(assert (=> b!515524 (= res!315236 (or (undefined!5151 lt!236048) (not ((_ is Intermediate!4339) lt!236048))))))

(declare-fun b!515525 () Bool)

(assert (=> b!515525 (= e!300967 e!300965)))

(declare-fun res!315238 () Bool)

(assert (=> b!515525 (=> (not res!315238) (not e!300965))))

(declare-fun lt!236050 () SeekEntryResult!4339)

(assert (=> b!515525 (= res!315238 (or (= lt!236050 (MissingZero!4339 i!1204)) (= lt!236050 (MissingVacant!4339 i!1204))))))

(assert (=> b!515525 (= lt!236050 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!46728 res!315239) b!515520))

(assert (= (and b!515520 res!315230) b!515519))

(assert (= (and b!515519 res!315235) b!515518))

(assert (= (and b!515518 res!315229) b!515521))

(assert (= (and b!515521 res!315232) b!515525))

(assert (= (and b!515525 res!315238) b!515523))

(assert (= (and b!515523 res!315237) b!515522))

(assert (= (and b!515522 res!315233) b!515515))

(assert (= (and b!515515 res!315231) b!515517))

(assert (= (and b!515515 (not res!315234)) b!515524))

(assert (= (and b!515524 (not res!315236)) b!515516))

(declare-fun m!496929 () Bool)

(assert (=> b!515525 m!496929))

(declare-fun m!496931 () Bool)

(assert (=> b!515519 m!496931))

(assert (=> b!515519 m!496931))

(declare-fun m!496933 () Bool)

(assert (=> b!515519 m!496933))

(declare-fun m!496935 () Bool)

(assert (=> b!515521 m!496935))

(declare-fun m!496937 () Bool)

(assert (=> b!515515 m!496937))

(declare-fun m!496939 () Bool)

(assert (=> b!515515 m!496939))

(assert (=> b!515515 m!496931))

(declare-fun m!496941 () Bool)

(assert (=> b!515515 m!496941))

(assert (=> b!515515 m!496931))

(declare-fun m!496943 () Bool)

(assert (=> b!515515 m!496943))

(assert (=> b!515515 m!496931))

(declare-fun m!496945 () Bool)

(assert (=> b!515515 m!496945))

(declare-fun m!496947 () Bool)

(assert (=> b!515515 m!496947))

(declare-fun m!496949 () Bool)

(assert (=> b!515515 m!496949))

(assert (=> b!515515 m!496947))

(declare-fun m!496951 () Bool)

(assert (=> b!515515 m!496951))

(assert (=> b!515515 m!496947))

(declare-fun m!496953 () Bool)

(assert (=> b!515523 m!496953))

(declare-fun m!496955 () Bool)

(assert (=> b!515518 m!496955))

(assert (=> b!515517 m!496931))

(assert (=> b!515517 m!496931))

(declare-fun m!496957 () Bool)

(assert (=> b!515517 m!496957))

(declare-fun m!496959 () Bool)

(assert (=> b!515516 m!496959))

(assert (=> b!515516 m!496931))

(declare-fun m!496961 () Bool)

(assert (=> start!46728 m!496961))

(declare-fun m!496963 () Bool)

(assert (=> start!46728 m!496963))

(declare-fun m!496965 () Bool)

(assert (=> b!515522 m!496965))

(check-sat (not b!515525) (not b!515515) (not b!515523) (not b!515517) (not b!515522) (not b!515521) (not b!515518) (not b!515519) (not start!46728))
(check-sat)
