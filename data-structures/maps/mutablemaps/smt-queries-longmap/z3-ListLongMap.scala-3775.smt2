; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51724 () Bool)

(assert start!51724)

(declare-fun b!565388 () Bool)

(declare-fun res!356513 () Bool)

(declare-fun e!325512 () Bool)

(assert (=> b!565388 (=> (not res!356513) (not e!325512))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35486 0))(
  ( (array!35487 (arr!17038 (Array (_ BitVec 32) (_ BitVec 64))) (size!17402 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35486)

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5494 0))(
  ( (MissingZero!5494 (index!24203 (_ BitVec 32))) (Found!5494 (index!24204 (_ BitVec 32))) (Intermediate!5494 (undefined!6306 Bool) (index!24205 (_ BitVec 32)) (x!53102 (_ BitVec 32))) (Undefined!5494) (MissingVacant!5494 (index!24206 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35486 (_ BitVec 32)) SeekEntryResult!5494)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565388 (= res!356513 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17038 a!3118) j!142) mask!3119) (select (arr!17038 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17038 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17038 a!3118) i!1132 k0!1914) j!142) (array!35487 (store (arr!17038 a!3118) i!1132 k0!1914) (size!17402 a!3118)) mask!3119)))))

(declare-fun b!565389 () Bool)

(declare-fun res!356511 () Bool)

(declare-fun e!325510 () Bool)

(assert (=> b!565389 (=> (not res!356511) (not e!325510))))

(declare-fun arrayContainsKey!0 (array!35486 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565389 (= res!356511 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!356514 () Bool)

(assert (=> start!51724 (=> (not res!356514) (not e!325510))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51724 (= res!356514 (validMask!0 mask!3119))))

(assert (=> start!51724 e!325510))

(assert (=> start!51724 true))

(declare-fun array_inv!12812 (array!35486) Bool)

(assert (=> start!51724 (array_inv!12812 a!3118)))

(declare-fun b!565390 () Bool)

(declare-fun res!356510 () Bool)

(assert (=> b!565390 (=> (not res!356510) (not e!325510))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565390 (= res!356510 (validKeyInArray!0 (select (arr!17038 a!3118) j!142)))))

(declare-fun e!325513 () Bool)

(declare-fun b!565391 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35486 (_ BitVec 32)) SeekEntryResult!5494)

(assert (=> b!565391 (= e!325513 (= (seekEntryOrOpen!0 (select (arr!17038 a!3118) j!142) a!3118 mask!3119) (Found!5494 j!142)))))

(declare-fun b!565392 () Bool)

(declare-fun res!356507 () Bool)

(assert (=> b!565392 (=> (not res!356507) (not e!325512))))

(declare-datatypes ((List!11171 0))(
  ( (Nil!11168) (Cons!11167 (h!12173 (_ BitVec 64)) (t!17407 List!11171)) )
))
(declare-fun arrayNoDuplicates!0 (array!35486 (_ BitVec 32) List!11171) Bool)

(assert (=> b!565392 (= res!356507 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11168))))

(declare-fun b!565393 () Bool)

(assert (=> b!565393 (= e!325510 e!325512)))

(declare-fun res!356508 () Bool)

(assert (=> b!565393 (=> (not res!356508) (not e!325512))))

(declare-fun lt!257878 () SeekEntryResult!5494)

(assert (=> b!565393 (= res!356508 (or (= lt!257878 (MissingZero!5494 i!1132)) (= lt!257878 (MissingVacant!5494 i!1132))))))

(assert (=> b!565393 (= lt!257878 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!565394 () Bool)

(declare-fun res!356516 () Bool)

(assert (=> b!565394 (=> (not res!356516) (not e!325510))))

(assert (=> b!565394 (= res!356516 (validKeyInArray!0 k0!1914))))

(declare-fun b!565395 () Bool)

(declare-fun res!356509 () Bool)

(assert (=> b!565395 (=> (not res!356509) (not e!325512))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35486 (_ BitVec 32)) Bool)

(assert (=> b!565395 (= res!356509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565396 () Bool)

(assert (=> b!565396 (= e!325512 (not true))))

(assert (=> b!565396 e!325513))

(declare-fun res!356515 () Bool)

(assert (=> b!565396 (=> (not res!356515) (not e!325513))))

(assert (=> b!565396 (= res!356515 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17690 0))(
  ( (Unit!17691) )
))
(declare-fun lt!257879 () Unit!17690)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35486 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17690)

(assert (=> b!565396 (= lt!257879 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565397 () Bool)

(declare-fun res!356512 () Bool)

(assert (=> b!565397 (=> (not res!356512) (not e!325510))))

(assert (=> b!565397 (= res!356512 (and (= (size!17402 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17402 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17402 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51724 res!356514) b!565397))

(assert (= (and b!565397 res!356512) b!565390))

(assert (= (and b!565390 res!356510) b!565394))

(assert (= (and b!565394 res!356516) b!565389))

(assert (= (and b!565389 res!356511) b!565393))

(assert (= (and b!565393 res!356508) b!565395))

(assert (= (and b!565395 res!356509) b!565392))

(assert (= (and b!565392 res!356507) b!565388))

(assert (= (and b!565388 res!356513) b!565396))

(assert (= (and b!565396 res!356515) b!565391))

(declare-fun m!543913 () Bool)

(assert (=> b!565393 m!543913))

(declare-fun m!543915 () Bool)

(assert (=> b!565395 m!543915))

(declare-fun m!543917 () Bool)

(assert (=> b!565389 m!543917))

(declare-fun m!543919 () Bool)

(assert (=> start!51724 m!543919))

(declare-fun m!543921 () Bool)

(assert (=> start!51724 m!543921))

(declare-fun m!543923 () Bool)

(assert (=> b!565392 m!543923))

(declare-fun m!543925 () Bool)

(assert (=> b!565391 m!543925))

(assert (=> b!565391 m!543925))

(declare-fun m!543927 () Bool)

(assert (=> b!565391 m!543927))

(declare-fun m!543929 () Bool)

(assert (=> b!565396 m!543929))

(declare-fun m!543931 () Bool)

(assert (=> b!565396 m!543931))

(assert (=> b!565388 m!543925))

(declare-fun m!543933 () Bool)

(assert (=> b!565388 m!543933))

(assert (=> b!565388 m!543925))

(declare-fun m!543935 () Bool)

(assert (=> b!565388 m!543935))

(declare-fun m!543937 () Bool)

(assert (=> b!565388 m!543937))

(assert (=> b!565388 m!543935))

(declare-fun m!543939 () Bool)

(assert (=> b!565388 m!543939))

(assert (=> b!565388 m!543933))

(assert (=> b!565388 m!543925))

(declare-fun m!543941 () Bool)

(assert (=> b!565388 m!543941))

(declare-fun m!543943 () Bool)

(assert (=> b!565388 m!543943))

(assert (=> b!565388 m!543935))

(assert (=> b!565388 m!543937))

(assert (=> b!565390 m!543925))

(assert (=> b!565390 m!543925))

(declare-fun m!543945 () Bool)

(assert (=> b!565390 m!543945))

(declare-fun m!543947 () Bool)

(assert (=> b!565394 m!543947))

(check-sat (not b!565393) (not start!51724) (not b!565395) (not b!565389) (not b!565392) (not b!565390) (not b!565396) (not b!565388) (not b!565391) (not b!565394))
(check-sat)
