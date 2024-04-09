; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27654 () Bool)

(assert start!27654)

(declare-fun b!285319 () Bool)

(declare-fun res!147767 () Bool)

(declare-fun e!180876 () Bool)

(assert (=> b!285319 (=> (not res!147767) (not e!180876))))

(declare-datatypes ((array!14248 0))(
  ( (array!14249 (arr!6761 (Array (_ BitVec 32) (_ BitVec 64))) (size!7113 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14248)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14248 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!285319 (= res!147767 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!285320 () Bool)

(declare-fun e!180877 () Bool)

(assert (=> b!285320 (= e!180876 e!180877)))

(declare-fun res!147768 () Bool)

(assert (=> b!285320 (=> (not res!147768) (not e!180877))))

(declare-datatypes ((SeekEntryResult!1930 0))(
  ( (MissingZero!1930 (index!9890 (_ BitVec 32))) (Found!1930 (index!9891 (_ BitVec 32))) (Intermediate!1930 (undefined!2742 Bool) (index!9892 (_ BitVec 32)) (x!28057 (_ BitVec 32))) (Undefined!1930) (MissingVacant!1930 (index!9893 (_ BitVec 32))) )
))
(declare-fun lt!140819 () SeekEntryResult!1930)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!285320 (= res!147768 (or (= lt!140819 (MissingZero!1930 i!1267)) (= lt!140819 (MissingVacant!1930 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14248 (_ BitVec 32)) SeekEntryResult!1930)

(assert (=> b!285320 (= lt!140819 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun res!147765 () Bool)

(assert (=> start!27654 (=> (not res!147765) (not e!180876))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27654 (= res!147765 (validMask!0 mask!3868))))

(assert (=> start!27654 e!180876))

(declare-fun array_inv!4715 (array!14248) Bool)

(assert (=> start!27654 (array_inv!4715 a!3325)))

(assert (=> start!27654 true))

(declare-fun b!285321 () Bool)

(declare-fun res!147764 () Bool)

(assert (=> b!285321 (=> (not res!147764) (not e!180876))))

(declare-datatypes ((List!4590 0))(
  ( (Nil!4587) (Cons!4586 (h!5259 (_ BitVec 64)) (t!9680 List!4590)) )
))
(declare-fun arrayNoDuplicates!0 (array!14248 (_ BitVec 32) List!4590) Bool)

(assert (=> b!285321 (= res!147764 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4587))))

(declare-fun b!285322 () Bool)

(declare-fun res!147766 () Bool)

(assert (=> b!285322 (=> (not res!147766) (not e!180876))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285322 (= res!147766 (validKeyInArray!0 k0!2581))))

(declare-fun b!285323 () Bool)

(assert (=> b!285323 (= e!180877 false)))

(declare-fun lt!140818 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14248 (_ BitVec 32)) Bool)

(assert (=> b!285323 (= lt!140818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!285324 () Bool)

(declare-fun res!147763 () Bool)

(assert (=> b!285324 (=> (not res!147763) (not e!180876))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!285324 (= res!147763 (and (= (size!7113 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7113 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7113 a!3325))))))

(assert (= (and start!27654 res!147765) b!285324))

(assert (= (and b!285324 res!147763) b!285322))

(assert (= (and b!285322 res!147766) b!285321))

(assert (= (and b!285321 res!147764) b!285319))

(assert (= (and b!285319 res!147767) b!285320))

(assert (= (and b!285320 res!147768) b!285323))

(declare-fun m!300207 () Bool)

(assert (=> start!27654 m!300207))

(declare-fun m!300209 () Bool)

(assert (=> start!27654 m!300209))

(declare-fun m!300211 () Bool)

(assert (=> b!285320 m!300211))

(declare-fun m!300213 () Bool)

(assert (=> b!285323 m!300213))

(declare-fun m!300215 () Bool)

(assert (=> b!285322 m!300215))

(declare-fun m!300217 () Bool)

(assert (=> b!285319 m!300217))

(declare-fun m!300219 () Bool)

(assert (=> b!285321 m!300219))

(check-sat (not b!285320) (not b!285319) (not b!285321) (not b!285322) (not b!285323) (not start!27654))
(check-sat)
