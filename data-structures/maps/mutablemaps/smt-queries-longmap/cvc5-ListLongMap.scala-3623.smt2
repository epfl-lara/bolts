; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49994 () Bool)

(assert start!49994)

(declare-fun b!547762 () Bool)

(declare-fun res!341325 () Bool)

(declare-fun e!316521 () Bool)

(assert (=> b!547762 (=> (not res!341325) (not e!316521))))

(declare-datatypes ((array!34530 0))(
  ( (array!34531 (arr!16581 (Array (_ BitVec 32) (_ BitVec 64))) (size!16945 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34530)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34530 (_ BitVec 32)) Bool)

(assert (=> b!547762 (= res!341325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!547763 () Bool)

(assert (=> b!547763 (= e!316521 false)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!249650 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!547763 (= lt!249650 (toIndex!0 (select (arr!16581 a!3118) j!142) mask!3119))))

(declare-fun b!547764 () Bool)

(declare-fun e!316520 () Bool)

(assert (=> b!547764 (= e!316520 e!316521)))

(declare-fun res!341323 () Bool)

(assert (=> b!547764 (=> (not res!341323) (not e!316521))))

(declare-datatypes ((SeekEntryResult!5037 0))(
  ( (MissingZero!5037 (index!22375 (_ BitVec 32))) (Found!5037 (index!22376 (_ BitVec 32))) (Intermediate!5037 (undefined!5849 Bool) (index!22377 (_ BitVec 32)) (x!51348 (_ BitVec 32))) (Undefined!5037) (MissingVacant!5037 (index!22378 (_ BitVec 32))) )
))
(declare-fun lt!249649 () SeekEntryResult!5037)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!547764 (= res!341323 (or (= lt!249649 (MissingZero!5037 i!1132)) (= lt!249649 (MissingVacant!5037 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34530 (_ BitVec 32)) SeekEntryResult!5037)

(assert (=> b!547764 (= lt!249649 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!547765 () Bool)

(declare-fun res!341327 () Bool)

(assert (=> b!547765 (=> (not res!341327) (not e!316520))))

(declare-fun arrayContainsKey!0 (array!34530 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547765 (= res!341327 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!547766 () Bool)

(declare-fun res!341324 () Bool)

(assert (=> b!547766 (=> (not res!341324) (not e!316520))))

(assert (=> b!547766 (= res!341324 (and (= (size!16945 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16945 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16945 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!547768 () Bool)

(declare-fun res!341326 () Bool)

(assert (=> b!547768 (=> (not res!341326) (not e!316520))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547768 (= res!341326 (validKeyInArray!0 k!1914))))

(declare-fun b!547769 () Bool)

(declare-fun res!341321 () Bool)

(assert (=> b!547769 (=> (not res!341321) (not e!316521))))

(declare-datatypes ((List!10714 0))(
  ( (Nil!10711) (Cons!10710 (h!11677 (_ BitVec 64)) (t!16950 List!10714)) )
))
(declare-fun arrayNoDuplicates!0 (array!34530 (_ BitVec 32) List!10714) Bool)

(assert (=> b!547769 (= res!341321 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10711))))

(declare-fun b!547767 () Bool)

(declare-fun res!341322 () Bool)

(assert (=> b!547767 (=> (not res!341322) (not e!316520))))

(assert (=> b!547767 (= res!341322 (validKeyInArray!0 (select (arr!16581 a!3118) j!142)))))

(declare-fun res!341320 () Bool)

(assert (=> start!49994 (=> (not res!341320) (not e!316520))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49994 (= res!341320 (validMask!0 mask!3119))))

(assert (=> start!49994 e!316520))

(assert (=> start!49994 true))

(declare-fun array_inv!12355 (array!34530) Bool)

(assert (=> start!49994 (array_inv!12355 a!3118)))

(assert (= (and start!49994 res!341320) b!547766))

(assert (= (and b!547766 res!341324) b!547767))

(assert (= (and b!547767 res!341322) b!547768))

(assert (= (and b!547768 res!341326) b!547765))

(assert (= (and b!547765 res!341327) b!547764))

(assert (= (and b!547764 res!341323) b!547762))

(assert (= (and b!547762 res!341325) b!547769))

(assert (= (and b!547769 res!341321) b!547763))

(declare-fun m!524929 () Bool)

(assert (=> start!49994 m!524929))

(declare-fun m!524931 () Bool)

(assert (=> start!49994 m!524931))

(declare-fun m!524933 () Bool)

(assert (=> b!547764 m!524933))

(declare-fun m!524935 () Bool)

(assert (=> b!547769 m!524935))

(declare-fun m!524937 () Bool)

(assert (=> b!547763 m!524937))

(assert (=> b!547763 m!524937))

(declare-fun m!524939 () Bool)

(assert (=> b!547763 m!524939))

(declare-fun m!524941 () Bool)

(assert (=> b!547765 m!524941))

(assert (=> b!547767 m!524937))

(assert (=> b!547767 m!524937))

(declare-fun m!524943 () Bool)

(assert (=> b!547767 m!524943))

(declare-fun m!524945 () Bool)

(assert (=> b!547768 m!524945))

(declare-fun m!524947 () Bool)

(assert (=> b!547762 m!524947))

(push 1)

