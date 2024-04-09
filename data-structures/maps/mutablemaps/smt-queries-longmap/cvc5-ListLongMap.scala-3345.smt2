; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46072 () Bool)

(assert start!46072)

(declare-fun res!310939 () Bool)

(declare-fun e!298126 () Bool)

(assert (=> start!46072 (=> (not res!310939) (not e!298126))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46072 (= res!310939 (validMask!0 mask!3524))))

(assert (=> start!46072 e!298126))

(assert (=> start!46072 true))

(declare-datatypes ((array!32743 0))(
  ( (array!32744 (arr!15747 (Array (_ BitVec 32) (_ BitVec 64))) (size!16111 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32743)

(declare-fun array_inv!11521 (array!32743) Bool)

(assert (=> start!46072 (array_inv!11521 a!3235)))

(declare-fun b!509940 () Bool)

(declare-fun res!310943 () Bool)

(assert (=> b!509940 (=> (not res!310943) (not e!298126))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509940 (= res!310943 (validKeyInArray!0 (select (arr!15747 a!3235) j!176)))))

(declare-fun b!509941 () Bool)

(declare-fun res!310940 () Bool)

(assert (=> b!509941 (=> (not res!310940) (not e!298126))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32743 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509941 (= res!310940 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509942 () Bool)

(declare-fun e!298124 () Bool)

(assert (=> b!509942 (= e!298126 e!298124)))

(declare-fun res!310938 () Bool)

(assert (=> b!509942 (=> (not res!310938) (not e!298124))))

(declare-datatypes ((SeekEntryResult!4221 0))(
  ( (MissingZero!4221 (index!19072 (_ BitVec 32))) (Found!4221 (index!19073 (_ BitVec 32))) (Intermediate!4221 (undefined!5033 Bool) (index!19074 (_ BitVec 32)) (x!48065 (_ BitVec 32))) (Undefined!4221) (MissingVacant!4221 (index!19075 (_ BitVec 32))) )
))
(declare-fun lt!233142 () SeekEntryResult!4221)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!509942 (= res!310938 (or (= lt!233142 (MissingZero!4221 i!1204)) (= lt!233142 (MissingVacant!4221 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32743 (_ BitVec 32)) SeekEntryResult!4221)

(assert (=> b!509942 (= lt!233142 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!509943 () Bool)

(declare-fun res!310936 () Bool)

(assert (=> b!509943 (=> (not res!310936) (not e!298124))))

(declare-datatypes ((List!9958 0))(
  ( (Nil!9955) (Cons!9954 (h!10831 (_ BitVec 64)) (t!16194 List!9958)) )
))
(declare-fun arrayNoDuplicates!0 (array!32743 (_ BitVec 32) List!9958) Bool)

(assert (=> b!509943 (= res!310936 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9955))))

(declare-fun b!509944 () Bool)

(declare-fun res!310937 () Bool)

(assert (=> b!509944 (=> (not res!310937) (not e!298126))))

(assert (=> b!509944 (= res!310937 (validKeyInArray!0 k!2280))))

(declare-fun b!509945 () Bool)

(declare-fun e!298123 () Bool)

(assert (=> b!509945 (= e!298123 true)))

(declare-fun lt!233144 () (_ BitVec 64))

(declare-fun lt!233147 () SeekEntryResult!4221)

(declare-fun lt!233146 () array!32743)

(assert (=> b!509945 (= lt!233147 (seekEntryOrOpen!0 lt!233144 lt!233146 mask!3524))))

(declare-datatypes ((Unit!15692 0))(
  ( (Unit!15693) )
))
(declare-fun lt!233145 () Unit!15692)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32743 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15692)

(assert (=> b!509945 (= lt!233145 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!509946 () Bool)

(declare-fun res!310935 () Bool)

(assert (=> b!509946 (=> (not res!310935) (not e!298124))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32743 (_ BitVec 32)) Bool)

(assert (=> b!509946 (= res!310935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509947 () Bool)

(declare-fun res!310941 () Bool)

(assert (=> b!509947 (=> (not res!310941) (not e!298126))))

(assert (=> b!509947 (= res!310941 (and (= (size!16111 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16111 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16111 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509948 () Bool)

(assert (=> b!509948 (= e!298124 (not e!298123))))

(declare-fun res!310942 () Bool)

(assert (=> b!509948 (=> res!310942 e!298123)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32743 (_ BitVec 32)) SeekEntryResult!4221)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509948 (= res!310942 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15747 a!3235) j!176) mask!3524) (select (arr!15747 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233144 mask!3524) lt!233144 lt!233146 mask!3524))))))

(assert (=> b!509948 (= lt!233144 (select (store (arr!15747 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!509948 (= lt!233146 (array!32744 (store (arr!15747 a!3235) i!1204 k!2280) (size!16111 a!3235)))))

(assert (=> b!509948 (= lt!233147 (Found!4221 j!176))))

(assert (=> b!509948 (= lt!233147 (seekEntryOrOpen!0 (select (arr!15747 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!509948 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!233143 () Unit!15692)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32743 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15692)

(assert (=> b!509948 (= lt!233143 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46072 res!310939) b!509947))

(assert (= (and b!509947 res!310941) b!509940))

(assert (= (and b!509940 res!310943) b!509944))

(assert (= (and b!509944 res!310937) b!509941))

(assert (= (and b!509941 res!310940) b!509942))

(assert (= (and b!509942 res!310938) b!509946))

(assert (= (and b!509946 res!310935) b!509943))

(assert (= (and b!509943 res!310936) b!509948))

(assert (= (and b!509948 (not res!310942)) b!509945))

(declare-fun m!491095 () Bool)

(assert (=> b!509946 m!491095))

(declare-fun m!491097 () Bool)

(assert (=> start!46072 m!491097))

(declare-fun m!491099 () Bool)

(assert (=> start!46072 m!491099))

(declare-fun m!491101 () Bool)

(assert (=> b!509940 m!491101))

(assert (=> b!509940 m!491101))

(declare-fun m!491103 () Bool)

(assert (=> b!509940 m!491103))

(declare-fun m!491105 () Bool)

(assert (=> b!509944 m!491105))

(declare-fun m!491107 () Bool)

(assert (=> b!509942 m!491107))

(declare-fun m!491109 () Bool)

(assert (=> b!509941 m!491109))

(declare-fun m!491111 () Bool)

(assert (=> b!509943 m!491111))

(declare-fun m!491113 () Bool)

(assert (=> b!509945 m!491113))

(declare-fun m!491115 () Bool)

(assert (=> b!509945 m!491115))

(declare-fun m!491117 () Bool)

(assert (=> b!509948 m!491117))

(declare-fun m!491119 () Bool)

(assert (=> b!509948 m!491119))

(declare-fun m!491121 () Bool)

(assert (=> b!509948 m!491121))

(declare-fun m!491123 () Bool)

(assert (=> b!509948 m!491123))

(declare-fun m!491125 () Bool)

(assert (=> b!509948 m!491125))

(declare-fun m!491127 () Bool)

(assert (=> b!509948 m!491127))

(assert (=> b!509948 m!491101))

(declare-fun m!491129 () Bool)

(assert (=> b!509948 m!491129))

(assert (=> b!509948 m!491101))

(assert (=> b!509948 m!491127))

(assert (=> b!509948 m!491101))

(declare-fun m!491131 () Bool)

(assert (=> b!509948 m!491131))

(assert (=> b!509948 m!491101))

(declare-fun m!491133 () Bool)

(assert (=> b!509948 m!491133))

(assert (=> b!509948 m!491117))

(push 1)

