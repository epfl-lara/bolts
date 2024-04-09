; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131166 () Bool)

(assert start!131166)

(declare-fun b!1538180 () Bool)

(declare-fun res!1055298 () Bool)

(declare-fun e!855919 () Bool)

(assert (=> b!1538180 (=> (not res!1055298) (not e!855919))))

(declare-datatypes ((array!102158 0))(
  ( (array!102159 (arr!49289 (Array (_ BitVec 32) (_ BitVec 64))) (size!49840 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102158)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102158 (_ BitVec 32)) Bool)

(assert (=> b!1538180 (= res!1055298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538181 () Bool)

(declare-fun res!1055297 () Bool)

(assert (=> b!1538181 (=> (not res!1055297) (not e!855919))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1538181 (= res!1055297 (not (= (select (arr!49289 a!2792) index!463) (select (arr!49289 a!2792) j!64))))))

(declare-fun b!1538182 () Bool)

(declare-fun res!1055301 () Bool)

(assert (=> b!1538182 (=> (not res!1055301) (not e!855919))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538182 (= res!1055301 (and (= (size!49840 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49840 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49840 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538183 () Bool)

(declare-fun res!1055304 () Bool)

(assert (=> b!1538183 (=> (not res!1055304) (not e!855919))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538183 (= res!1055304 (validKeyInArray!0 (select (arr!49289 a!2792) i!951)))))

(declare-fun b!1538184 () Bool)

(assert (=> b!1538184 (= e!855919 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664807 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538184 (= lt!664807 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538185 () Bool)

(declare-fun res!1055299 () Bool)

(assert (=> b!1538185 (=> (not res!1055299) (not e!855919))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13438 0))(
  ( (MissingZero!13438 (index!56146 (_ BitVec 32))) (Found!13438 (index!56147 (_ BitVec 32))) (Intermediate!13438 (undefined!14250 Bool) (index!56148 (_ BitVec 32)) (x!137886 (_ BitVec 32))) (Undefined!13438) (MissingVacant!13438 (index!56149 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102158 (_ BitVec 32)) SeekEntryResult!13438)

(assert (=> b!1538185 (= res!1055299 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49289 a!2792) j!64) a!2792 mask!2480) (Found!13438 j!64)))))

(declare-fun b!1538186 () Bool)

(declare-fun res!1055302 () Bool)

(assert (=> b!1538186 (=> (not res!1055302) (not e!855919))))

(assert (=> b!1538186 (= res!1055302 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49840 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49840 a!2792)) (= (select (arr!49289 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538187 () Bool)

(declare-fun res!1055303 () Bool)

(assert (=> b!1538187 (=> (not res!1055303) (not e!855919))))

(declare-datatypes ((List!35943 0))(
  ( (Nil!35940) (Cons!35939 (h!37385 (_ BitVec 64)) (t!50644 List!35943)) )
))
(declare-fun arrayNoDuplicates!0 (array!102158 (_ BitVec 32) List!35943) Bool)

(assert (=> b!1538187 (= res!1055303 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35940))))

(declare-fun res!1055300 () Bool)

(assert (=> start!131166 (=> (not res!1055300) (not e!855919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131166 (= res!1055300 (validMask!0 mask!2480))))

(assert (=> start!131166 e!855919))

(assert (=> start!131166 true))

(declare-fun array_inv!38234 (array!102158) Bool)

(assert (=> start!131166 (array_inv!38234 a!2792)))

(declare-fun b!1538188 () Bool)

(declare-fun res!1055296 () Bool)

(assert (=> b!1538188 (=> (not res!1055296) (not e!855919))))

(assert (=> b!1538188 (= res!1055296 (validKeyInArray!0 (select (arr!49289 a!2792) j!64)))))

(assert (= (and start!131166 res!1055300) b!1538182))

(assert (= (and b!1538182 res!1055301) b!1538183))

(assert (= (and b!1538183 res!1055304) b!1538188))

(assert (= (and b!1538188 res!1055296) b!1538180))

(assert (= (and b!1538180 res!1055298) b!1538187))

(assert (= (and b!1538187 res!1055303) b!1538186))

(assert (= (and b!1538186 res!1055302) b!1538185))

(assert (= (and b!1538185 res!1055299) b!1538181))

(assert (= (and b!1538181 res!1055297) b!1538184))

(declare-fun m!1420677 () Bool)

(assert (=> b!1538184 m!1420677))

(declare-fun m!1420679 () Bool)

(assert (=> b!1538180 m!1420679))

(declare-fun m!1420681 () Bool)

(assert (=> b!1538185 m!1420681))

(assert (=> b!1538185 m!1420681))

(declare-fun m!1420683 () Bool)

(assert (=> b!1538185 m!1420683))

(declare-fun m!1420685 () Bool)

(assert (=> b!1538183 m!1420685))

(assert (=> b!1538183 m!1420685))

(declare-fun m!1420687 () Bool)

(assert (=> b!1538183 m!1420687))

(declare-fun m!1420689 () Bool)

(assert (=> b!1538181 m!1420689))

(assert (=> b!1538181 m!1420681))

(assert (=> b!1538188 m!1420681))

(assert (=> b!1538188 m!1420681))

(declare-fun m!1420691 () Bool)

(assert (=> b!1538188 m!1420691))

(declare-fun m!1420693 () Bool)

(assert (=> b!1538187 m!1420693))

(declare-fun m!1420695 () Bool)

(assert (=> b!1538186 m!1420695))

(declare-fun m!1420697 () Bool)

(assert (=> start!131166 m!1420697))

(declare-fun m!1420699 () Bool)

(assert (=> start!131166 m!1420699))

(check-sat (not b!1538188) (not b!1538184) (not b!1538180) (not b!1538187) (not b!1538185) (not b!1538183) (not start!131166))
