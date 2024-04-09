; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32218 () Bool)

(assert start!32218)

(declare-fun b!320521 () Bool)

(declare-fun res!174803 () Bool)

(declare-fun e!198849 () Bool)

(assert (=> b!320521 (=> (not res!174803) (not e!198849))))

(declare-datatypes ((array!16404 0))(
  ( (array!16405 (arr!7758 (Array (_ BitVec 32) (_ BitVec 64))) (size!8110 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16404)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16404 (_ BitVec 32)) Bool)

(assert (=> b!320521 (= res!174803 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320522 () Bool)

(declare-fun res!174804 () Bool)

(assert (=> b!320522 (=> (not res!174804) (not e!198849))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2900 0))(
  ( (MissingZero!2900 (index!13776 (_ BitVec 32))) (Found!2900 (index!13777 (_ BitVec 32))) (Intermediate!2900 (undefined!3712 Bool) (index!13778 (_ BitVec 32)) (x!32010 (_ BitVec 32))) (Undefined!2900) (MissingVacant!2900 (index!13779 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16404 (_ BitVec 32)) SeekEntryResult!2900)

(assert (=> b!320522 (= res!174804 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2900 i!1250)))))

(declare-fun res!174802 () Bool)

(assert (=> start!32218 (=> (not res!174802) (not e!198849))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32218 (= res!174802 (validMask!0 mask!3777))))

(assert (=> start!32218 e!198849))

(assert (=> start!32218 true))

(declare-fun array_inv!5712 (array!16404) Bool)

(assert (=> start!32218 (array_inv!5712 a!3305)))

(declare-fun b!320523 () Bool)

(assert (=> b!320523 (= e!198849 false)))

(declare-fun lt!156071 () SeekEntryResult!2900)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16404 (_ BitVec 32)) SeekEntryResult!2900)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320523 (= lt!156071 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!320524 () Bool)

(declare-fun res!174801 () Bool)

(assert (=> b!320524 (=> (not res!174801) (not e!198849))))

(declare-fun arrayContainsKey!0 (array!16404 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320524 (= res!174801 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320525 () Bool)

(declare-fun res!174800 () Bool)

(assert (=> b!320525 (=> (not res!174800) (not e!198849))))

(assert (=> b!320525 (= res!174800 (and (= (size!8110 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8110 a!3305))))))

(declare-fun b!320526 () Bool)

(declare-fun res!174799 () Bool)

(assert (=> b!320526 (=> (not res!174799) (not e!198849))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320526 (= res!174799 (validKeyInArray!0 k!2497))))

(assert (= (and start!32218 res!174802) b!320525))

(assert (= (and b!320525 res!174800) b!320526))

(assert (= (and b!320526 res!174799) b!320524))

(assert (= (and b!320524 res!174801) b!320522))

(assert (= (and b!320522 res!174804) b!320521))

(assert (= (and b!320521 res!174803) b!320523))

(declare-fun m!328839 () Bool)

(assert (=> start!32218 m!328839))

(declare-fun m!328841 () Bool)

(assert (=> start!32218 m!328841))

(declare-fun m!328843 () Bool)

(assert (=> b!320523 m!328843))

(assert (=> b!320523 m!328843))

(declare-fun m!328845 () Bool)

(assert (=> b!320523 m!328845))

(declare-fun m!328847 () Bool)

(assert (=> b!320526 m!328847))

(declare-fun m!328849 () Bool)

(assert (=> b!320522 m!328849))

(declare-fun m!328851 () Bool)

(assert (=> b!320524 m!328851))

(declare-fun m!328853 () Bool)

(assert (=> b!320521 m!328853))

(push 1)

(assert (not b!320526))

(assert (not b!320523))

(assert (not b!320521))

(assert (not b!320522))

(assert (not b!320524))

(assert (not start!32218))

(check-sat)

(pop 1)

(push 1)

(check-sat)

