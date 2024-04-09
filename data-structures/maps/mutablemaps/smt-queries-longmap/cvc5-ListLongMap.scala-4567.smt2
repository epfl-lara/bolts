; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63718 () Bool)

(assert start!63718)

(declare-fun b!716890 () Bool)

(declare-fun res!479819 () Bool)

(declare-fun e!402551 () Bool)

(assert (=> b!716890 (=> (not res!479819) (not e!402551))))

(declare-datatypes ((array!40567 0))(
  ( (array!40568 (arr!19413 (Array (_ BitVec 32) (_ BitVec 64))) (size!19834 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40567)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716890 (= res!479819 (validKeyInArray!0 (select (arr!19413 a!3186) j!159)))))

(declare-fun b!716891 () Bool)

(declare-fun res!479820 () Bool)

(assert (=> b!716891 (=> (not res!479820) (not e!402551))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40567 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716891 (= res!479820 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!479816 () Bool)

(assert (=> start!63718 (=> (not res!479816) (not e!402551))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63718 (= res!479816 (validMask!0 mask!3328))))

(assert (=> start!63718 e!402551))

(declare-fun array_inv!15187 (array!40567) Bool)

(assert (=> start!63718 (array_inv!15187 a!3186)))

(assert (=> start!63718 true))

(declare-fun b!716892 () Bool)

(assert (=> b!716892 (= e!402551 false)))

(declare-datatypes ((SeekEntryResult!7020 0))(
  ( (MissingZero!7020 (index!30447 (_ BitVec 32))) (Found!7020 (index!30448 (_ BitVec 32))) (Intermediate!7020 (undefined!7832 Bool) (index!30449 (_ BitVec 32)) (x!61505 (_ BitVec 32))) (Undefined!7020) (MissingVacant!7020 (index!30450 (_ BitVec 32))) )
))
(declare-fun lt!318947 () SeekEntryResult!7020)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40567 (_ BitVec 32)) SeekEntryResult!7020)

(assert (=> b!716892 (= lt!318947 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!716893 () Bool)

(declare-fun res!479817 () Bool)

(assert (=> b!716893 (=> (not res!479817) (not e!402551))))

(assert (=> b!716893 (= res!479817 (validKeyInArray!0 k!2102))))

(declare-fun b!716894 () Bool)

(declare-fun res!479818 () Bool)

(assert (=> b!716894 (=> (not res!479818) (not e!402551))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!716894 (= res!479818 (and (= (size!19834 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19834 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19834 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!63718 res!479816) b!716894))

(assert (= (and b!716894 res!479818) b!716890))

(assert (= (and b!716890 res!479819) b!716893))

(assert (= (and b!716893 res!479817) b!716891))

(assert (= (and b!716891 res!479820) b!716892))

(declare-fun m!672969 () Bool)

(assert (=> b!716890 m!672969))

(assert (=> b!716890 m!672969))

(declare-fun m!672971 () Bool)

(assert (=> b!716890 m!672971))

(declare-fun m!672973 () Bool)

(assert (=> start!63718 m!672973))

(declare-fun m!672975 () Bool)

(assert (=> start!63718 m!672975))

(declare-fun m!672977 () Bool)

(assert (=> b!716891 m!672977))

(declare-fun m!672979 () Bool)

(assert (=> b!716893 m!672979))

(declare-fun m!672981 () Bool)

(assert (=> b!716892 m!672981))

(push 1)

(assert (not b!716891))

(assert (not b!716890))

(assert (not b!716892))

(assert (not b!716893))

(assert (not start!63718))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

