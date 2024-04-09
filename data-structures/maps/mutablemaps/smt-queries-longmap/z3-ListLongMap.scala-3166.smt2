; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44634 () Bool)

(assert start!44634)

(declare-fun b!489321 () Bool)

(declare-fun res!292408 () Bool)

(declare-fun e!287789 () Bool)

(assert (=> b!489321 (=> (not res!292408) (not e!287789))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31653 0))(
  ( (array!31654 (arr!15211 (Array (_ BitVec 32) (_ BitVec 64))) (size!15575 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31653)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!489321 (= res!292408 (and (= (size!15575 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15575 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15575 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!292414 () Bool)

(assert (=> start!44634 (=> (not res!292414) (not e!287789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44634 (= res!292414 (validMask!0 mask!3524))))

(assert (=> start!44634 e!287789))

(assert (=> start!44634 true))

(declare-fun array_inv!10985 (array!31653) Bool)

(assert (=> start!44634 (array_inv!10985 a!3235)))

(declare-fun b!489322 () Bool)

(declare-fun res!292410 () Bool)

(assert (=> b!489322 (=> (not res!292410) (not e!287789))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31653 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489322 (= res!292410 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489323 () Bool)

(declare-fun e!287791 () Bool)

(assert (=> b!489323 (= e!287791 (not true))))

(declare-fun lt!220842 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3685 0))(
  ( (MissingZero!3685 (index!16919 (_ BitVec 32))) (Found!3685 (index!16920 (_ BitVec 32))) (Intermediate!3685 (undefined!4497 Bool) (index!16921 (_ BitVec 32)) (x!46058 (_ BitVec 32))) (Undefined!3685) (MissingVacant!3685 (index!16922 (_ BitVec 32))) )
))
(declare-fun lt!220839 () SeekEntryResult!3685)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31653 (_ BitVec 32)) SeekEntryResult!3685)

(assert (=> b!489323 (= lt!220839 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220842 (select (store (arr!15211 a!3235) i!1204 k0!2280) j!176) (array!31654 (store (arr!15211 a!3235) i!1204 k0!2280) (size!15575 a!3235)) mask!3524))))

(declare-fun lt!220840 () (_ BitVec 32))

(declare-fun lt!220841 () SeekEntryResult!3685)

(assert (=> b!489323 (= lt!220841 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220840 (select (arr!15211 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489323 (= lt!220842 (toIndex!0 (select (store (arr!15211 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!489323 (= lt!220840 (toIndex!0 (select (arr!15211 a!3235) j!176) mask!3524))))

(declare-fun e!287788 () Bool)

(assert (=> b!489323 e!287788))

(declare-fun res!292415 () Bool)

(assert (=> b!489323 (=> (not res!292415) (not e!287788))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31653 (_ BitVec 32)) Bool)

(assert (=> b!489323 (= res!292415 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14308 0))(
  ( (Unit!14309) )
))
(declare-fun lt!220844 () Unit!14308)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31653 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14308)

(assert (=> b!489323 (= lt!220844 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489324 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31653 (_ BitVec 32)) SeekEntryResult!3685)

(assert (=> b!489324 (= e!287788 (= (seekEntryOrOpen!0 (select (arr!15211 a!3235) j!176) a!3235 mask!3524) (Found!3685 j!176)))))

(declare-fun b!489325 () Bool)

(declare-fun res!292413 () Bool)

(assert (=> b!489325 (=> (not res!292413) (not e!287791))))

(assert (=> b!489325 (= res!292413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489326 () Bool)

(declare-fun res!292409 () Bool)

(assert (=> b!489326 (=> (not res!292409) (not e!287789))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489326 (= res!292409 (validKeyInArray!0 k0!2280))))

(declare-fun b!489327 () Bool)

(declare-fun res!292407 () Bool)

(assert (=> b!489327 (=> (not res!292407) (not e!287791))))

(declare-datatypes ((List!9422 0))(
  ( (Nil!9419) (Cons!9418 (h!10280 (_ BitVec 64)) (t!15658 List!9422)) )
))
(declare-fun arrayNoDuplicates!0 (array!31653 (_ BitVec 32) List!9422) Bool)

(assert (=> b!489327 (= res!292407 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9419))))

(declare-fun b!489328 () Bool)

(declare-fun res!292412 () Bool)

(assert (=> b!489328 (=> (not res!292412) (not e!287789))))

(assert (=> b!489328 (= res!292412 (validKeyInArray!0 (select (arr!15211 a!3235) j!176)))))

(declare-fun b!489329 () Bool)

(assert (=> b!489329 (= e!287789 e!287791)))

(declare-fun res!292411 () Bool)

(assert (=> b!489329 (=> (not res!292411) (not e!287791))))

(declare-fun lt!220843 () SeekEntryResult!3685)

(assert (=> b!489329 (= res!292411 (or (= lt!220843 (MissingZero!3685 i!1204)) (= lt!220843 (MissingVacant!3685 i!1204))))))

(assert (=> b!489329 (= lt!220843 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!44634 res!292414) b!489321))

(assert (= (and b!489321 res!292408) b!489328))

(assert (= (and b!489328 res!292412) b!489326))

(assert (= (and b!489326 res!292409) b!489322))

(assert (= (and b!489322 res!292410) b!489329))

(assert (= (and b!489329 res!292411) b!489325))

(assert (= (and b!489325 res!292413) b!489327))

(assert (= (and b!489327 res!292407) b!489323))

(assert (= (and b!489323 res!292415) b!489324))

(declare-fun m!469159 () Bool)

(assert (=> b!489323 m!469159))

(declare-fun m!469161 () Bool)

(assert (=> b!489323 m!469161))

(declare-fun m!469163 () Bool)

(assert (=> b!489323 m!469163))

(declare-fun m!469165 () Bool)

(assert (=> b!489323 m!469165))

(assert (=> b!489323 m!469161))

(declare-fun m!469167 () Bool)

(assert (=> b!489323 m!469167))

(declare-fun m!469169 () Bool)

(assert (=> b!489323 m!469169))

(assert (=> b!489323 m!469167))

(declare-fun m!469171 () Bool)

(assert (=> b!489323 m!469171))

(assert (=> b!489323 m!469161))

(declare-fun m!469173 () Bool)

(assert (=> b!489323 m!469173))

(assert (=> b!489323 m!469167))

(declare-fun m!469175 () Bool)

(assert (=> b!489323 m!469175))

(declare-fun m!469177 () Bool)

(assert (=> start!44634 m!469177))

(declare-fun m!469179 () Bool)

(assert (=> start!44634 m!469179))

(declare-fun m!469181 () Bool)

(assert (=> b!489327 m!469181))

(declare-fun m!469183 () Bool)

(assert (=> b!489326 m!469183))

(declare-fun m!469185 () Bool)

(assert (=> b!489325 m!469185))

(declare-fun m!469187 () Bool)

(assert (=> b!489322 m!469187))

(declare-fun m!469189 () Bool)

(assert (=> b!489329 m!469189))

(assert (=> b!489328 m!469167))

(assert (=> b!489328 m!469167))

(declare-fun m!469191 () Bool)

(assert (=> b!489328 m!469191))

(assert (=> b!489324 m!469167))

(assert (=> b!489324 m!469167))

(declare-fun m!469193 () Bool)

(assert (=> b!489324 m!469193))

(check-sat (not b!489324) (not start!44634) (not b!489329) (not b!489328) (not b!489322) (not b!489325) (not b!489326) (not b!489323) (not b!489327))
(check-sat)
