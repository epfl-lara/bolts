; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69432 () Bool)

(assert start!69432)

(declare-fun b!809213 () Bool)

(declare-fun e!447955 () Bool)

(assert (=> b!809213 (= e!447955 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!362657 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!809213 (= lt!362657 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!809214 () Bool)

(declare-fun res!553118 () Bool)

(declare-fun e!447954 () Bool)

(assert (=> b!809214 (=> (not res!553118) (not e!447954))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43981 0))(
  ( (array!43982 (arr!21061 (Array (_ BitVec 32) (_ BitVec 64))) (size!21482 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43981)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!809214 (= res!553118 (and (= (size!21482 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21482 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21482 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!809215 () Bool)

(declare-fun res!553111 () Bool)

(declare-fun e!447957 () Bool)

(assert (=> b!809215 (=> (not res!553111) (not e!447957))))

(declare-datatypes ((List!15077 0))(
  ( (Nil!15074) (Cons!15073 (h!16202 (_ BitVec 64)) (t!21400 List!15077)) )
))
(declare-fun arrayNoDuplicates!0 (array!43981 (_ BitVec 32) List!15077) Bool)

(assert (=> b!809215 (= res!553111 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15074))))

(declare-fun b!809216 () Bool)

(declare-fun e!447956 () Bool)

(assert (=> b!809216 (= e!447956 e!447955)))

(declare-fun res!553114 () Bool)

(assert (=> b!809216 (=> (not res!553114) (not e!447955))))

(declare-datatypes ((SeekEntryResult!8659 0))(
  ( (MissingZero!8659 (index!37003 (_ BitVec 32))) (Found!8659 (index!37004 (_ BitVec 32))) (Intermediate!8659 (undefined!9471 Bool) (index!37005 (_ BitVec 32)) (x!67836 (_ BitVec 32))) (Undefined!8659) (MissingVacant!8659 (index!37006 (_ BitVec 32))) )
))
(declare-fun lt!362658 () SeekEntryResult!8659)

(declare-fun lt!362659 () SeekEntryResult!8659)

(assert (=> b!809216 (= res!553114 (and (= lt!362659 lt!362658) (= lt!362658 (Found!8659 j!153)) (not (= (select (arr!21061 a!3170) index!1236) (select (arr!21061 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43981 (_ BitVec 32)) SeekEntryResult!8659)

(assert (=> b!809216 (= lt!362658 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21061 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43981 (_ BitVec 32)) SeekEntryResult!8659)

(assert (=> b!809216 (= lt!362659 (seekEntryOrOpen!0 (select (arr!21061 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!553116 () Bool)

(assert (=> start!69432 (=> (not res!553116) (not e!447954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69432 (= res!553116 (validMask!0 mask!3266))))

(assert (=> start!69432 e!447954))

(assert (=> start!69432 true))

(declare-fun array_inv!16835 (array!43981) Bool)

(assert (=> start!69432 (array_inv!16835 a!3170)))

(declare-fun b!809217 () Bool)

(declare-fun res!553112 () Bool)

(assert (=> b!809217 (=> (not res!553112) (not e!447954))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!809217 (= res!553112 (validKeyInArray!0 (select (arr!21061 a!3170) j!153)))))

(declare-fun b!809218 () Bool)

(assert (=> b!809218 (= e!447957 e!447956)))

(declare-fun res!553115 () Bool)

(assert (=> b!809218 (=> (not res!553115) (not e!447956))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!362660 () array!43981)

(declare-fun lt!362662 () (_ BitVec 64))

(assert (=> b!809218 (= res!553115 (= (seekEntryOrOpen!0 lt!362662 lt!362660 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362662 lt!362660 mask!3266)))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!809218 (= lt!362662 (select (store (arr!21061 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!809218 (= lt!362660 (array!43982 (store (arr!21061 a!3170) i!1163 k0!2044) (size!21482 a!3170)))))

(declare-fun b!809219 () Bool)

(declare-fun res!553119 () Bool)

(assert (=> b!809219 (=> (not res!553119) (not e!447954))))

(assert (=> b!809219 (= res!553119 (validKeyInArray!0 k0!2044))))

(declare-fun b!809220 () Bool)

(assert (=> b!809220 (= e!447954 e!447957)))

(declare-fun res!553113 () Bool)

(assert (=> b!809220 (=> (not res!553113) (not e!447957))))

(declare-fun lt!362661 () SeekEntryResult!8659)

(assert (=> b!809220 (= res!553113 (or (= lt!362661 (MissingZero!8659 i!1163)) (= lt!362661 (MissingVacant!8659 i!1163))))))

(assert (=> b!809220 (= lt!362661 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!809221 () Bool)

(declare-fun res!553120 () Bool)

(assert (=> b!809221 (=> (not res!553120) (not e!447954))))

(declare-fun arrayContainsKey!0 (array!43981 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!809221 (= res!553120 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!809222 () Bool)

(declare-fun res!553110 () Bool)

(assert (=> b!809222 (=> (not res!553110) (not e!447957))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43981 (_ BitVec 32)) Bool)

(assert (=> b!809222 (= res!553110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!809223 () Bool)

(declare-fun res!553117 () Bool)

(assert (=> b!809223 (=> (not res!553117) (not e!447957))))

(assert (=> b!809223 (= res!553117 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21482 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21061 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21482 a!3170)) (= (select (arr!21061 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!69432 res!553116) b!809214))

(assert (= (and b!809214 res!553118) b!809217))

(assert (= (and b!809217 res!553112) b!809219))

(assert (= (and b!809219 res!553119) b!809221))

(assert (= (and b!809221 res!553120) b!809220))

(assert (= (and b!809220 res!553113) b!809222))

(assert (= (and b!809222 res!553110) b!809215))

(assert (= (and b!809215 res!553111) b!809223))

(assert (= (and b!809223 res!553117) b!809218))

(assert (= (and b!809218 res!553115) b!809216))

(assert (= (and b!809216 res!553114) b!809213))

(declare-fun m!751491 () Bool)

(assert (=> b!809223 m!751491))

(declare-fun m!751493 () Bool)

(assert (=> b!809223 m!751493))

(declare-fun m!751495 () Bool)

(assert (=> b!809219 m!751495))

(declare-fun m!751497 () Bool)

(assert (=> b!809215 m!751497))

(declare-fun m!751499 () Bool)

(assert (=> b!809218 m!751499))

(declare-fun m!751501 () Bool)

(assert (=> b!809218 m!751501))

(declare-fun m!751503 () Bool)

(assert (=> b!809218 m!751503))

(declare-fun m!751505 () Bool)

(assert (=> b!809218 m!751505))

(declare-fun m!751507 () Bool)

(assert (=> b!809216 m!751507))

(declare-fun m!751509 () Bool)

(assert (=> b!809216 m!751509))

(assert (=> b!809216 m!751509))

(declare-fun m!751511 () Bool)

(assert (=> b!809216 m!751511))

(assert (=> b!809216 m!751509))

(declare-fun m!751513 () Bool)

(assert (=> b!809216 m!751513))

(declare-fun m!751515 () Bool)

(assert (=> start!69432 m!751515))

(declare-fun m!751517 () Bool)

(assert (=> start!69432 m!751517))

(declare-fun m!751519 () Bool)

(assert (=> b!809220 m!751519))

(declare-fun m!751521 () Bool)

(assert (=> b!809221 m!751521))

(assert (=> b!809217 m!751509))

(assert (=> b!809217 m!751509))

(declare-fun m!751523 () Bool)

(assert (=> b!809217 m!751523))

(declare-fun m!751525 () Bool)

(assert (=> b!809222 m!751525))

(declare-fun m!751527 () Bool)

(assert (=> b!809213 m!751527))

(check-sat (not b!809216) (not b!809222) (not b!809217) (not b!809220) (not start!69432) (not b!809221) (not b!809215) (not b!809213) (not b!809219) (not b!809218))
(check-sat)
