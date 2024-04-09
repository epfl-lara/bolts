; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31852 () Bool)

(assert start!31852)

(declare-fun b!318159 () Bool)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((array!16221 0))(
  ( (array!16222 (arr!7674 (Array (_ BitVec 32) (_ BitVec 64))) (size!8026 (_ BitVec 32))) )
))
(declare-fun lt!155282 () array!16221)

(declare-fun e!197716 () Bool)

(declare-fun lt!155280 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2825 0))(
  ( (MissingZero!2825 (index!13476 (_ BitVec 32))) (Found!2825 (index!13477 (_ BitVec 32))) (Intermediate!2825 (undefined!3637 Bool) (index!13478 (_ BitVec 32)) (x!31693 (_ BitVec 32))) (Undefined!2825) (MissingVacant!2825 (index!13479 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16221 (_ BitVec 32)) SeekEntryResult!2825)

(assert (=> b!318159 (= e!197716 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155282 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155280 k!2441 lt!155282 mask!3709)))))

(declare-fun a!3293 () array!16221)

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!318159 (= lt!155282 (array!16222 (store (arr!7674 a!3293) i!1240 k!2441) (size!8026 a!3293)))))

(declare-fun b!318160 () Bool)

(declare-fun res!172898 () Bool)

(declare-fun e!197715 () Bool)

(assert (=> b!318160 (=> (not res!172898) (not e!197715))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318160 (= res!172898 (validKeyInArray!0 k!2441))))

(declare-fun b!318161 () Bool)

(declare-fun res!172896 () Bool)

(declare-fun e!197718 () Bool)

(assert (=> b!318161 (=> (not res!172896) (not e!197718))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!318161 (= res!172896 (and (= (select (arr!7674 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8026 a!3293))))))

(declare-fun b!318162 () Bool)

(declare-fun res!172897 () Bool)

(assert (=> b!318162 (=> (not res!172897) (not e!197715))))

(declare-fun arrayContainsKey!0 (array!16221 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318162 (= res!172897 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!318163 () Bool)

(assert (=> b!318163 (= e!197715 e!197718)))

(declare-fun res!172902 () Bool)

(assert (=> b!318163 (=> (not res!172902) (not e!197718))))

(declare-fun lt!155279 () SeekEntryResult!2825)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318163 (= res!172902 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155279))))

(assert (=> b!318163 (= lt!155279 (Intermediate!2825 false resIndex!52 resX!52))))

(declare-fun b!318164 () Bool)

(declare-fun res!172899 () Bool)

(assert (=> b!318164 (=> (not res!172899) (not e!197715))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16221 (_ BitVec 32)) SeekEntryResult!2825)

(assert (=> b!318164 (= res!172899 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2825 i!1240)))))

(declare-fun res!172900 () Bool)

(assert (=> start!31852 (=> (not res!172900) (not e!197715))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31852 (= res!172900 (validMask!0 mask!3709))))

(assert (=> start!31852 e!197715))

(declare-fun array_inv!5628 (array!16221) Bool)

(assert (=> start!31852 (array_inv!5628 a!3293)))

(assert (=> start!31852 true))

(declare-fun b!318165 () Bool)

(declare-fun e!197719 () Bool)

(assert (=> b!318165 (= e!197719 (not true))))

(assert (=> b!318165 e!197716))

(declare-fun res!172903 () Bool)

(assert (=> b!318165 (=> (not res!172903) (not e!197716))))

(declare-fun lt!155281 () SeekEntryResult!2825)

(assert (=> b!318165 (= res!172903 (= lt!155281 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155280 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318165 (= lt!155280 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!318166 () Bool)

(declare-fun res!172901 () Bool)

(assert (=> b!318166 (=> (not res!172901) (not e!197715))))

(assert (=> b!318166 (= res!172901 (and (= (size!8026 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8026 a!3293))))))

(declare-fun b!318167 () Bool)

(assert (=> b!318167 (= e!197718 e!197719)))

(declare-fun res!172905 () Bool)

(assert (=> b!318167 (=> (not res!172905) (not e!197719))))

(assert (=> b!318167 (= res!172905 (and (= lt!155281 lt!155279) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7674 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!318167 (= lt!155281 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!318168 () Bool)

(declare-fun res!172904 () Bool)

(assert (=> b!318168 (=> (not res!172904) (not e!197715))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16221 (_ BitVec 32)) Bool)

(assert (=> b!318168 (= res!172904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!31852 res!172900) b!318166))

(assert (= (and b!318166 res!172901) b!318160))

(assert (= (and b!318160 res!172898) b!318162))

(assert (= (and b!318162 res!172897) b!318164))

(assert (= (and b!318164 res!172899) b!318168))

(assert (= (and b!318168 res!172904) b!318163))

(assert (= (and b!318163 res!172902) b!318161))

(assert (= (and b!318161 res!172896) b!318167))

(assert (= (and b!318167 res!172905) b!318165))

(assert (= (and b!318165 res!172903) b!318159))

(declare-fun m!326897 () Bool)

(assert (=> b!318164 m!326897))

(declare-fun m!326899 () Bool)

(assert (=> b!318160 m!326899))

(declare-fun m!326901 () Bool)

(assert (=> b!318165 m!326901))

(declare-fun m!326903 () Bool)

(assert (=> b!318165 m!326903))

(declare-fun m!326905 () Bool)

(assert (=> b!318167 m!326905))

(declare-fun m!326907 () Bool)

(assert (=> b!318167 m!326907))

(declare-fun m!326909 () Bool)

(assert (=> b!318159 m!326909))

(declare-fun m!326911 () Bool)

(assert (=> b!318159 m!326911))

(declare-fun m!326913 () Bool)

(assert (=> b!318159 m!326913))

(declare-fun m!326915 () Bool)

(assert (=> b!318162 m!326915))

(declare-fun m!326917 () Bool)

(assert (=> start!31852 m!326917))

(declare-fun m!326919 () Bool)

(assert (=> start!31852 m!326919))

(declare-fun m!326921 () Bool)

(assert (=> b!318163 m!326921))

(assert (=> b!318163 m!326921))

(declare-fun m!326923 () Bool)

(assert (=> b!318163 m!326923))

(declare-fun m!326925 () Bool)

(assert (=> b!318161 m!326925))

(declare-fun m!326927 () Bool)

(assert (=> b!318168 m!326927))

(push 1)

(assert (not b!318160))

(assert (not b!318165))

