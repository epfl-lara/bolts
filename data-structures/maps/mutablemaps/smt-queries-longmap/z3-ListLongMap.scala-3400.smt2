; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47004 () Bool)

(assert start!47004)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33105 0))(
  ( (array!33106 (arr!15913 (Array (_ BitVec 32) (_ BitVec 64))) (size!16277 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33105)

(declare-fun b!517972 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!302241 () Bool)

(declare-datatypes ((SeekEntryResult!4387 0))(
  ( (MissingZero!4387 (index!19736 (_ BitVec 32))) (Found!4387 (index!19737 (_ BitVec 32))) (Intermediate!4387 (undefined!5199 Bool) (index!19738 (_ BitVec 32)) (x!48731 (_ BitVec 32))) (Undefined!4387) (MissingVacant!4387 (index!19739 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33105 (_ BitVec 32)) SeekEntryResult!4387)

(assert (=> b!517972 (= e!302241 (= (seekEntryOrOpen!0 (select (arr!15913 a!3235) j!176) a!3235 mask!3524) (Found!4387 j!176)))))

(declare-fun b!517973 () Bool)

(declare-fun e!302244 () Bool)

(assert (=> b!517973 (= e!302244 true)))

(declare-fun lt!237157 () SeekEntryResult!4387)

(assert (=> b!517973 (and (bvslt (x!48731 lt!237157) #b01111111111111111111111111111110) (or (= (select (arr!15913 a!3235) (index!19738 lt!237157)) (select (arr!15913 a!3235) j!176)) (= (select (arr!15913 a!3235) (index!19738 lt!237157)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15913 a!3235) (index!19738 lt!237157)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!517974 () Bool)

(declare-fun res!317145 () Bool)

(declare-fun e!302243 () Bool)

(assert (=> b!517974 (=> (not res!317145) (not e!302243))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!517974 (= res!317145 (validKeyInArray!0 (select (arr!15913 a!3235) j!176)))))

(declare-fun b!517975 () Bool)

(declare-fun res!317146 () Bool)

(assert (=> b!517975 (=> res!317146 e!302244)))

(get-info :version)

(assert (=> b!517975 (= res!317146 (or (undefined!5199 lt!237157) (not ((_ is Intermediate!4387) lt!237157))))))

(declare-fun res!317137 () Bool)

(assert (=> start!47004 (=> (not res!317137) (not e!302243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47004 (= res!317137 (validMask!0 mask!3524))))

(assert (=> start!47004 e!302243))

(assert (=> start!47004 true))

(declare-fun array_inv!11687 (array!33105) Bool)

(assert (=> start!47004 (array_inv!11687 a!3235)))

(declare-fun b!517976 () Bool)

(declare-fun e!302245 () Bool)

(assert (=> b!517976 (= e!302243 e!302245)))

(declare-fun res!317139 () Bool)

(assert (=> b!517976 (=> (not res!317139) (not e!302245))))

(declare-fun lt!237155 () SeekEntryResult!4387)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!517976 (= res!317139 (or (= lt!237155 (MissingZero!4387 i!1204)) (= lt!237155 (MissingVacant!4387 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!517976 (= lt!237155 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!517977 () Bool)

(declare-fun res!317141 () Bool)

(assert (=> b!517977 (=> (not res!317141) (not e!302243))))

(assert (=> b!517977 (= res!317141 (validKeyInArray!0 k0!2280))))

(declare-fun b!517978 () Bool)

(assert (=> b!517978 (= e!302245 (not e!302244))))

(declare-fun res!317142 () Bool)

(assert (=> b!517978 (=> res!317142 e!302244)))

(declare-fun lt!237154 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33105 (_ BitVec 32)) SeekEntryResult!4387)

(assert (=> b!517978 (= res!317142 (= lt!237157 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237154 (select (store (arr!15913 a!3235) i!1204 k0!2280) j!176) (array!33106 (store (arr!15913 a!3235) i!1204 k0!2280) (size!16277 a!3235)) mask!3524)))))

(declare-fun lt!237158 () (_ BitVec 32))

(assert (=> b!517978 (= lt!237157 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237158 (select (arr!15913 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!517978 (= lt!237154 (toIndex!0 (select (store (arr!15913 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!517978 (= lt!237158 (toIndex!0 (select (arr!15913 a!3235) j!176) mask!3524))))

(assert (=> b!517978 e!302241))

(declare-fun res!317147 () Bool)

(assert (=> b!517978 (=> (not res!317147) (not e!302241))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33105 (_ BitVec 32)) Bool)

(assert (=> b!517978 (= res!317147 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16024 0))(
  ( (Unit!16025) )
))
(declare-fun lt!237156 () Unit!16024)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33105 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16024)

(assert (=> b!517978 (= lt!237156 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!517979 () Bool)

(declare-fun res!317143 () Bool)

(assert (=> b!517979 (=> (not res!317143) (not e!302243))))

(assert (=> b!517979 (= res!317143 (and (= (size!16277 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16277 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16277 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!517980 () Bool)

(declare-fun res!317144 () Bool)

(assert (=> b!517980 (=> (not res!317144) (not e!302243))))

(declare-fun arrayContainsKey!0 (array!33105 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!517980 (= res!317144 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!517981 () Bool)

(declare-fun res!317138 () Bool)

(assert (=> b!517981 (=> (not res!317138) (not e!302245))))

(assert (=> b!517981 (= res!317138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!517982 () Bool)

(declare-fun res!317140 () Bool)

(assert (=> b!517982 (=> (not res!317140) (not e!302245))))

(declare-datatypes ((List!10124 0))(
  ( (Nil!10121) (Cons!10120 (h!11027 (_ BitVec 64)) (t!16360 List!10124)) )
))
(declare-fun arrayNoDuplicates!0 (array!33105 (_ BitVec 32) List!10124) Bool)

(assert (=> b!517982 (= res!317140 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10121))))

(assert (= (and start!47004 res!317137) b!517979))

(assert (= (and b!517979 res!317143) b!517974))

(assert (= (and b!517974 res!317145) b!517977))

(assert (= (and b!517977 res!317141) b!517980))

(assert (= (and b!517980 res!317144) b!517976))

(assert (= (and b!517976 res!317139) b!517981))

(assert (= (and b!517981 res!317138) b!517982))

(assert (= (and b!517982 res!317140) b!517978))

(assert (= (and b!517978 res!317147) b!517972))

(assert (= (and b!517978 (not res!317142)) b!517975))

(assert (= (and b!517975 (not res!317146)) b!517973))

(declare-fun m!499365 () Bool)

(assert (=> b!517976 m!499365))

(declare-fun m!499367 () Bool)

(assert (=> b!517977 m!499367))

(declare-fun m!499369 () Bool)

(assert (=> b!517972 m!499369))

(assert (=> b!517972 m!499369))

(declare-fun m!499371 () Bool)

(assert (=> b!517972 m!499371))

(declare-fun m!499373 () Bool)

(assert (=> b!517978 m!499373))

(declare-fun m!499375 () Bool)

(assert (=> b!517978 m!499375))

(declare-fun m!499377 () Bool)

(assert (=> b!517978 m!499377))

(assert (=> b!517978 m!499369))

(declare-fun m!499379 () Bool)

(assert (=> b!517978 m!499379))

(assert (=> b!517978 m!499369))

(declare-fun m!499381 () Bool)

(assert (=> b!517978 m!499381))

(assert (=> b!517978 m!499377))

(declare-fun m!499383 () Bool)

(assert (=> b!517978 m!499383))

(assert (=> b!517978 m!499377))

(declare-fun m!499385 () Bool)

(assert (=> b!517978 m!499385))

(assert (=> b!517978 m!499369))

(declare-fun m!499387 () Bool)

(assert (=> b!517978 m!499387))

(declare-fun m!499389 () Bool)

(assert (=> start!47004 m!499389))

(declare-fun m!499391 () Bool)

(assert (=> start!47004 m!499391))

(declare-fun m!499393 () Bool)

(assert (=> b!517982 m!499393))

(declare-fun m!499395 () Bool)

(assert (=> b!517980 m!499395))

(assert (=> b!517974 m!499369))

(assert (=> b!517974 m!499369))

(declare-fun m!499397 () Bool)

(assert (=> b!517974 m!499397))

(declare-fun m!499399 () Bool)

(assert (=> b!517981 m!499399))

(declare-fun m!499401 () Bool)

(assert (=> b!517973 m!499401))

(assert (=> b!517973 m!499369))

(check-sat (not b!517980) (not b!517972) (not b!517982) (not b!517981) (not b!517977) (not b!517974) (not b!517976) (not b!517978) (not start!47004))
(check-sat)
