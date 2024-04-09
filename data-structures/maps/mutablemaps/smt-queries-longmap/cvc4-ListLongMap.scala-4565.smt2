; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63710 () Bool)

(assert start!63710)

(declare-fun b!716829 () Bool)

(declare-fun res!479759 () Bool)

(declare-fun e!402527 () Bool)

(assert (=> b!716829 (=> (not res!479759) (not e!402527))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!40559 0))(
  ( (array!40560 (arr!19409 (Array (_ BitVec 32) (_ BitVec 64))) (size!19830 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40559)

(assert (=> b!716829 (= res!479759 (and (= (size!19830 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19830 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19830 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!716830 () Bool)

(declare-fun res!479757 () Bool)

(assert (=> b!716830 (=> (not res!479757) (not e!402527))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!7016 0))(
  ( (MissingZero!7016 (index!30431 (_ BitVec 32))) (Found!7016 (index!30432 (_ BitVec 32))) (Intermediate!7016 (undefined!7828 Bool) (index!30433 (_ BitVec 32)) (x!61485 (_ BitVec 32))) (Undefined!7016) (MissingVacant!7016 (index!30434 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40559 (_ BitVec 32)) SeekEntryResult!7016)

(assert (=> b!716830 (= res!479757 (not (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) (MissingZero!7016 i!1173))))))

(declare-fun b!716831 () Bool)

(declare-fun res!479758 () Bool)

(assert (=> b!716831 (=> (not res!479758) (not e!402527))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716831 (= res!479758 (validKeyInArray!0 (select (arr!19409 a!3186) j!159)))))

(declare-fun b!716832 () Bool)

(declare-fun res!479755 () Bool)

(assert (=> b!716832 (=> (not res!479755) (not e!402527))))

(assert (=> b!716832 (= res!479755 (validKeyInArray!0 k!2102))))

(declare-fun res!479760 () Bool)

(assert (=> start!63710 (=> (not res!479760) (not e!402527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63710 (= res!479760 (validMask!0 mask!3328))))

(assert (=> start!63710 e!402527))

(declare-fun array_inv!15183 (array!40559) Bool)

(assert (=> start!63710 (array_inv!15183 a!3186)))

(assert (=> start!63710 true))

(declare-fun b!716833 () Bool)

(assert (=> b!716833 (= e!402527 (bvslt mask!3328 #b00000000000000000000000000000000))))

(declare-fun b!716834 () Bool)

(declare-fun res!479756 () Bool)

(assert (=> b!716834 (=> (not res!479756) (not e!402527))))

(declare-fun arrayContainsKey!0 (array!40559 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716834 (= res!479756 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!63710 res!479760) b!716829))

(assert (= (and b!716829 res!479759) b!716831))

(assert (= (and b!716831 res!479758) b!716832))

(assert (= (and b!716832 res!479755) b!716834))

(assert (= (and b!716834 res!479756) b!716830))

(assert (= (and b!716830 res!479757) b!716833))

(declare-fun m!672913 () Bool)

(assert (=> b!716832 m!672913))

(declare-fun m!672915 () Bool)

(assert (=> b!716834 m!672915))

(declare-fun m!672917 () Bool)

(assert (=> start!63710 m!672917))

(declare-fun m!672919 () Bool)

(assert (=> start!63710 m!672919))

(declare-fun m!672921 () Bool)

(assert (=> b!716831 m!672921))

(assert (=> b!716831 m!672921))

(declare-fun m!672923 () Bool)

(assert (=> b!716831 m!672923))

(declare-fun m!672925 () Bool)

(assert (=> b!716830 m!672925))

(push 1)

(assert (not b!716830))

(assert (not b!716834))

(assert (not b!716832))

(assert (not start!63710))

(assert (not b!716831))

(check-sat)

(pop 1)

(push 1)

(check-sat)

