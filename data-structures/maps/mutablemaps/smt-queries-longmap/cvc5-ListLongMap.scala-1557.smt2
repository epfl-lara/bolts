; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29520 () Bool)

(assert start!29520)

(declare-fun b!298209 () Bool)

(declare-fun res!157305 () Bool)

(declare-fun e!188421 () Bool)

(assert (=> b!298209 (=> (not res!157305) (not e!188421))))

(declare-datatypes ((array!15089 0))(
  ( (array!15090 (arr!7147 (Array (_ BitVec 32) (_ BitVec 64))) (size!7499 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15089)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15089 (_ BitVec 32)) Bool)

(assert (=> b!298209 (= res!157305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!298210 () Bool)

(declare-fun res!157300 () Bool)

(declare-fun e!188422 () Bool)

(assert (=> b!298210 (=> (not res!157300) (not e!188422))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!298210 (= res!157300 (validKeyInArray!0 k!2524))))

(declare-fun b!298211 () Bool)

(assert (=> b!298211 (= e!188422 e!188421)))

(declare-fun res!157302 () Bool)

(assert (=> b!298211 (=> (not res!157302) (not e!188421))))

(declare-datatypes ((SeekEntryResult!2307 0))(
  ( (MissingZero!2307 (index!11401 (_ BitVec 32))) (Found!2307 (index!11402 (_ BitVec 32))) (Intermediate!2307 (undefined!3119 Bool) (index!11403 (_ BitVec 32)) (x!29597 (_ BitVec 32))) (Undefined!2307) (MissingVacant!2307 (index!11404 (_ BitVec 32))) )
))
(declare-fun lt!148304 () SeekEntryResult!2307)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!298211 (= res!157302 (or (= lt!148304 (MissingZero!2307 i!1256)) (= lt!148304 (MissingVacant!2307 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15089 (_ BitVec 32)) SeekEntryResult!2307)

(assert (=> b!298211 (= lt!148304 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!157304 () Bool)

(assert (=> start!29520 (=> (not res!157304) (not e!188422))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29520 (= res!157304 (validMask!0 mask!3809))))

(assert (=> start!29520 e!188422))

(assert (=> start!29520 true))

(declare-fun array_inv!5101 (array!15089) Bool)

(assert (=> start!29520 (array_inv!5101 a!3312)))

(declare-fun b!298212 () Bool)

(declare-fun res!157303 () Bool)

(assert (=> b!298212 (=> (not res!157303) (not e!188422))))

(declare-fun arrayContainsKey!0 (array!15089 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!298212 (= res!157303 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!298213 () Bool)

(assert (=> b!298213 (= e!188421 false)))

(declare-fun lt!148302 () SeekEntryResult!2307)

(declare-fun lt!148303 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15089 (_ BitVec 32)) SeekEntryResult!2307)

(assert (=> b!298213 (= lt!148302 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148303 k!2524 (array!15090 (store (arr!7147 a!3312) i!1256 k!2524) (size!7499 a!3312)) mask!3809))))

(declare-fun lt!148301 () SeekEntryResult!2307)

(assert (=> b!298213 (= lt!148301 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148303 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298213 (= lt!148303 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!298214 () Bool)

(declare-fun res!157301 () Bool)

(assert (=> b!298214 (=> (not res!157301) (not e!188422))))

(assert (=> b!298214 (= res!157301 (and (= (size!7499 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7499 a!3312))))))

(assert (= (and start!29520 res!157304) b!298214))

(assert (= (and b!298214 res!157301) b!298210))

(assert (= (and b!298210 res!157300) b!298212))

(assert (= (and b!298212 res!157303) b!298211))

(assert (= (and b!298211 res!157302) b!298209))

(assert (= (and b!298209 res!157305) b!298213))

(declare-fun m!310763 () Bool)

(assert (=> b!298210 m!310763))

(declare-fun m!310765 () Bool)

(assert (=> b!298213 m!310765))

(declare-fun m!310767 () Bool)

(assert (=> b!298213 m!310767))

(declare-fun m!310769 () Bool)

(assert (=> b!298213 m!310769))

(declare-fun m!310771 () Bool)

(assert (=> b!298213 m!310771))

(declare-fun m!310773 () Bool)

(assert (=> start!29520 m!310773))

(declare-fun m!310775 () Bool)

(assert (=> start!29520 m!310775))

(declare-fun m!310777 () Bool)

(assert (=> b!298211 m!310777))

(declare-fun m!310779 () Bool)

(assert (=> b!298212 m!310779))

(declare-fun m!310781 () Bool)

(assert (=> b!298209 m!310781))

(push 1)

