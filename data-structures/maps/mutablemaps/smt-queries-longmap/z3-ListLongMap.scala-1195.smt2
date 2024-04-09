; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25650 () Bool)

(assert start!25650)

(declare-fun b!265852 () Bool)

(declare-fun res!130188 () Bool)

(declare-fun e!172131 () Bool)

(assert (=> b!265852 (=> (not res!130188) (not e!172131))))

(declare-datatypes ((array!12816 0))(
  ( (array!12817 (arr!6062 (Array (_ BitVec 32) (_ BitVec 64))) (size!6414 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12816)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12816 (_ BitVec 32)) Bool)

(assert (=> b!265852 (= res!130188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265853 () Bool)

(declare-fun res!130191 () Bool)

(declare-fun e!172132 () Bool)

(assert (=> b!265853 (=> (not res!130191) (not e!172132))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265853 (= res!130191 (and (= (size!6414 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6414 a!3436))))))

(declare-fun b!265854 () Bool)

(declare-fun res!130189 () Bool)

(assert (=> b!265854 (=> (not res!130189) (not e!172132))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265854 (= res!130189 (validKeyInArray!0 k0!2698))))

(declare-fun b!265855 () Bool)

(assert (=> b!265855 (= e!172131 false)))

(declare-fun lt!134282 () Bool)

(declare-datatypes ((List!3897 0))(
  ( (Nil!3894) (Cons!3893 (h!4560 (_ BitVec 64)) (t!8987 List!3897)) )
))
(declare-fun arrayNoDuplicates!0 (array!12816 (_ BitVec 32) List!3897) Bool)

(assert (=> b!265855 (= lt!134282 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3894))))

(declare-fun b!265856 () Bool)

(assert (=> b!265856 (= e!172132 e!172131)))

(declare-fun res!130190 () Bool)

(assert (=> b!265856 (=> (not res!130190) (not e!172131))))

(declare-datatypes ((SeekEntryResult!1264 0))(
  ( (MissingZero!1264 (index!7226 (_ BitVec 32))) (Found!1264 (index!7227 (_ BitVec 32))) (Intermediate!1264 (undefined!2076 Bool) (index!7228 (_ BitVec 32)) (x!25509 (_ BitVec 32))) (Undefined!1264) (MissingVacant!1264 (index!7229 (_ BitVec 32))) )
))
(declare-fun lt!134281 () SeekEntryResult!1264)

(assert (=> b!265856 (= res!130190 (or (= lt!134281 (MissingZero!1264 i!1355)) (= lt!134281 (MissingVacant!1264 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12816 (_ BitVec 32)) SeekEntryResult!1264)

(assert (=> b!265856 (= lt!134281 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun res!130186 () Bool)

(assert (=> start!25650 (=> (not res!130186) (not e!172132))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25650 (= res!130186 (validMask!0 mask!4002))))

(assert (=> start!25650 e!172132))

(assert (=> start!25650 true))

(declare-fun array_inv!4016 (array!12816) Bool)

(assert (=> start!25650 (array_inv!4016 a!3436)))

(declare-fun b!265857 () Bool)

(declare-fun res!130187 () Bool)

(assert (=> b!265857 (=> (not res!130187) (not e!172132))))

(declare-fun arrayContainsKey!0 (array!12816 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265857 (= res!130187 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(assert (= (and start!25650 res!130186) b!265853))

(assert (= (and b!265853 res!130191) b!265854))

(assert (= (and b!265854 res!130189) b!265857))

(assert (= (and b!265857 res!130187) b!265856))

(assert (= (and b!265856 res!130190) b!265852))

(assert (= (and b!265852 res!130188) b!265855))

(declare-fun m!282601 () Bool)

(assert (=> start!25650 m!282601))

(declare-fun m!282603 () Bool)

(assert (=> start!25650 m!282603))

(declare-fun m!282605 () Bool)

(assert (=> b!265855 m!282605))

(declare-fun m!282607 () Bool)

(assert (=> b!265854 m!282607))

(declare-fun m!282609 () Bool)

(assert (=> b!265857 m!282609))

(declare-fun m!282611 () Bool)

(assert (=> b!265852 m!282611))

(declare-fun m!282613 () Bool)

(assert (=> b!265856 m!282613))

(check-sat (not b!265857) (not b!265855) (not start!25650) (not b!265856) (not b!265852) (not b!265854))
