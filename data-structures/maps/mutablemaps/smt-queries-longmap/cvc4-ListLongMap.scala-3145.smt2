; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44306 () Bool)

(assert start!44306)

(declare-fun b!486925 () Bool)

(declare-fun res!290462 () Bool)

(declare-fun e!286550 () Bool)

(assert (=> b!486925 (=> (not res!290462) (not e!286550))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486925 (= res!290462 (validKeyInArray!0 k!2280))))

(declare-fun b!486926 () Bool)

(declare-fun res!290468 () Bool)

(declare-fun e!286551 () Bool)

(assert (=> b!486926 (=> (not res!290468) (not e!286551))))

(declare-datatypes ((array!31517 0))(
  ( (array!31518 (arr!15149 (Array (_ BitVec 32) (_ BitVec 64))) (size!15513 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31517)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31517 (_ BitVec 32)) Bool)

(assert (=> b!486926 (= res!290468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486928 () Bool)

(declare-fun res!290465 () Bool)

(assert (=> b!486928 (=> (not res!290465) (not e!286550))))

(declare-fun arrayContainsKey!0 (array!31517 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486928 (= res!290465 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486929 () Bool)

(assert (=> b!486929 (= e!286550 e!286551)))

(declare-fun res!290463 () Bool)

(assert (=> b!486929 (=> (not res!290463) (not e!286551))))

(declare-datatypes ((SeekEntryResult!3623 0))(
  ( (MissingZero!3623 (index!16671 (_ BitVec 32))) (Found!3623 (index!16672 (_ BitVec 32))) (Intermediate!3623 (undefined!4435 Bool) (index!16673 (_ BitVec 32)) (x!45822 (_ BitVec 32))) (Undefined!3623) (MissingVacant!3623 (index!16674 (_ BitVec 32))) )
))
(declare-fun lt!219907 () SeekEntryResult!3623)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!486929 (= res!290463 (or (= lt!219907 (MissingZero!3623 i!1204)) (= lt!219907 (MissingVacant!3623 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31517 (_ BitVec 32)) SeekEntryResult!3623)

(assert (=> b!486929 (= lt!219907 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!486930 () Bool)

(declare-fun res!290466 () Bool)

(assert (=> b!486930 (=> (not res!290466) (not e!286551))))

(declare-datatypes ((List!9360 0))(
  ( (Nil!9357) (Cons!9356 (h!10212 (_ BitVec 64)) (t!15596 List!9360)) )
))
(declare-fun arrayNoDuplicates!0 (array!31517 (_ BitVec 32) List!9360) Bool)

(assert (=> b!486930 (= res!290466 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9357))))

(declare-fun b!486927 () Bool)

(declare-fun res!290467 () Bool)

(assert (=> b!486927 (=> (not res!290467) (not e!286550))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!486927 (= res!290467 (and (= (size!15513 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15513 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15513 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!290461 () Bool)

(assert (=> start!44306 (=> (not res!290461) (not e!286550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44306 (= res!290461 (validMask!0 mask!3524))))

(assert (=> start!44306 e!286550))

(assert (=> start!44306 true))

(declare-fun array_inv!10923 (array!31517) Bool)

(assert (=> start!44306 (array_inv!10923 a!3235)))

(declare-fun b!486931 () Bool)

(assert (=> b!486931 (= e!286551 (not (bvsge mask!3524 #b00000000000000000000000000000000)))))

(assert (=> b!486931 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14184 0))(
  ( (Unit!14185) )
))
(declare-fun lt!219908 () Unit!14184)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31517 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14184)

(assert (=> b!486931 (= lt!219908 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!486932 () Bool)

(declare-fun res!290464 () Bool)

(assert (=> b!486932 (=> (not res!290464) (not e!286550))))

(assert (=> b!486932 (= res!290464 (validKeyInArray!0 (select (arr!15149 a!3235) j!176)))))

(assert (= (and start!44306 res!290461) b!486927))

(assert (= (and b!486927 res!290467) b!486932))

(assert (= (and b!486932 res!290464) b!486925))

(assert (= (and b!486925 res!290462) b!486928))

(assert (= (and b!486928 res!290465) b!486929))

(assert (= (and b!486929 res!290463) b!486926))

(assert (= (and b!486926 res!290468) b!486930))

(assert (= (and b!486930 res!290466) b!486931))

(declare-fun m!466809 () Bool)

(assert (=> b!486925 m!466809))

(declare-fun m!466811 () Bool)

(assert (=> b!486929 m!466811))

(declare-fun m!466813 () Bool)

(assert (=> b!486928 m!466813))

(declare-fun m!466815 () Bool)

(assert (=> b!486926 m!466815))

(declare-fun m!466817 () Bool)

(assert (=> b!486932 m!466817))

(assert (=> b!486932 m!466817))

(declare-fun m!466819 () Bool)

(assert (=> b!486932 m!466819))

(declare-fun m!466821 () Bool)

(assert (=> start!44306 m!466821))

(declare-fun m!466823 () Bool)

(assert (=> start!44306 m!466823))

(declare-fun m!466825 () Bool)

(assert (=> b!486931 m!466825))

(declare-fun m!466827 () Bool)

(assert (=> b!486931 m!466827))

(declare-fun m!466829 () Bool)

(assert (=> b!486930 m!466829))

(push 1)

(assert (not start!44306))

(assert (not b!486930))

(assert (not b!486928))

(assert (not b!486929))

(assert (not b!486932))

(assert (not b!486926))

(assert (not b!486925))

(assert (not b!486931))

