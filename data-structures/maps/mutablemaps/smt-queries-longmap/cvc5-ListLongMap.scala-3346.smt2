; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46078 () Bool)

(assert start!46078)

(declare-fun b!510021 () Bool)

(declare-fun e!298160 () Bool)

(declare-fun e!298162 () Bool)

(assert (=> b!510021 (= e!298160 (not e!298162))))

(declare-fun res!311017 () Bool)

(assert (=> b!510021 (=> res!311017 e!298162)))

(declare-datatypes ((array!32749 0))(
  ( (array!32750 (arr!15750 (Array (_ BitVec 32) (_ BitVec 64))) (size!16114 (_ BitVec 32))) )
))
(declare-fun lt!233198 () array!32749)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!233201 () (_ BitVec 64))

(declare-fun a!3235 () array!32749)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4224 0))(
  ( (MissingZero!4224 (index!19084 (_ BitVec 32))) (Found!4224 (index!19085 (_ BitVec 32))) (Intermediate!4224 (undefined!5036 Bool) (index!19086 (_ BitVec 32)) (x!48076 (_ BitVec 32))) (Undefined!4224) (MissingVacant!4224 (index!19087 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32749 (_ BitVec 32)) SeekEntryResult!4224)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510021 (= res!311017 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15750 a!3235) j!176) mask!3524) (select (arr!15750 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233201 mask!3524) lt!233201 lt!233198 mask!3524))))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!510021 (= lt!233201 (select (store (arr!15750 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!510021 (= lt!233198 (array!32750 (store (arr!15750 a!3235) i!1204 k!2280) (size!16114 a!3235)))))

(declare-fun lt!233197 () SeekEntryResult!4224)

(assert (=> b!510021 (= lt!233197 (Found!4224 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32749 (_ BitVec 32)) SeekEntryResult!4224)

(assert (=> b!510021 (= lt!233197 (seekEntryOrOpen!0 (select (arr!15750 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32749 (_ BitVec 32)) Bool)

(assert (=> b!510021 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15698 0))(
  ( (Unit!15699) )
))
(declare-fun lt!233196 () Unit!15698)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32749 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15698)

(assert (=> b!510021 (= lt!233196 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510022 () Bool)

(declare-fun res!311023 () Bool)

(declare-fun e!298159 () Bool)

(assert (=> b!510022 (=> (not res!311023) (not e!298159))))

(assert (=> b!510022 (= res!311023 (and (= (size!16114 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16114 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16114 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510023 () Bool)

(assert (=> b!510023 (= e!298162 true)))

(assert (=> b!510023 (= lt!233197 (seekEntryOrOpen!0 lt!233201 lt!233198 mask!3524))))

(declare-fun lt!233199 () Unit!15698)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32749 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15698)

(assert (=> b!510023 (= lt!233199 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!510024 () Bool)

(declare-fun res!311022 () Bool)

(assert (=> b!510024 (=> (not res!311022) (not e!298159))))

(declare-fun arrayContainsKey!0 (array!32749 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510024 (= res!311022 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510025 () Bool)

(declare-fun res!311019 () Bool)

(assert (=> b!510025 (=> (not res!311019) (not e!298160))))

(declare-datatypes ((List!9961 0))(
  ( (Nil!9958) (Cons!9957 (h!10834 (_ BitVec 64)) (t!16197 List!9961)) )
))
(declare-fun arrayNoDuplicates!0 (array!32749 (_ BitVec 32) List!9961) Bool)

(assert (=> b!510025 (= res!311019 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9958))))

(declare-fun b!510026 () Bool)

(assert (=> b!510026 (= e!298159 e!298160)))

(declare-fun res!311020 () Bool)

(assert (=> b!510026 (=> (not res!311020) (not e!298160))))

(declare-fun lt!233200 () SeekEntryResult!4224)

(assert (=> b!510026 (= res!311020 (or (= lt!233200 (MissingZero!4224 i!1204)) (= lt!233200 (MissingVacant!4224 i!1204))))))

(assert (=> b!510026 (= lt!233200 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!510027 () Bool)

(declare-fun res!311024 () Bool)

(assert (=> b!510027 (=> (not res!311024) (not e!298159))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510027 (= res!311024 (validKeyInArray!0 k!2280))))

(declare-fun res!311018 () Bool)

(assert (=> start!46078 (=> (not res!311018) (not e!298159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46078 (= res!311018 (validMask!0 mask!3524))))

(assert (=> start!46078 e!298159))

(assert (=> start!46078 true))

(declare-fun array_inv!11524 (array!32749) Bool)

(assert (=> start!46078 (array_inv!11524 a!3235)))

(declare-fun b!510028 () Bool)

(declare-fun res!311021 () Bool)

(assert (=> b!510028 (=> (not res!311021) (not e!298159))))

(assert (=> b!510028 (= res!311021 (validKeyInArray!0 (select (arr!15750 a!3235) j!176)))))

(declare-fun b!510029 () Bool)

(declare-fun res!311016 () Bool)

(assert (=> b!510029 (=> (not res!311016) (not e!298160))))

(assert (=> b!510029 (= res!311016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!46078 res!311018) b!510022))

(assert (= (and b!510022 res!311023) b!510028))

(assert (= (and b!510028 res!311021) b!510027))

(assert (= (and b!510027 res!311024) b!510024))

(assert (= (and b!510024 res!311022) b!510026))

(assert (= (and b!510026 res!311020) b!510029))

(assert (= (and b!510029 res!311016) b!510025))

(assert (= (and b!510025 res!311019) b!510021))

(assert (= (and b!510021 (not res!311017)) b!510023))

(declare-fun m!491215 () Bool)

(assert (=> b!510023 m!491215))

(declare-fun m!491217 () Bool)

(assert (=> b!510023 m!491217))

(declare-fun m!491219 () Bool)

(assert (=> b!510028 m!491219))

(assert (=> b!510028 m!491219))

(declare-fun m!491221 () Bool)

(assert (=> b!510028 m!491221))

(declare-fun m!491223 () Bool)

(assert (=> b!510021 m!491223))

(declare-fun m!491225 () Bool)

(assert (=> b!510021 m!491225))

(declare-fun m!491227 () Bool)

(assert (=> b!510021 m!491227))

(declare-fun m!491229 () Bool)

(assert (=> b!510021 m!491229))

(declare-fun m!491231 () Bool)

(assert (=> b!510021 m!491231))

(assert (=> b!510021 m!491219))

(declare-fun m!491233 () Bool)

(assert (=> b!510021 m!491233))

(assert (=> b!510021 m!491225))

(declare-fun m!491235 () Bool)

(assert (=> b!510021 m!491235))

(assert (=> b!510021 m!491219))

(assert (=> b!510021 m!491231))

(assert (=> b!510021 m!491219))

(declare-fun m!491237 () Bool)

(assert (=> b!510021 m!491237))

(assert (=> b!510021 m!491219))

(declare-fun m!491239 () Bool)

(assert (=> b!510021 m!491239))

(declare-fun m!491241 () Bool)

(assert (=> b!510029 m!491241))

(declare-fun m!491243 () Bool)

(assert (=> b!510027 m!491243))

(declare-fun m!491245 () Bool)

(assert (=> b!510024 m!491245))

(declare-fun m!491247 () Bool)

(assert (=> b!510025 m!491247))

(declare-fun m!491249 () Bool)

(assert (=> b!510026 m!491249))

(declare-fun m!491251 () Bool)

(assert (=> start!46078 m!491251))

(declare-fun m!491253 () Bool)

(assert (=> start!46078 m!491253))

(push 1)

