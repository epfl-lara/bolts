; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68572 () Bool)

(assert start!68572)

(declare-fun b!797167 () Bool)

(declare-fun res!541858 () Bool)

(declare-fun e!442289 () Bool)

(assert (=> b!797167 (=> (not res!541858) (not e!442289))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43313 0))(
  ( (array!43314 (arr!20733 (Array (_ BitVec 32) (_ BitVec 64))) (size!21154 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43313)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!797167 (= res!541858 (and (= (size!21154 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21154 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21154 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!541865 () Bool)

(assert (=> start!68572 (=> (not res!541865) (not e!442289))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68572 (= res!541865 (validMask!0 mask!3266))))

(assert (=> start!68572 e!442289))

(assert (=> start!68572 true))

(declare-fun array_inv!16507 (array!43313) Bool)

(assert (=> start!68572 (array_inv!16507 a!3170)))

(declare-fun b!797168 () Bool)

(declare-fun res!541857 () Bool)

(declare-fun e!442292 () Bool)

(assert (=> b!797168 (=> (not res!541857) (not e!442292))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!797168 (= res!541857 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21154 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20733 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21154 a!3170)) (= (select (arr!20733 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797169 () Bool)

(declare-fun res!541863 () Bool)

(assert (=> b!797169 (=> (not res!541863) (not e!442289))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797169 (= res!541863 (validKeyInArray!0 k!2044))))

(declare-fun b!797170 () Bool)

(declare-fun res!541859 () Bool)

(assert (=> b!797170 (=> (not res!541859) (not e!442292))))

(declare-datatypes ((List!14749 0))(
  ( (Nil!14746) (Cons!14745 (h!15874 (_ BitVec 64)) (t!21072 List!14749)) )
))
(declare-fun arrayNoDuplicates!0 (array!43313 (_ BitVec 32) List!14749) Bool)

(assert (=> b!797170 (= res!541859 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14746))))

(declare-fun b!797171 () Bool)

(declare-fun e!442290 () Bool)

(declare-fun e!442293 () Bool)

(assert (=> b!797171 (= e!442290 e!442293)))

(declare-fun res!541864 () Bool)

(assert (=> b!797171 (=> (not res!541864) (not e!442293))))

(declare-datatypes ((SeekEntryResult!8331 0))(
  ( (MissingZero!8331 (index!35691 (_ BitVec 32))) (Found!8331 (index!35692 (_ BitVec 32))) (Intermediate!8331 (undefined!9143 Bool) (index!35693 (_ BitVec 32)) (x!66618 (_ BitVec 32))) (Undefined!8331) (MissingVacant!8331 (index!35694 (_ BitVec 32))) )
))
(declare-fun lt!355646 () SeekEntryResult!8331)

(declare-fun lt!355648 () SeekEntryResult!8331)

(assert (=> b!797171 (= res!541864 (and (= lt!355646 lt!355648) (= (select (arr!20733 a!3170) index!1236) (select (arr!20733 a!3170) j!153))))))

(assert (=> b!797171 (= lt!355648 (Found!8331 j!153))))

(declare-fun b!797172 () Bool)

(declare-fun res!541860 () Bool)

(assert (=> b!797172 (=> (not res!541860) (not e!442289))))

(declare-fun arrayContainsKey!0 (array!43313 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797172 (= res!541860 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797173 () Bool)

(assert (=> b!797173 (= e!442289 e!442292)))

(declare-fun res!541861 () Bool)

(assert (=> b!797173 (=> (not res!541861) (not e!442292))))

(declare-fun lt!355649 () SeekEntryResult!8331)

(assert (=> b!797173 (= res!541861 (or (= lt!355649 (MissingZero!8331 i!1163)) (= lt!355649 (MissingVacant!8331 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43313 (_ BitVec 32)) SeekEntryResult!8331)

(assert (=> b!797173 (= lt!355649 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!797174 () Bool)

(declare-fun res!541856 () Bool)

(assert (=> b!797174 (=> (not res!541856) (not e!442292))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43313 (_ BitVec 32)) Bool)

(assert (=> b!797174 (= res!541856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797175 () Bool)

(declare-fun e!442294 () Bool)

(assert (=> b!797175 (= e!442292 e!442294)))

(declare-fun res!541862 () Bool)

(assert (=> b!797175 (=> (not res!541862) (not e!442294))))

(declare-fun lt!355645 () SeekEntryResult!8331)

(declare-fun lt!355647 () SeekEntryResult!8331)

(assert (=> b!797175 (= res!541862 (= lt!355645 lt!355647))))

(declare-fun lt!355650 () array!43313)

(declare-fun lt!355644 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43313 (_ BitVec 32)) SeekEntryResult!8331)

(assert (=> b!797175 (= lt!355647 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355644 lt!355650 mask!3266))))

(assert (=> b!797175 (= lt!355645 (seekEntryOrOpen!0 lt!355644 lt!355650 mask!3266))))

(assert (=> b!797175 (= lt!355644 (select (store (arr!20733 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!797175 (= lt!355650 (array!43314 (store (arr!20733 a!3170) i!1163 k!2044) (size!21154 a!3170)))))

(declare-fun b!797176 () Bool)

(assert (=> b!797176 (= e!442293 (not (or (not (= lt!355647 lt!355648)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(assert (=> b!797176 (= lt!355647 (Found!8331 index!1236))))

(declare-fun b!797177 () Bool)

(declare-fun res!541867 () Bool)

(assert (=> b!797177 (=> (not res!541867) (not e!442289))))

(assert (=> b!797177 (= res!541867 (validKeyInArray!0 (select (arr!20733 a!3170) j!153)))))

(declare-fun b!797178 () Bool)

(assert (=> b!797178 (= e!442294 e!442290)))

(declare-fun res!541866 () Bool)

(assert (=> b!797178 (=> (not res!541866) (not e!442290))))

(declare-fun lt!355651 () SeekEntryResult!8331)

(assert (=> b!797178 (= res!541866 (= lt!355651 lt!355646))))

(assert (=> b!797178 (= lt!355646 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20733 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797178 (= lt!355651 (seekEntryOrOpen!0 (select (arr!20733 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68572 res!541865) b!797167))

(assert (= (and b!797167 res!541858) b!797177))

(assert (= (and b!797177 res!541867) b!797169))

(assert (= (and b!797169 res!541863) b!797172))

(assert (= (and b!797172 res!541860) b!797173))

(assert (= (and b!797173 res!541861) b!797174))

(assert (= (and b!797174 res!541856) b!797170))

(assert (= (and b!797170 res!541859) b!797168))

(assert (= (and b!797168 res!541857) b!797175))

(assert (= (and b!797175 res!541862) b!797178))

(assert (= (and b!797178 res!541866) b!797171))

(assert (= (and b!797171 res!541864) b!797176))

(declare-fun m!738115 () Bool)

(assert (=> b!797174 m!738115))

(declare-fun m!738117 () Bool)

(assert (=> b!797168 m!738117))

(declare-fun m!738119 () Bool)

(assert (=> b!797168 m!738119))

(declare-fun m!738121 () Bool)

(assert (=> b!797175 m!738121))

(declare-fun m!738123 () Bool)

(assert (=> b!797175 m!738123))

(declare-fun m!738125 () Bool)

(assert (=> b!797175 m!738125))

(declare-fun m!738127 () Bool)

(assert (=> b!797175 m!738127))

(declare-fun m!738129 () Bool)

(assert (=> b!797177 m!738129))

(assert (=> b!797177 m!738129))

(declare-fun m!738131 () Bool)

(assert (=> b!797177 m!738131))

(declare-fun m!738133 () Bool)

(assert (=> start!68572 m!738133))

(declare-fun m!738135 () Bool)

(assert (=> start!68572 m!738135))

(declare-fun m!738137 () Bool)

(assert (=> b!797170 m!738137))

(declare-fun m!738139 () Bool)

(assert (=> b!797173 m!738139))

(declare-fun m!738141 () Bool)

(assert (=> b!797169 m!738141))

(assert (=> b!797178 m!738129))

(assert (=> b!797178 m!738129))

(declare-fun m!738143 () Bool)

(assert (=> b!797178 m!738143))

(assert (=> b!797178 m!738129))

(declare-fun m!738145 () Bool)

(assert (=> b!797178 m!738145))

(declare-fun m!738147 () Bool)

(assert (=> b!797172 m!738147))

(declare-fun m!738149 () Bool)

(assert (=> b!797171 m!738149))

(assert (=> b!797171 m!738129))

(push 1)

(assert (not b!797177))

(assert (not b!797178))

(assert (not start!68572))

(assert (not b!797174))

(assert (not b!797170))

(assert (not b!797169))

(assert (not b!797172))

(assert (not b!797175))

(assert (not b!797173))

(check-sat)

(pop 1)

(push 1)

(check-sat)

