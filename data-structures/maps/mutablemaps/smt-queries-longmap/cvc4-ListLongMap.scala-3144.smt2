; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44300 () Bool)

(assert start!44300)

(declare-fun b!486853 () Bool)

(declare-fun res!290390 () Bool)

(declare-fun e!286525 () Bool)

(assert (=> b!486853 (=> (not res!290390) (not e!286525))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31511 0))(
  ( (array!31512 (arr!15146 (Array (_ BitVec 32) (_ BitVec 64))) (size!15510 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31511)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!486853 (= res!290390 (and (= (size!15510 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15510 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15510 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486854 () Bool)

(declare-fun res!290392 () Bool)

(declare-fun e!286523 () Bool)

(assert (=> b!486854 (=> (not res!290392) (not e!286523))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31511 (_ BitVec 32)) Bool)

(assert (=> b!486854 (= res!290392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486855 () Bool)

(declare-fun res!290389 () Bool)

(assert (=> b!486855 (=> (not res!290389) (not e!286525))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31511 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486855 (= res!290389 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486857 () Bool)

(declare-fun res!290394 () Bool)

(assert (=> b!486857 (=> (not res!290394) (not e!286525))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486857 (= res!290394 (validKeyInArray!0 (select (arr!15146 a!3235) j!176)))))

(declare-fun b!486858 () Bool)

(declare-fun res!290395 () Bool)

(assert (=> b!486858 (=> (not res!290395) (not e!286525))))

(assert (=> b!486858 (= res!290395 (validKeyInArray!0 k!2280))))

(declare-fun b!486859 () Bool)

(declare-fun res!290391 () Bool)

(assert (=> b!486859 (=> (not res!290391) (not e!286523))))

(declare-datatypes ((List!9357 0))(
  ( (Nil!9354) (Cons!9353 (h!10209 (_ BitVec 64)) (t!15593 List!9357)) )
))
(declare-fun arrayNoDuplicates!0 (array!31511 (_ BitVec 32) List!9357) Bool)

(assert (=> b!486859 (= res!290391 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9354))))

(declare-fun b!486860 () Bool)

(assert (=> b!486860 (= e!286525 e!286523)))

(declare-fun res!290393 () Bool)

(assert (=> b!486860 (=> (not res!290393) (not e!286523))))

(declare-datatypes ((SeekEntryResult!3620 0))(
  ( (MissingZero!3620 (index!16659 (_ BitVec 32))) (Found!3620 (index!16660 (_ BitVec 32))) (Intermediate!3620 (undefined!4432 Bool) (index!16661 (_ BitVec 32)) (x!45811 (_ BitVec 32))) (Undefined!3620) (MissingVacant!3620 (index!16662 (_ BitVec 32))) )
))
(declare-fun lt!219889 () SeekEntryResult!3620)

(assert (=> b!486860 (= res!290393 (or (= lt!219889 (MissingZero!3620 i!1204)) (= lt!219889 (MissingVacant!3620 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31511 (_ BitVec 32)) SeekEntryResult!3620)

(assert (=> b!486860 (= lt!219889 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!486856 () Bool)

(assert (=> b!486856 (= e!286523 (not true))))

(assert (=> b!486856 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14178 0))(
  ( (Unit!14179) )
))
(declare-fun lt!219890 () Unit!14178)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31511 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14178)

(assert (=> b!486856 (= lt!219890 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!290396 () Bool)

(assert (=> start!44300 (=> (not res!290396) (not e!286525))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44300 (= res!290396 (validMask!0 mask!3524))))

(assert (=> start!44300 e!286525))

(assert (=> start!44300 true))

(declare-fun array_inv!10920 (array!31511) Bool)

(assert (=> start!44300 (array_inv!10920 a!3235)))

(assert (= (and start!44300 res!290396) b!486853))

(assert (= (and b!486853 res!290390) b!486857))

(assert (= (and b!486857 res!290394) b!486858))

(assert (= (and b!486858 res!290395) b!486855))

(assert (= (and b!486855 res!290389) b!486860))

(assert (= (and b!486860 res!290393) b!486854))

(assert (= (and b!486854 res!290392) b!486859))

(assert (= (and b!486859 res!290391) b!486856))

(declare-fun m!466743 () Bool)

(assert (=> b!486855 m!466743))

(declare-fun m!466745 () Bool)

(assert (=> b!486854 m!466745))

(declare-fun m!466747 () Bool)

(assert (=> b!486856 m!466747))

(declare-fun m!466749 () Bool)

(assert (=> b!486856 m!466749))

(declare-fun m!466751 () Bool)

(assert (=> b!486857 m!466751))

(assert (=> b!486857 m!466751))

(declare-fun m!466753 () Bool)

(assert (=> b!486857 m!466753))

(declare-fun m!466755 () Bool)

(assert (=> b!486858 m!466755))

(declare-fun m!466757 () Bool)

(assert (=> b!486859 m!466757))

(declare-fun m!466759 () Bool)

(assert (=> start!44300 m!466759))

(declare-fun m!466761 () Bool)

(assert (=> start!44300 m!466761))

(declare-fun m!466763 () Bool)

(assert (=> b!486860 m!466763))

(push 1)

