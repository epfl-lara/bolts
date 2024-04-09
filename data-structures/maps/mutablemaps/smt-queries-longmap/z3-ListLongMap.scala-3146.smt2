; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44310 () Bool)

(assert start!44310)

(declare-fun b!486973 () Bool)

(declare-fun res!290512 () Bool)

(declare-fun e!286569 () Bool)

(assert (=> b!486973 (=> (not res!290512) (not e!286569))))

(declare-datatypes ((array!31521 0))(
  ( (array!31522 (arr!15151 (Array (_ BitVec 32) (_ BitVec 64))) (size!15515 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31521)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31521 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486973 (= res!290512 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!290511 () Bool)

(assert (=> start!44310 (=> (not res!290511) (not e!286569))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44310 (= res!290511 (validMask!0 mask!3524))))

(assert (=> start!44310 e!286569))

(assert (=> start!44310 true))

(declare-fun array_inv!10925 (array!31521) Bool)

(assert (=> start!44310 (array_inv!10925 a!3235)))

(declare-fun b!486974 () Bool)

(declare-fun res!290516 () Bool)

(assert (=> b!486974 (=> (not res!290516) (not e!286569))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486974 (= res!290516 (validKeyInArray!0 (select (arr!15151 a!3235) j!176)))))

(declare-fun b!486975 () Bool)

(declare-fun e!286568 () Bool)

(assert (=> b!486975 (= e!286569 e!286568)))

(declare-fun res!290515 () Bool)

(assert (=> b!486975 (=> (not res!290515) (not e!286568))))

(declare-datatypes ((SeekEntryResult!3625 0))(
  ( (MissingZero!3625 (index!16679 (_ BitVec 32))) (Found!3625 (index!16680 (_ BitVec 32))) (Intermediate!3625 (undefined!4437 Bool) (index!16681 (_ BitVec 32)) (x!45832 (_ BitVec 32))) (Undefined!3625) (MissingVacant!3625 (index!16682 (_ BitVec 32))) )
))
(declare-fun lt!219920 () SeekEntryResult!3625)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!486975 (= res!290515 (or (= lt!219920 (MissingZero!3625 i!1204)) (= lt!219920 (MissingVacant!3625 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31521 (_ BitVec 32)) SeekEntryResult!3625)

(assert (=> b!486975 (= lt!219920 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!486976 () Bool)

(declare-fun res!290509 () Bool)

(assert (=> b!486976 (=> (not res!290509) (not e!286568))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31521 (_ BitVec 32)) Bool)

(assert (=> b!486976 (= res!290509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486977 () Bool)

(assert (=> b!486977 (= e!286568 (not true))))

(assert (=> b!486977 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14188 0))(
  ( (Unit!14189) )
))
(declare-fun lt!219919 () Unit!14188)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31521 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14188)

(assert (=> b!486977 (= lt!219919 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!486978 () Bool)

(declare-fun res!290513 () Bool)

(assert (=> b!486978 (=> (not res!290513) (not e!286568))))

(declare-datatypes ((List!9362 0))(
  ( (Nil!9359) (Cons!9358 (h!10214 (_ BitVec 64)) (t!15598 List!9362)) )
))
(declare-fun arrayNoDuplicates!0 (array!31521 (_ BitVec 32) List!9362) Bool)

(assert (=> b!486978 (= res!290513 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9359))))

(declare-fun b!486979 () Bool)

(declare-fun res!290514 () Bool)

(assert (=> b!486979 (=> (not res!290514) (not e!286569))))

(assert (=> b!486979 (= res!290514 (and (= (size!15515 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15515 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15515 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486980 () Bool)

(declare-fun res!290510 () Bool)

(assert (=> b!486980 (=> (not res!290510) (not e!286569))))

(assert (=> b!486980 (= res!290510 (validKeyInArray!0 k0!2280))))

(assert (= (and start!44310 res!290511) b!486979))

(assert (= (and b!486979 res!290514) b!486974))

(assert (= (and b!486974 res!290516) b!486980))

(assert (= (and b!486980 res!290510) b!486973))

(assert (= (and b!486973 res!290512) b!486975))

(assert (= (and b!486975 res!290515) b!486976))

(assert (= (and b!486976 res!290509) b!486978))

(assert (= (and b!486978 res!290513) b!486977))

(declare-fun m!466853 () Bool)

(assert (=> b!486976 m!466853))

(declare-fun m!466855 () Bool)

(assert (=> start!44310 m!466855))

(declare-fun m!466857 () Bool)

(assert (=> start!44310 m!466857))

(declare-fun m!466859 () Bool)

(assert (=> b!486973 m!466859))

(declare-fun m!466861 () Bool)

(assert (=> b!486977 m!466861))

(declare-fun m!466863 () Bool)

(assert (=> b!486977 m!466863))

(declare-fun m!466865 () Bool)

(assert (=> b!486974 m!466865))

(assert (=> b!486974 m!466865))

(declare-fun m!466867 () Bool)

(assert (=> b!486974 m!466867))

(declare-fun m!466869 () Bool)

(assert (=> b!486975 m!466869))

(declare-fun m!466871 () Bool)

(assert (=> b!486978 m!466871))

(declare-fun m!466873 () Bool)

(assert (=> b!486980 m!466873))

(check-sat (not b!486974) (not b!486973) (not b!486976) (not b!486975) (not b!486977) (not b!486980) (not b!486978) (not start!44310))
(check-sat)
