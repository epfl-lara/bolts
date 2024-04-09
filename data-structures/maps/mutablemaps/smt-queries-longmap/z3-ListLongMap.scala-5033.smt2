; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68730 () Bool)

(assert start!68730)

(declare-fun b!800007 () Bool)

(declare-fun res!544708 () Bool)

(declare-fun e!443608 () Bool)

(assert (=> b!800007 (=> (not res!544708) (not e!443608))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800007 (= res!544708 (validKeyInArray!0 k0!2044))))

(declare-fun b!800008 () Bool)

(declare-fun res!544704 () Bool)

(assert (=> b!800008 (=> (not res!544704) (not e!443608))))

(declare-datatypes ((array!43471 0))(
  ( (array!43472 (arr!20812 (Array (_ BitVec 32) (_ BitVec 64))) (size!21233 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43471)

(declare-fun arrayContainsKey!0 (array!43471 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800008 (= res!544704 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800009 () Bool)

(declare-fun e!443607 () Bool)

(assert (=> b!800009 (= e!443607 false)))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8410 0))(
  ( (MissingZero!8410 (index!36007 (_ BitVec 32))) (Found!8410 (index!36008 (_ BitVec 32))) (Intermediate!8410 (undefined!9222 Bool) (index!36009 (_ BitVec 32)) (x!66905 (_ BitVec 32))) (Undefined!8410) (MissingVacant!8410 (index!36010 (_ BitVec 32))) )
))
(declare-fun lt!357390 () SeekEntryResult!8410)

(declare-fun lt!357394 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43471 (_ BitVec 32)) SeekEntryResult!8410)

(assert (=> b!800009 (= lt!357390 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357394 vacantBefore!23 (select (arr!20812 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800010 () Bool)

(declare-fun res!544703 () Bool)

(declare-fun e!443606 () Bool)

(assert (=> b!800010 (=> (not res!544703) (not e!443606))))

(declare-datatypes ((List!14828 0))(
  ( (Nil!14825) (Cons!14824 (h!15953 (_ BitVec 64)) (t!21151 List!14828)) )
))
(declare-fun arrayNoDuplicates!0 (array!43471 (_ BitVec 32) List!14828) Bool)

(assert (=> b!800010 (= res!544703 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14825))))

(declare-fun b!800011 () Bool)

(declare-fun res!544699 () Bool)

(assert (=> b!800011 (=> (not res!544699) (not e!443606))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43471 (_ BitVec 32)) Bool)

(assert (=> b!800011 (= res!544699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800012 () Bool)

(declare-fun e!443603 () Bool)

(declare-fun e!443605 () Bool)

(assert (=> b!800012 (= e!443603 e!443605)))

(declare-fun res!544700 () Bool)

(assert (=> b!800012 (=> (not res!544700) (not e!443605))))

(declare-fun lt!357388 () SeekEntryResult!8410)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!357387 () SeekEntryResult!8410)

(assert (=> b!800012 (= res!544700 (and (= lt!357387 lt!357388) (= lt!357388 (Found!8410 j!153)) (not (= (select (arr!20812 a!3170) index!1236) (select (arr!20812 a!3170) j!153)))))))

(assert (=> b!800012 (= lt!357388 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20812 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43471 (_ BitVec 32)) SeekEntryResult!8410)

(assert (=> b!800012 (= lt!357387 (seekEntryOrOpen!0 (select (arr!20812 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800013 () Bool)

(assert (=> b!800013 (= e!443605 e!443607)))

(declare-fun res!544706 () Bool)

(assert (=> b!800013 (=> (not res!544706) (not e!443607))))

(assert (=> b!800013 (= res!544706 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357394 #b00000000000000000000000000000000) (bvslt lt!357394 (size!21233 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800013 (= lt!357394 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!800014 () Bool)

(declare-fun res!544702 () Bool)

(assert (=> b!800014 (=> (not res!544702) (not e!443606))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!800014 (= res!544702 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21233 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20812 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21233 a!3170)) (= (select (arr!20812 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800015 () Bool)

(declare-fun res!544697 () Bool)

(assert (=> b!800015 (=> (not res!544697) (not e!443607))))

(declare-fun lt!357393 () array!43471)

(declare-fun lt!357389 () (_ BitVec 64))

(declare-fun lt!357391 () SeekEntryResult!8410)

(assert (=> b!800015 (= res!544697 (= lt!357391 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357394 vacantAfter!23 lt!357389 lt!357393 mask!3266)))))

(declare-fun b!800016 () Bool)

(assert (=> b!800016 (= e!443606 e!443603)))

(declare-fun res!544698 () Bool)

(assert (=> b!800016 (=> (not res!544698) (not e!443603))))

(assert (=> b!800016 (= res!544698 (= lt!357391 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357389 lt!357393 mask!3266)))))

(assert (=> b!800016 (= lt!357391 (seekEntryOrOpen!0 lt!357389 lt!357393 mask!3266))))

(assert (=> b!800016 (= lt!357389 (select (store (arr!20812 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!800016 (= lt!357393 (array!43472 (store (arr!20812 a!3170) i!1163 k0!2044) (size!21233 a!3170)))))

(declare-fun b!800017 () Bool)

(declare-fun res!544696 () Bool)

(assert (=> b!800017 (=> (not res!544696) (not e!443608))))

(assert (=> b!800017 (= res!544696 (validKeyInArray!0 (select (arr!20812 a!3170) j!153)))))

(declare-fun res!544707 () Bool)

(assert (=> start!68730 (=> (not res!544707) (not e!443608))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68730 (= res!544707 (validMask!0 mask!3266))))

(assert (=> start!68730 e!443608))

(assert (=> start!68730 true))

(declare-fun array_inv!16586 (array!43471) Bool)

(assert (=> start!68730 (array_inv!16586 a!3170)))

(declare-fun b!800018 () Bool)

(declare-fun res!544705 () Bool)

(assert (=> b!800018 (=> (not res!544705) (not e!443608))))

(assert (=> b!800018 (= res!544705 (and (= (size!21233 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21233 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21233 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800019 () Bool)

(assert (=> b!800019 (= e!443608 e!443606)))

(declare-fun res!544701 () Bool)

(assert (=> b!800019 (=> (not res!544701) (not e!443606))))

(declare-fun lt!357392 () SeekEntryResult!8410)

(assert (=> b!800019 (= res!544701 (or (= lt!357392 (MissingZero!8410 i!1163)) (= lt!357392 (MissingVacant!8410 i!1163))))))

(assert (=> b!800019 (= lt!357392 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(assert (= (and start!68730 res!544707) b!800018))

(assert (= (and b!800018 res!544705) b!800017))

(assert (= (and b!800017 res!544696) b!800007))

(assert (= (and b!800007 res!544708) b!800008))

(assert (= (and b!800008 res!544704) b!800019))

(assert (= (and b!800019 res!544701) b!800011))

(assert (= (and b!800011 res!544699) b!800010))

(assert (= (and b!800010 res!544703) b!800014))

(assert (= (and b!800014 res!544702) b!800016))

(assert (= (and b!800016 res!544698) b!800012))

(assert (= (and b!800012 res!544700) b!800013))

(assert (= (and b!800013 res!544706) b!800015))

(assert (= (and b!800015 res!544697) b!800009))

(declare-fun m!741169 () Bool)

(assert (=> start!68730 m!741169))

(declare-fun m!741171 () Bool)

(assert (=> start!68730 m!741171))

(declare-fun m!741173 () Bool)

(assert (=> b!800011 m!741173))

(declare-fun m!741175 () Bool)

(assert (=> b!800017 m!741175))

(assert (=> b!800017 m!741175))

(declare-fun m!741177 () Bool)

(assert (=> b!800017 m!741177))

(declare-fun m!741179 () Bool)

(assert (=> b!800016 m!741179))

(declare-fun m!741181 () Bool)

(assert (=> b!800016 m!741181))

(declare-fun m!741183 () Bool)

(assert (=> b!800016 m!741183))

(declare-fun m!741185 () Bool)

(assert (=> b!800016 m!741185))

(assert (=> b!800009 m!741175))

(assert (=> b!800009 m!741175))

(declare-fun m!741187 () Bool)

(assert (=> b!800009 m!741187))

(declare-fun m!741189 () Bool)

(assert (=> b!800007 m!741189))

(declare-fun m!741191 () Bool)

(assert (=> b!800008 m!741191))

(declare-fun m!741193 () Bool)

(assert (=> b!800019 m!741193))

(declare-fun m!741195 () Bool)

(assert (=> b!800012 m!741195))

(assert (=> b!800012 m!741175))

(assert (=> b!800012 m!741175))

(declare-fun m!741197 () Bool)

(assert (=> b!800012 m!741197))

(assert (=> b!800012 m!741175))

(declare-fun m!741199 () Bool)

(assert (=> b!800012 m!741199))

(declare-fun m!741201 () Bool)

(assert (=> b!800015 m!741201))

(declare-fun m!741203 () Bool)

(assert (=> b!800010 m!741203))

(declare-fun m!741205 () Bool)

(assert (=> b!800013 m!741205))

(declare-fun m!741207 () Bool)

(assert (=> b!800014 m!741207))

(declare-fun m!741209 () Bool)

(assert (=> b!800014 m!741209))

(check-sat (not b!800007) (not b!800011) (not b!800017) (not b!800009) (not b!800008) (not b!800016) (not start!68730) (not b!800015) (not b!800019) (not b!800012) (not b!800010) (not b!800013))
(check-sat)
