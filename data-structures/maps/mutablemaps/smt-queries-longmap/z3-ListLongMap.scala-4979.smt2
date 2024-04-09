; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68406 () Bool)

(assert start!68406)

(declare-fun b!794498 () Bool)

(declare-fun res!539191 () Bool)

(declare-fun e!441137 () Bool)

(assert (=> b!794498 (=> (not res!539191) (not e!441137))))

(declare-datatypes ((array!43147 0))(
  ( (array!43148 (arr!20650 (Array (_ BitVec 32) (_ BitVec 64))) (size!21071 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43147)

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43147 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794498 (= res!539191 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794499 () Bool)

(declare-fun e!441138 () Bool)

(assert (=> b!794499 (= e!441137 e!441138)))

(declare-fun res!539196 () Bool)

(assert (=> b!794499 (=> (not res!539196) (not e!441138))))

(declare-datatypes ((SeekEntryResult!8248 0))(
  ( (MissingZero!8248 (index!35359 (_ BitVec 32))) (Found!8248 (index!35360 (_ BitVec 32))) (Intermediate!8248 (undefined!9060 Bool) (index!35361 (_ BitVec 32)) (x!66311 (_ BitVec 32))) (Undefined!8248) (MissingVacant!8248 (index!35362 (_ BitVec 32))) )
))
(declare-fun lt!354185 () SeekEntryResult!8248)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!794499 (= res!539196 (or (= lt!354185 (MissingZero!8248 i!1163)) (= lt!354185 (MissingVacant!8248 i!1163))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43147 (_ BitVec 32)) SeekEntryResult!8248)

(assert (=> b!794499 (= lt!354185 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!794500 () Bool)

(declare-fun e!441139 () Bool)

(assert (=> b!794500 (= e!441138 e!441139)))

(declare-fun res!539195 () Bool)

(assert (=> b!794500 (=> (not res!539195) (not e!441139))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354187 () array!43147)

(declare-fun lt!354186 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43147 (_ BitVec 32)) SeekEntryResult!8248)

(assert (=> b!794500 (= res!539195 (= (seekEntryOrOpen!0 lt!354186 lt!354187 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354186 lt!354187 mask!3266)))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!794500 (= lt!354186 (select (store (arr!20650 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!794500 (= lt!354187 (array!43148 (store (arr!20650 a!3170) i!1163 k0!2044) (size!21071 a!3170)))))

(declare-fun b!794501 () Bool)

(declare-fun res!539193 () Bool)

(assert (=> b!794501 (=> (not res!539193) (not e!441138))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43147 (_ BitVec 32)) Bool)

(assert (=> b!794501 (= res!539193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794502 () Bool)

(declare-fun res!539194 () Bool)

(assert (=> b!794502 (=> (not res!539194) (not e!441138))))

(declare-datatypes ((List!14666 0))(
  ( (Nil!14663) (Cons!14662 (h!15791 (_ BitVec 64)) (t!20989 List!14666)) )
))
(declare-fun arrayNoDuplicates!0 (array!43147 (_ BitVec 32) List!14666) Bool)

(assert (=> b!794502 (= res!539194 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14663))))

(declare-fun b!794503 () Bool)

(declare-fun res!539187 () Bool)

(assert (=> b!794503 (=> (not res!539187) (not e!441139))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!794503 (= res!539187 (= (seekEntryOrOpen!0 (select (arr!20650 a!3170) j!153) a!3170 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20650 a!3170) j!153) a!3170 mask!3266)))))

(declare-fun b!794504 () Bool)

(declare-fun res!539192 () Bool)

(assert (=> b!794504 (=> (not res!539192) (not e!441137))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794504 (= res!539192 (validKeyInArray!0 k0!2044))))

(declare-fun b!794506 () Bool)

(declare-fun res!539190 () Bool)

(assert (=> b!794506 (=> (not res!539190) (not e!441138))))

(assert (=> b!794506 (= res!539190 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21071 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20650 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21071 a!3170)) (= (select (arr!20650 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794505 () Bool)

(assert (=> b!794505 (= e!441139 (bvslt mask!3266 #b00000000000000000000000000000000))))

(declare-fun res!539197 () Bool)

(assert (=> start!68406 (=> (not res!539197) (not e!441137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68406 (= res!539197 (validMask!0 mask!3266))))

(assert (=> start!68406 e!441137))

(assert (=> start!68406 true))

(declare-fun array_inv!16424 (array!43147) Bool)

(assert (=> start!68406 (array_inv!16424 a!3170)))

(declare-fun b!794507 () Bool)

(declare-fun res!539188 () Bool)

(assert (=> b!794507 (=> (not res!539188) (not e!441137))))

(assert (=> b!794507 (= res!539188 (validKeyInArray!0 (select (arr!20650 a!3170) j!153)))))

(declare-fun b!794508 () Bool)

(declare-fun res!539189 () Bool)

(assert (=> b!794508 (=> (not res!539189) (not e!441137))))

(assert (=> b!794508 (= res!539189 (and (= (size!21071 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21071 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21071 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68406 res!539197) b!794508))

(assert (= (and b!794508 res!539189) b!794507))

(assert (= (and b!794507 res!539188) b!794504))

(assert (= (and b!794504 res!539192) b!794498))

(assert (= (and b!794498 res!539191) b!794499))

(assert (= (and b!794499 res!539196) b!794501))

(assert (= (and b!794501 res!539193) b!794502))

(assert (= (and b!794502 res!539194) b!794506))

(assert (= (and b!794506 res!539190) b!794500))

(assert (= (and b!794500 res!539195) b!794503))

(assert (= (and b!794503 res!539187) b!794505))

(declare-fun m!735149 () Bool)

(assert (=> start!68406 m!735149))

(declare-fun m!735151 () Bool)

(assert (=> start!68406 m!735151))

(declare-fun m!735153 () Bool)

(assert (=> b!794500 m!735153))

(declare-fun m!735155 () Bool)

(assert (=> b!794500 m!735155))

(declare-fun m!735157 () Bool)

(assert (=> b!794500 m!735157))

(declare-fun m!735159 () Bool)

(assert (=> b!794500 m!735159))

(declare-fun m!735161 () Bool)

(assert (=> b!794503 m!735161))

(assert (=> b!794503 m!735161))

(declare-fun m!735163 () Bool)

(assert (=> b!794503 m!735163))

(assert (=> b!794503 m!735161))

(declare-fun m!735165 () Bool)

(assert (=> b!794503 m!735165))

(declare-fun m!735167 () Bool)

(assert (=> b!794501 m!735167))

(declare-fun m!735169 () Bool)

(assert (=> b!794499 m!735169))

(assert (=> b!794507 m!735161))

(assert (=> b!794507 m!735161))

(declare-fun m!735171 () Bool)

(assert (=> b!794507 m!735171))

(declare-fun m!735173 () Bool)

(assert (=> b!794504 m!735173))

(declare-fun m!735175 () Bool)

(assert (=> b!794502 m!735175))

(declare-fun m!735177 () Bool)

(assert (=> b!794498 m!735177))

(declare-fun m!735179 () Bool)

(assert (=> b!794506 m!735179))

(declare-fun m!735181 () Bool)

(assert (=> b!794506 m!735181))

(check-sat (not b!794504) (not b!794499) (not b!794498) (not start!68406) (not b!794507) (not b!794500) (not b!794503) (not b!794502) (not b!794501))
(check-sat)
