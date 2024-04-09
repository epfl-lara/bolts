; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68628 () Bool)

(assert start!68628)

(declare-fun res!542842 () Bool)

(declare-fun e!442774 () Bool)

(assert (=> start!68628 (=> (not res!542842) (not e!442774))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68628 (= res!542842 (validMask!0 mask!3266))))

(assert (=> start!68628 e!442774))

(assert (=> start!68628 true))

(declare-datatypes ((array!43369 0))(
  ( (array!43370 (arr!20761 (Array (_ BitVec 32) (_ BitVec 64))) (size!21182 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43369)

(declare-fun array_inv!16535 (array!43369) Bool)

(assert (=> start!68628 (array_inv!16535 a!3170)))

(declare-fun b!798152 () Bool)

(declare-fun res!542846 () Bool)

(declare-fun e!442773 () Bool)

(assert (=> b!798152 (=> (not res!542846) (not e!442773))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!798152 (= res!542846 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21182 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20761 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21182 a!3170)) (= (select (arr!20761 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798153 () Bool)

(declare-fun e!442772 () Bool)

(declare-fun e!442770 () Bool)

(assert (=> b!798153 (= e!442772 e!442770)))

(declare-fun res!542845 () Bool)

(assert (=> b!798153 (=> (not res!542845) (not e!442770))))

(declare-datatypes ((SeekEntryResult!8359 0))(
  ( (MissingZero!8359 (index!35803 (_ BitVec 32))) (Found!8359 (index!35804 (_ BitVec 32))) (Intermediate!8359 (undefined!9171 Bool) (index!35805 (_ BitVec 32)) (x!66718 (_ BitVec 32))) (Undefined!8359) (MissingVacant!8359 (index!35806 (_ BitVec 32))) )
))
(declare-fun lt!356286 () SeekEntryResult!8359)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!356289 () SeekEntryResult!8359)

(assert (=> b!798153 (= res!542845 (and (= lt!356286 lt!356289) (= lt!356289 (Found!8359 j!153)) (= (select (arr!20761 a!3170) index!1236) (select (arr!20761 a!3170) j!153))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43369 (_ BitVec 32)) SeekEntryResult!8359)

(assert (=> b!798153 (= lt!356289 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20761 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43369 (_ BitVec 32)) SeekEntryResult!8359)

(assert (=> b!798153 (= lt!356286 (seekEntryOrOpen!0 (select (arr!20761 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798154 () Bool)

(assert (=> b!798154 (= e!442773 e!442772)))

(declare-fun res!542850 () Bool)

(assert (=> b!798154 (=> (not res!542850) (not e!442772))))

(declare-fun lt!356288 () SeekEntryResult!8359)

(declare-fun lt!356285 () SeekEntryResult!8359)

(assert (=> b!798154 (= res!542850 (= lt!356288 lt!356285))))

(declare-fun lt!356287 () array!43369)

(declare-fun lt!356290 () (_ BitVec 64))

(assert (=> b!798154 (= lt!356285 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356290 lt!356287 mask!3266))))

(assert (=> b!798154 (= lt!356288 (seekEntryOrOpen!0 lt!356290 lt!356287 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!798154 (= lt!356290 (select (store (arr!20761 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!798154 (= lt!356287 (array!43370 (store (arr!20761 a!3170) i!1163 k0!2044) (size!21182 a!3170)))))

(declare-fun b!798155 () Bool)

(declare-fun res!542849 () Bool)

(assert (=> b!798155 (=> (not res!542849) (not e!442773))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43369 (_ BitVec 32)) Bool)

(assert (=> b!798155 (= res!542849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798156 () Bool)

(assert (=> b!798156 (= e!442774 e!442773)))

(declare-fun res!542847 () Bool)

(assert (=> b!798156 (=> (not res!542847) (not e!442773))))

(declare-fun lt!356284 () SeekEntryResult!8359)

(assert (=> b!798156 (= res!542847 (or (= lt!356284 (MissingZero!8359 i!1163)) (= lt!356284 (MissingVacant!8359 i!1163))))))

(assert (=> b!798156 (= lt!356284 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!798157 () Bool)

(declare-fun res!542844 () Bool)

(assert (=> b!798157 (=> (not res!542844) (not e!442774))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798157 (= res!542844 (validKeyInArray!0 k0!2044))))

(declare-fun b!798158 () Bool)

(declare-fun res!542851 () Bool)

(assert (=> b!798158 (=> (not res!542851) (not e!442774))))

(assert (=> b!798158 (= res!542851 (and (= (size!21182 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21182 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21182 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798159 () Bool)

(declare-fun res!542843 () Bool)

(assert (=> b!798159 (=> (not res!542843) (not e!442774))))

(assert (=> b!798159 (= res!542843 (validKeyInArray!0 (select (arr!20761 a!3170) j!153)))))

(declare-fun b!798160 () Bool)

(declare-fun res!542841 () Bool)

(assert (=> b!798160 (=> (not res!542841) (not e!442774))))

(declare-fun arrayContainsKey!0 (array!43369 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798160 (= res!542841 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798161 () Bool)

(assert (=> b!798161 (= e!442770 (not true))))

(assert (=> b!798161 (= lt!356285 (Found!8359 index!1236))))

(declare-fun b!798162 () Bool)

(declare-fun res!542848 () Bool)

(assert (=> b!798162 (=> (not res!542848) (not e!442773))))

(declare-datatypes ((List!14777 0))(
  ( (Nil!14774) (Cons!14773 (h!15902 (_ BitVec 64)) (t!21100 List!14777)) )
))
(declare-fun arrayNoDuplicates!0 (array!43369 (_ BitVec 32) List!14777) Bool)

(assert (=> b!798162 (= res!542848 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14774))))

(assert (= (and start!68628 res!542842) b!798158))

(assert (= (and b!798158 res!542851) b!798159))

(assert (= (and b!798159 res!542843) b!798157))

(assert (= (and b!798157 res!542844) b!798160))

(assert (= (and b!798160 res!542841) b!798156))

(assert (= (and b!798156 res!542847) b!798155))

(assert (= (and b!798155 res!542849) b!798162))

(assert (= (and b!798162 res!542848) b!798152))

(assert (= (and b!798152 res!542846) b!798154))

(assert (= (and b!798154 res!542850) b!798153))

(assert (= (and b!798153 res!542845) b!798161))

(declare-fun m!739141 () Bool)

(assert (=> b!798156 m!739141))

(declare-fun m!739143 () Bool)

(assert (=> b!798160 m!739143))

(declare-fun m!739145 () Bool)

(assert (=> b!798162 m!739145))

(declare-fun m!739147 () Bool)

(assert (=> b!798152 m!739147))

(declare-fun m!739149 () Bool)

(assert (=> b!798152 m!739149))

(declare-fun m!739151 () Bool)

(assert (=> b!798155 m!739151))

(declare-fun m!739153 () Bool)

(assert (=> b!798154 m!739153))

(declare-fun m!739155 () Bool)

(assert (=> b!798154 m!739155))

(declare-fun m!739157 () Bool)

(assert (=> b!798154 m!739157))

(declare-fun m!739159 () Bool)

(assert (=> b!798154 m!739159))

(declare-fun m!739161 () Bool)

(assert (=> b!798159 m!739161))

(assert (=> b!798159 m!739161))

(declare-fun m!739163 () Bool)

(assert (=> b!798159 m!739163))

(declare-fun m!739165 () Bool)

(assert (=> b!798157 m!739165))

(declare-fun m!739167 () Bool)

(assert (=> start!68628 m!739167))

(declare-fun m!739169 () Bool)

(assert (=> start!68628 m!739169))

(declare-fun m!739171 () Bool)

(assert (=> b!798153 m!739171))

(assert (=> b!798153 m!739161))

(assert (=> b!798153 m!739161))

(declare-fun m!739173 () Bool)

(assert (=> b!798153 m!739173))

(assert (=> b!798153 m!739161))

(declare-fun m!739175 () Bool)

(assert (=> b!798153 m!739175))

(check-sat (not b!798157) (not b!798159) (not b!798153) (not b!798155) (not b!798162) (not start!68628) (not b!798154) (not b!798156) (not b!798160))
(check-sat)
