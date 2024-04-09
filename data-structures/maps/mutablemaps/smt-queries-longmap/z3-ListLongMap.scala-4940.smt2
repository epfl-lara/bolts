; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68034 () Bool)

(assert start!68034)

(declare-fun b!791409 () Bool)

(declare-fun e!439833 () Bool)

(declare-datatypes ((array!42903 0))(
  ( (array!42904 (arr!20533 (Array (_ BitVec 32) (_ BitVec 64))) (size!20954 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42903)

(assert (=> b!791409 (= e!439833 (and (bvslt #b00000000000000000000000000000000 (size!20954 a!3170)) (bvsge (size!20954 a!3170) #b01111111111111111111111111111111)))))

(declare-fun b!791406 () Bool)

(declare-fun res!536311 () Bool)

(assert (=> b!791406 (=> (not res!536311) (not e!439833))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!791406 (= res!536311 (and (= (size!20954 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20954 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20954 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791408 () Bool)

(declare-fun res!536314 () Bool)

(assert (=> b!791408 (=> (not res!536314) (not e!439833))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791408 (= res!536314 (validKeyInArray!0 k0!2044))))

(declare-fun res!536313 () Bool)

(assert (=> start!68034 (=> (not res!536313) (not e!439833))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68034 (= res!536313 (validMask!0 mask!3266))))

(assert (=> start!68034 e!439833))

(assert (=> start!68034 true))

(declare-fun array_inv!16307 (array!42903) Bool)

(assert (=> start!68034 (array_inv!16307 a!3170)))

(declare-fun b!791407 () Bool)

(declare-fun res!536312 () Bool)

(assert (=> b!791407 (=> (not res!536312) (not e!439833))))

(assert (=> b!791407 (= res!536312 (validKeyInArray!0 (select (arr!20533 a!3170) j!153)))))

(assert (= (and start!68034 res!536313) b!791406))

(assert (= (and b!791406 res!536311) b!791407))

(assert (= (and b!791407 res!536312) b!791408))

(assert (= (and b!791408 res!536314) b!791409))

(declare-fun m!732233 () Bool)

(assert (=> b!791408 m!732233))

(declare-fun m!732235 () Bool)

(assert (=> start!68034 m!732235))

(declare-fun m!732237 () Bool)

(assert (=> start!68034 m!732237))

(declare-fun m!732239 () Bool)

(assert (=> b!791407 m!732239))

(assert (=> b!791407 m!732239))

(declare-fun m!732241 () Bool)

(assert (=> b!791407 m!732241))

(check-sat (not b!791407) (not b!791408) (not start!68034))
(check-sat)
(get-model)

(declare-fun d!103009 () Bool)

(assert (=> d!103009 (= (validKeyInArray!0 (select (arr!20533 a!3170) j!153)) (and (not (= (select (arr!20533 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20533 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!791407 d!103009))

(declare-fun d!103011 () Bool)

(assert (=> d!103011 (= (validKeyInArray!0 k0!2044) (and (not (= k0!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!791408 d!103011))

(declare-fun d!103013 () Bool)

(assert (=> d!103013 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!68034 d!103013))

(declare-fun d!103023 () Bool)

(assert (=> d!103023 (= (array_inv!16307 a!3170) (bvsge (size!20954 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!68034 d!103023))

(check-sat)
