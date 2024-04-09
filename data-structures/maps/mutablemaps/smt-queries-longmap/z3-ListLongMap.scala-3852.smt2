; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53016 () Bool)

(assert start!53016)

(declare-fun res!365153 () Bool)

(declare-fun e!331905 () Bool)

(assert (=> start!53016 (=> (not res!365153) (not e!331905))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53016 (= res!365153 (validMask!0 mask!3053))))

(assert (=> start!53016 e!331905))

(assert (=> start!53016 true))

(declare-datatypes ((array!35988 0))(
  ( (array!35989 (arr!17269 (Array (_ BitVec 32) (_ BitVec 64))) (size!17633 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35988)

(declare-fun array_inv!13043 (array!35988) Bool)

(assert (=> start!53016 (array_inv!13043 a!2986)))

(declare-fun b!576967 () Bool)

(declare-fun res!365150 () Bool)

(assert (=> b!576967 (=> (not res!365150) (not e!331905))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576967 (= res!365150 (validKeyInArray!0 (select (arr!17269 a!2986) j!136)))))

(declare-fun b!576968 () Bool)

(declare-fun res!365149 () Bool)

(assert (=> b!576968 (=> (not res!365149) (not e!331905))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35988 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576968 (= res!365149 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!576969 () Bool)

(declare-fun res!365152 () Bool)

(assert (=> b!576969 (=> (not res!365152) (not e!331905))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!576969 (= res!365152 (and (= (size!17633 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17633 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17633 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!576970 () Bool)

(declare-fun res!365151 () Bool)

(assert (=> b!576970 (=> (not res!365151) (not e!331905))))

(assert (=> b!576970 (= res!365151 (validKeyInArray!0 k0!1786))))

(declare-fun b!576971 () Bool)

(assert (=> b!576971 (= e!331905 false)))

(declare-datatypes ((SeekEntryResult!5716 0))(
  ( (MissingZero!5716 (index!25091 (_ BitVec 32))) (Found!5716 (index!25092 (_ BitVec 32))) (Intermediate!5716 (undefined!6528 Bool) (index!25093 (_ BitVec 32)) (x!54036 (_ BitVec 32))) (Undefined!5716) (MissingVacant!5716 (index!25094 (_ BitVec 32))) )
))
(declare-fun lt!263873 () SeekEntryResult!5716)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35988 (_ BitVec 32)) SeekEntryResult!5716)

(assert (=> b!576971 (= lt!263873 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!53016 res!365153) b!576969))

(assert (= (and b!576969 res!365152) b!576967))

(assert (= (and b!576967 res!365150) b!576970))

(assert (= (and b!576970 res!365151) b!576968))

(assert (= (and b!576968 res!365149) b!576971))

(declare-fun m!555915 () Bool)

(assert (=> b!576968 m!555915))

(declare-fun m!555917 () Bool)

(assert (=> start!53016 m!555917))

(declare-fun m!555919 () Bool)

(assert (=> start!53016 m!555919))

(declare-fun m!555921 () Bool)

(assert (=> b!576967 m!555921))

(assert (=> b!576967 m!555921))

(declare-fun m!555923 () Bool)

(assert (=> b!576967 m!555923))

(declare-fun m!555925 () Bool)

(assert (=> b!576971 m!555925))

(declare-fun m!555927 () Bool)

(assert (=> b!576970 m!555927))

(check-sat (not b!576971) (not b!576970) (not b!576967) (not start!53016) (not b!576968))
