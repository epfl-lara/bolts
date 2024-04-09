; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44996 () Bool)

(assert start!44996)

(declare-fun b!493241 () Bool)

(declare-fun e!289675 () Bool)

(declare-fun e!289678 () Bool)

(assert (=> b!493241 (= e!289675 e!289678)))

(declare-fun res!295968 () Bool)

(assert (=> b!493241 (=> (not res!295968) (not e!289678))))

(declare-datatypes ((SeekEntryResult!3806 0))(
  ( (MissingZero!3806 (index!17403 (_ BitVec 32))) (Found!3806 (index!17404 (_ BitVec 32))) (Intermediate!3806 (undefined!4618 Bool) (index!17405 (_ BitVec 32)) (x!46511 (_ BitVec 32))) (Undefined!3806) (MissingVacant!3806 (index!17406 (_ BitVec 32))) )
))
(declare-fun lt!223131 () SeekEntryResult!3806)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!493241 (= res!295968 (or (= lt!223131 (MissingZero!3806 i!1204)) (= lt!223131 (MissingVacant!3806 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31901 0))(
  ( (array!31902 (arr!15332 (Array (_ BitVec 32) (_ BitVec 64))) (size!15696 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31901)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31901 (_ BitVec 32)) SeekEntryResult!3806)

(assert (=> b!493241 (= lt!223131 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!493242 () Bool)

(declare-fun res!295967 () Bool)

(assert (=> b!493242 (=> (not res!295967) (not e!289675))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!493242 (= res!295967 (and (= (size!15696 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15696 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15696 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493243 () Bool)

(declare-fun res!295961 () Bool)

(assert (=> b!493243 (=> (not res!295961) (not e!289675))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493243 (= res!295961 (validKeyInArray!0 k!2280))))

(declare-fun res!295962 () Bool)

(assert (=> start!44996 (=> (not res!295962) (not e!289675))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44996 (= res!295962 (validMask!0 mask!3524))))

(assert (=> start!44996 e!289675))

(assert (=> start!44996 true))

(declare-fun array_inv!11106 (array!31901) Bool)

(assert (=> start!44996 (array_inv!11106 a!3235)))

(declare-fun b!493244 () Bool)

(declare-fun e!289676 () Bool)

(assert (=> b!493244 (= e!289676 true)))

(declare-fun lt!223133 () SeekEntryResult!3806)

(assert (=> b!493244 (= lt!223133 Undefined!3806)))

(declare-fun b!493245 () Bool)

(declare-fun res!295966 () Bool)

(assert (=> b!493245 (=> (not res!295966) (not e!289678))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31901 (_ BitVec 32)) Bool)

(assert (=> b!493245 (= res!295966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493246 () Bool)

(declare-fun res!295969 () Bool)

(assert (=> b!493246 (=> (not res!295969) (not e!289675))))

(declare-fun arrayContainsKey!0 (array!31901 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493246 (= res!295969 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493247 () Bool)

(declare-fun res!295970 () Bool)

(assert (=> b!493247 (=> (not res!295970) (not e!289678))))

(declare-datatypes ((List!9543 0))(
  ( (Nil!9540) (Cons!9539 (h!10407 (_ BitVec 64)) (t!15779 List!9543)) )
))
(declare-fun arrayNoDuplicates!0 (array!31901 (_ BitVec 32) List!9543) Bool)

(assert (=> b!493247 (= res!295970 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9540))))

(declare-fun b!493248 () Bool)

(assert (=> b!493248 (= e!289678 (not e!289676))))

(declare-fun res!295963 () Bool)

(assert (=> b!493248 (=> res!295963 e!289676)))

(declare-fun lt!223132 () (_ BitVec 32))

(declare-fun lt!223136 () SeekEntryResult!3806)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31901 (_ BitVec 32)) SeekEntryResult!3806)

(assert (=> b!493248 (= res!295963 (= lt!223136 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223132 (select (store (arr!15332 a!3235) i!1204 k!2280) j!176) (array!31902 (store (arr!15332 a!3235) i!1204 k!2280) (size!15696 a!3235)) mask!3524)))))

(declare-fun lt!223135 () (_ BitVec 32))

(assert (=> b!493248 (= lt!223136 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223135 (select (arr!15332 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493248 (= lt!223132 (toIndex!0 (select (store (arr!15332 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493248 (= lt!223135 (toIndex!0 (select (arr!15332 a!3235) j!176) mask!3524))))

(assert (=> b!493248 (= lt!223133 (Found!3806 j!176))))

(assert (=> b!493248 (= lt!223133 (seekEntryOrOpen!0 (select (arr!15332 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!493248 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14550 0))(
  ( (Unit!14551) )
))
(declare-fun lt!223134 () Unit!14550)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31901 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14550)

(assert (=> b!493248 (= lt!223134 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493249 () Bool)

(declare-fun res!295964 () Bool)

(assert (=> b!493249 (=> (not res!295964) (not e!289675))))

(assert (=> b!493249 (= res!295964 (validKeyInArray!0 (select (arr!15332 a!3235) j!176)))))

(declare-fun b!493250 () Bool)

(declare-fun res!295965 () Bool)

(assert (=> b!493250 (=> res!295965 e!289676)))

(assert (=> b!493250 (= res!295965 (or (not (is-Intermediate!3806 lt!223136)) (not (undefined!4618 lt!223136))))))

(assert (= (and start!44996 res!295962) b!493242))

(assert (= (and b!493242 res!295967) b!493249))

(assert (= (and b!493249 res!295964) b!493243))

(assert (= (and b!493243 res!295961) b!493246))

(assert (= (and b!493246 res!295969) b!493241))

(assert (= (and b!493241 res!295968) b!493245))

(assert (= (and b!493245 res!295966) b!493247))

(assert (= (and b!493247 res!295970) b!493248))

(assert (= (and b!493248 (not res!295963)) b!493250))

(assert (= (and b!493250 (not res!295965)) b!493244))

(declare-fun m!474121 () Bool)

(assert (=> start!44996 m!474121))

(declare-fun m!474123 () Bool)

(assert (=> start!44996 m!474123))

(declare-fun m!474125 () Bool)

(assert (=> b!493241 m!474125))

(declare-fun m!474127 () Bool)

(assert (=> b!493246 m!474127))

(declare-fun m!474129 () Bool)

(assert (=> b!493248 m!474129))

(declare-fun m!474131 () Bool)

(assert (=> b!493248 m!474131))

(declare-fun m!474133 () Bool)

(assert (=> b!493248 m!474133))

(assert (=> b!493248 m!474133))

(declare-fun m!474135 () Bool)

(assert (=> b!493248 m!474135))

(declare-fun m!474137 () Bool)

(assert (=> b!493248 m!474137))

(declare-fun m!474139 () Bool)

(assert (=> b!493248 m!474139))

(assert (=> b!493248 m!474137))

(declare-fun m!474141 () Bool)

(assert (=> b!493248 m!474141))

(assert (=> b!493248 m!474133))

(declare-fun m!474143 () Bool)

(assert (=> b!493248 m!474143))

(assert (=> b!493248 m!474137))

(declare-fun m!474145 () Bool)

(assert (=> b!493248 m!474145))

(assert (=> b!493248 m!474137))

(declare-fun m!474147 () Bool)

(assert (=> b!493248 m!474147))

(assert (=> b!493249 m!474137))

(assert (=> b!493249 m!474137))

(declare-fun m!474149 () Bool)

(assert (=> b!493249 m!474149))

(declare-fun m!474151 () Bool)

(assert (=> b!493245 m!474151))

(declare-fun m!474153 () Bool)

(assert (=> b!493247 m!474153))

(declare-fun m!474155 () Bool)

(assert (=> b!493243 m!474155))

(push 1)

