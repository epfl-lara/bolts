; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52978 () Bool)

(assert start!52978)

(declare-fun b!576785 () Bool)

(declare-fun e!331833 () Bool)

(declare-datatypes ((array!35963 0))(
  ( (array!35964 (arr!17257 (Array (_ BitVec 32) (_ BitVec 64))) (size!17621 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!35963)

(assert (=> b!576785 (= e!331833 (and (bvslt #b00000000000000000000000000000000 (size!17621 a!2986)) (bvsge (size!17621 a!2986) #b01111111111111111111111111111111)))))

(declare-fun res!364964 () Bool)

(assert (=> start!52978 (=> (not res!364964) (not e!331833))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52978 (= res!364964 (validMask!0 mask!3053))))

(assert (=> start!52978 e!331833))

(assert (=> start!52978 true))

(declare-fun array_inv!13031 (array!35963) Bool)

(assert (=> start!52978 (array_inv!13031 a!2986)))

(declare-fun b!576784 () Bool)

(declare-fun res!364967 () Bool)

(assert (=> b!576784 (=> (not res!364967) (not e!331833))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576784 (= res!364967 (validKeyInArray!0 k0!1786))))

(declare-fun b!576783 () Bool)

(declare-fun res!364966 () Bool)

(assert (=> b!576783 (=> (not res!364966) (not e!331833))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!576783 (= res!364966 (validKeyInArray!0 (select (arr!17257 a!2986) j!136)))))

(declare-fun b!576782 () Bool)

(declare-fun res!364965 () Bool)

(assert (=> b!576782 (=> (not res!364965) (not e!331833))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!576782 (= res!364965 (and (= (size!17621 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17621 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17621 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!52978 res!364964) b!576782))

(assert (= (and b!576782 res!364965) b!576783))

(assert (= (and b!576783 res!364966) b!576784))

(assert (= (and b!576784 res!364967) b!576785))

(declare-fun m!555761 () Bool)

(assert (=> start!52978 m!555761))

(declare-fun m!555763 () Bool)

(assert (=> start!52978 m!555763))

(declare-fun m!555765 () Bool)

(assert (=> b!576784 m!555765))

(declare-fun m!555767 () Bool)

(assert (=> b!576783 m!555767))

(assert (=> b!576783 m!555767))

(declare-fun m!555769 () Bool)

(assert (=> b!576783 m!555769))

(check-sat (not b!576784) (not b!576783) (not start!52978))
(check-sat)
(get-model)

(declare-fun d!85391 () Bool)

(assert (=> d!85391 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!576784 d!85391))

(declare-fun d!85393 () Bool)

(assert (=> d!85393 (= (validKeyInArray!0 (select (arr!17257 a!2986) j!136)) (and (not (= (select (arr!17257 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17257 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!576783 d!85393))

(declare-fun d!85395 () Bool)

(assert (=> d!85395 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!52978 d!85395))

(declare-fun d!85403 () Bool)

(assert (=> d!85403 (= (array_inv!13031 a!2986) (bvsge (size!17621 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!52978 d!85403))

(check-sat)
