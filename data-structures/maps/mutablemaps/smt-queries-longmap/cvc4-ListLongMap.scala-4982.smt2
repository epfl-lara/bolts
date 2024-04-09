; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68426 () Bool)

(assert start!68426)

(declare-fun b!794811 () Bool)

(declare-fun e!441257 () Bool)

(assert (=> b!794811 (= e!441257 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43167 0))(
  ( (array!43168 (arr!20660 (Array (_ BitVec 32) (_ BitVec 64))) (size!21081 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43167)

(declare-datatypes ((SeekEntryResult!8258 0))(
  ( (MissingZero!8258 (index!35399 (_ BitVec 32))) (Found!8258 (index!35400 (_ BitVec 32))) (Intermediate!8258 (undefined!9070 Bool) (index!35401 (_ BitVec 32)) (x!66345 (_ BitVec 32))) (Undefined!8258) (MissingVacant!8258 (index!35402 (_ BitVec 32))) )
))
(declare-fun lt!354309 () SeekEntryResult!8258)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43167 (_ BitVec 32)) SeekEntryResult!8258)

(assert (=> b!794811 (= lt!354309 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20660 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354310 () SeekEntryResult!8258)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43167 (_ BitVec 32)) SeekEntryResult!8258)

(assert (=> b!794811 (= lt!354310 (seekEntryOrOpen!0 (select (arr!20660 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!794812 () Bool)

(declare-fun res!539509 () Bool)

(declare-fun e!441256 () Bool)

(assert (=> b!794812 (=> (not res!539509) (not e!441256))))

(declare-datatypes ((List!14676 0))(
  ( (Nil!14673) (Cons!14672 (h!15801 (_ BitVec 64)) (t!20999 List!14676)) )
))
(declare-fun arrayNoDuplicates!0 (array!43167 (_ BitVec 32) List!14676) Bool)

(assert (=> b!794812 (= res!539509 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14673))))

(declare-fun b!794813 () Bool)

(declare-fun res!539502 () Bool)

(assert (=> b!794813 (=> (not res!539502) (not e!441256))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43167 (_ BitVec 32)) Bool)

(assert (=> b!794813 (= res!539502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794814 () Bool)

(declare-fun res!539508 () Bool)

(declare-fun e!441258 () Bool)

(assert (=> b!794814 (=> (not res!539508) (not e!441258))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794814 (= res!539508 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794815 () Bool)

(declare-fun res!539504 () Bool)

(assert (=> b!794815 (=> (not res!539504) (not e!441258))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794815 (= res!539504 (validKeyInArray!0 k!2044))))

(declare-fun b!794816 () Bool)

(assert (=> b!794816 (= e!441258 e!441256)))

(declare-fun res!539500 () Bool)

(assert (=> b!794816 (=> (not res!539500) (not e!441256))))

(declare-fun lt!354312 () SeekEntryResult!8258)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!794816 (= res!539500 (or (= lt!354312 (MissingZero!8258 i!1163)) (= lt!354312 (MissingVacant!8258 i!1163))))))

(assert (=> b!794816 (= lt!354312 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!794817 () Bool)

(declare-fun res!539506 () Bool)

(assert (=> b!794817 (=> (not res!539506) (not e!441256))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!794817 (= res!539506 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21081 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20660 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21081 a!3170)) (= (select (arr!20660 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794818 () Bool)

(declare-fun res!539503 () Bool)

(assert (=> b!794818 (=> (not res!539503) (not e!441258))))

(assert (=> b!794818 (= res!539503 (and (= (size!21081 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21081 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21081 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!539505 () Bool)

(assert (=> start!68426 (=> (not res!539505) (not e!441258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68426 (= res!539505 (validMask!0 mask!3266))))

(assert (=> start!68426 e!441258))

(assert (=> start!68426 true))

(declare-fun array_inv!16434 (array!43167) Bool)

(assert (=> start!68426 (array_inv!16434 a!3170)))

(declare-fun b!794819 () Bool)

(declare-fun res!539501 () Bool)

(assert (=> b!794819 (=> (not res!539501) (not e!441258))))

(assert (=> b!794819 (= res!539501 (validKeyInArray!0 (select (arr!20660 a!3170) j!153)))))

(declare-fun b!794820 () Bool)

(assert (=> b!794820 (= e!441256 e!441257)))

(declare-fun res!539507 () Bool)

(assert (=> b!794820 (=> (not res!539507) (not e!441257))))

(declare-fun lt!354313 () array!43167)

(declare-fun lt!354311 () (_ BitVec 64))

(assert (=> b!794820 (= res!539507 (= (seekEntryOrOpen!0 lt!354311 lt!354313 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354311 lt!354313 mask!3266)))))

(assert (=> b!794820 (= lt!354311 (select (store (arr!20660 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794820 (= lt!354313 (array!43168 (store (arr!20660 a!3170) i!1163 k!2044) (size!21081 a!3170)))))

(assert (= (and start!68426 res!539505) b!794818))

(assert (= (and b!794818 res!539503) b!794819))

(assert (= (and b!794819 res!539501) b!794815))

(assert (= (and b!794815 res!539504) b!794814))

(assert (= (and b!794814 res!539508) b!794816))

(assert (= (and b!794816 res!539500) b!794813))

(assert (= (and b!794813 res!539502) b!794812))

(assert (= (and b!794812 res!539509) b!794817))

(assert (= (and b!794817 res!539506) b!794820))

(assert (= (and b!794820 res!539507) b!794811))

(declare-fun m!735489 () Bool)

(assert (=> b!794814 m!735489))

(declare-fun m!735491 () Bool)

(assert (=> b!794811 m!735491))

(assert (=> b!794811 m!735491))

(declare-fun m!735493 () Bool)

(assert (=> b!794811 m!735493))

(assert (=> b!794811 m!735491))

(declare-fun m!735495 () Bool)

(assert (=> b!794811 m!735495))

(declare-fun m!735497 () Bool)

(assert (=> b!794815 m!735497))

(declare-fun m!735499 () Bool)

(assert (=> b!794817 m!735499))

(declare-fun m!735501 () Bool)

(assert (=> b!794817 m!735501))

(declare-fun m!735503 () Bool)

(assert (=> start!68426 m!735503))

(declare-fun m!735505 () Bool)

(assert (=> start!68426 m!735505))

(declare-fun m!735507 () Bool)

(assert (=> b!794813 m!735507))

(assert (=> b!794819 m!735491))

(assert (=> b!794819 m!735491))

(declare-fun m!735509 () Bool)

(assert (=> b!794819 m!735509))

(declare-fun m!735511 () Bool)

(assert (=> b!794812 m!735511))

(declare-fun m!735513 () Bool)

(assert (=> b!794820 m!735513))

(declare-fun m!735515 () Bool)

(assert (=> b!794820 m!735515))

(declare-fun m!735517 () Bool)

(assert (=> b!794820 m!735517))

(declare-fun m!735519 () Bool)

(assert (=> b!794820 m!735519))

(declare-fun m!735521 () Bool)

(assert (=> b!794816 m!735521))

(push 1)

(assert (not b!794813))

(assert (not b!794819))

