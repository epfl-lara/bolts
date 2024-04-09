; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53022 () Bool)

(assert start!53022)

(declare-fun b!577012 () Bool)

(declare-fun res!365194 () Bool)

(declare-fun e!331923 () Bool)

(assert (=> b!577012 (=> (not res!365194) (not e!331923))))

(declare-datatypes ((array!35994 0))(
  ( (array!35995 (arr!17272 (Array (_ BitVec 32) (_ BitVec 64))) (size!17636 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35994)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577012 (= res!365194 (validKeyInArray!0 (select (arr!17272 a!2986) j!136)))))

(declare-fun b!577014 () Bool)

(declare-fun res!365196 () Bool)

(assert (=> b!577014 (=> (not res!365196) (not e!331923))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35994 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577014 (= res!365196 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577015 () Bool)

(declare-fun res!365197 () Bool)

(assert (=> b!577015 (=> (not res!365197) (not e!331923))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577015 (= res!365197 (and (= (size!17636 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17636 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17636 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!577016 () Bool)

(assert (=> b!577016 (= e!331923 false)))

(declare-datatypes ((SeekEntryResult!5719 0))(
  ( (MissingZero!5719 (index!25103 (_ BitVec 32))) (Found!5719 (index!25104 (_ BitVec 32))) (Intermediate!5719 (undefined!6531 Bool) (index!25105 (_ BitVec 32)) (x!54047 (_ BitVec 32))) (Undefined!5719) (MissingVacant!5719 (index!25106 (_ BitVec 32))) )
))
(declare-fun lt!263882 () SeekEntryResult!5719)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35994 (_ BitVec 32)) SeekEntryResult!5719)

(assert (=> b!577016 (= lt!263882 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!365195 () Bool)

(assert (=> start!53022 (=> (not res!365195) (not e!331923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53022 (= res!365195 (validMask!0 mask!3053))))

(assert (=> start!53022 e!331923))

(assert (=> start!53022 true))

(declare-fun array_inv!13046 (array!35994) Bool)

(assert (=> start!53022 (array_inv!13046 a!2986)))

(declare-fun b!577013 () Bool)

(declare-fun res!365198 () Bool)

(assert (=> b!577013 (=> (not res!365198) (not e!331923))))

(assert (=> b!577013 (= res!365198 (validKeyInArray!0 k0!1786))))

(assert (= (and start!53022 res!365195) b!577015))

(assert (= (and b!577015 res!365197) b!577012))

(assert (= (and b!577012 res!365194) b!577013))

(assert (= (and b!577013 res!365198) b!577014))

(assert (= (and b!577014 res!365196) b!577016))

(declare-fun m!555957 () Bool)

(assert (=> b!577012 m!555957))

(assert (=> b!577012 m!555957))

(declare-fun m!555959 () Bool)

(assert (=> b!577012 m!555959))

(declare-fun m!555961 () Bool)

(assert (=> b!577016 m!555961))

(declare-fun m!555963 () Bool)

(assert (=> b!577014 m!555963))

(declare-fun m!555965 () Bool)

(assert (=> start!53022 m!555965))

(declare-fun m!555967 () Bool)

(assert (=> start!53022 m!555967))

(declare-fun m!555969 () Bool)

(assert (=> b!577013 m!555969))

(check-sat (not b!577016) (not b!577014) (not b!577012) (not b!577013) (not start!53022))
