; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53060 () Bool)

(assert start!53060)

(declare-fun b!577331 () Bool)

(declare-fun res!365513 () Bool)

(declare-fun e!332054 () Bool)

(assert (=> b!577331 (=> (not res!365513) (not e!332054))))

(declare-datatypes ((array!36032 0))(
  ( (array!36033 (arr!17291 (Array (_ BitVec 32) (_ BitVec 64))) (size!17655 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36032)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577331 (= res!365513 (validKeyInArray!0 (select (arr!17291 a!2986) j!136)))))

(declare-fun b!577333 () Bool)

(declare-fun e!332055 () Bool)

(assert (=> b!577333 (= e!332055 (and (bvsle #b00000000000000000000000000000000 (size!17655 a!2986)) (bvsge (size!17655 a!2986) #b01111111111111111111111111111111)))))

(declare-fun b!577334 () Bool)

(declare-fun res!365514 () Bool)

(assert (=> b!577334 (=> (not res!365514) (not e!332054))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!577334 (= res!365514 (validKeyInArray!0 k!1786))))

(declare-fun b!577335 () Bool)

(assert (=> b!577335 (= e!332054 e!332055)))

(declare-fun res!365517 () Bool)

(assert (=> b!577335 (=> (not res!365517) (not e!332055))))

(declare-datatypes ((SeekEntryResult!5738 0))(
  ( (MissingZero!5738 (index!25179 (_ BitVec 32))) (Found!5738 (index!25180 (_ BitVec 32))) (Intermediate!5738 (undefined!6550 Bool) (index!25181 (_ BitVec 32)) (x!54114 (_ BitVec 32))) (Undefined!5738) (MissingVacant!5738 (index!25182 (_ BitVec 32))) )
))
(declare-fun lt!263939 () SeekEntryResult!5738)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577335 (= res!365517 (or (= lt!263939 (MissingZero!5738 i!1108)) (= lt!263939 (MissingVacant!5738 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36032 (_ BitVec 32)) SeekEntryResult!5738)

(assert (=> b!577335 (= lt!263939 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!577336 () Bool)

(declare-fun res!365519 () Bool)

(assert (=> b!577336 (=> (not res!365519) (not e!332055))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36032 (_ BitVec 32)) Bool)

(assert (=> b!577336 (= res!365519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!577337 () Bool)

(declare-fun res!365515 () Bool)

(assert (=> b!577337 (=> (not res!365515) (not e!332054))))

(declare-fun arrayContainsKey!0 (array!36032 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577337 (= res!365515 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!577332 () Bool)

(declare-fun res!365518 () Bool)

(assert (=> b!577332 (=> (not res!365518) (not e!332054))))

(assert (=> b!577332 (= res!365518 (and (= (size!17655 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17655 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17655 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!365516 () Bool)

(assert (=> start!53060 (=> (not res!365516) (not e!332054))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53060 (= res!365516 (validMask!0 mask!3053))))

(assert (=> start!53060 e!332054))

(assert (=> start!53060 true))

(declare-fun array_inv!13065 (array!36032) Bool)

(assert (=> start!53060 (array_inv!13065 a!2986)))

(assert (= (and start!53060 res!365516) b!577332))

(assert (= (and b!577332 res!365518) b!577331))

(assert (= (and b!577331 res!365513) b!577334))

(assert (= (and b!577334 res!365514) b!577337))

(assert (= (and b!577337 res!365515) b!577335))

(assert (= (and b!577335 res!365517) b!577336))

(assert (= (and b!577336 res!365519) b!577333))

(declare-fun m!556233 () Bool)

(assert (=> b!577331 m!556233))

(assert (=> b!577331 m!556233))

(declare-fun m!556235 () Bool)

(assert (=> b!577331 m!556235))

(declare-fun m!556237 () Bool)

(assert (=> b!577335 m!556237))

(declare-fun m!556239 () Bool)

(assert (=> b!577337 m!556239))

(declare-fun m!556241 () Bool)

(assert (=> b!577334 m!556241))

(declare-fun m!556243 () Bool)

(assert (=> b!577336 m!556243))

(declare-fun m!556245 () Bool)

(assert (=> start!53060 m!556245))

(declare-fun m!556247 () Bool)

(assert (=> start!53060 m!556247))

(push 1)

(assert (not b!577335))

(assert (not b!577337))

(assert (not b!577331))

(assert (not start!53060))

(assert (not b!577334))

(assert (not b!577336))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!577398 () Bool)

(declare-fun c!66301 () Bool)

(declare-fun lt!263971 () (_ BitVec 64))

(assert (=> b!577398 (= c!66301 (= lt!263971 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!332093 () SeekEntryResult!5738)

(declare-fun e!332095 () SeekEntryResult!5738)

(assert (=> b!577398 (= e!332093 e!332095)))

(declare-fun b!577399 () Bool)

(declare-fun lt!263970 () SeekEntryResult!5738)

(assert (=> b!577399 (= e!332095 (MissingZero!5738 (index!25181 lt!263970)))))

(declare-fun b!577401 () Bool)

(declare-fun e!332094 () SeekEntryResult!5738)

(assert (=> b!577401 (= e!332094 Undefined!5738)))

(declare-fun b!577402 () Bool)

(assert (=> b!577402 (= e!332093 (Found!5738 (index!25181 lt!263970)))))

(declare-fun b!577403 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36032 (_ BitVec 32)) SeekEntryResult!5738)

(assert (=> b!577403 (= e!332095 (seekKeyOrZeroReturnVacant!0 (x!54114 lt!263970) (index!25181 lt!263970) (index!25181 lt!263970) k!1786 a!2986 mask!3053))))

(declare-fun b!577400 () Bool)

(assert (=> b!577400 (= e!332094 e!332093)))

(assert (=> b!577400 (= lt!263971 (select (arr!17291 a!2986) (index!25181 lt!263970)))))

(declare-fun c!66300 () Bool)

(assert (=> b!577400 (= c!66300 (= lt!263971 k!1786))))

(declare-fun d!85443 () Bool)

(declare-fun lt!263972 () SeekEntryResult!5738)

(assert (=> d!85443 (and (or (is-Undefined!5738 lt!263972) (not (is-Found!5738 lt!263972)) (and (bvsge (index!25180 lt!263972) #b00000000000000000000000000000000) (bvslt (index!25180 lt!263972) (size!17655 a!2986)))) (or (is-Undefined!5738 lt!263972) (is-Found!5738 lt!263972) (not (is-MissingZero!5738 lt!263972)) (and (bvsge (index!25179 lt!263972) #b00000000000000000000000000000000) (bvslt (index!25179 lt!263972) (size!17655 a!2986)))) (or (is-Undefined!5738 lt!263972) (is-Found!5738 lt!263972) (is-MissingZero!5738 lt!263972) (not (is-MissingVacant!5738 lt!263972)) (and (bvsge (index!25182 lt!263972) #b00000000000000000000000000000000) (bvslt (index!25182 lt!263972) (size!17655 a!2986)))) (or (is-Undefined!5738 lt!263972) (ite (is-Found!5738 lt!263972) (= (select (arr!17291 a!2986) (index!25180 lt!263972)) k!1786) (ite (is-MissingZero!5738 lt!263972) (= (select (arr!17291 a!2986) (index!25179 lt!263972)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5738 lt!263972) (= (select (arr!17291 a!2986) (index!25182 lt!263972)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!85443 (= lt!263972 e!332094)))

(declare-fun c!66302 () Bool)

(assert (=> d!85443 (= c!66302 (and (is-Intermediate!5738 lt!263970) (undefined!6550 lt!263970)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36032 (_ BitVec 32)) SeekEntryResult!5738)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!85443 (= lt!263970 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!85443 (validMask!0 mask!3053)))

(assert (=> d!85443 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!263972)))

