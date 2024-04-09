; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68574 () Bool)

(assert start!68574)

(declare-fun b!797203 () Bool)

(declare-fun res!541899 () Bool)

(declare-fun e!442310 () Bool)

(assert (=> b!797203 (=> (not res!541899) (not e!442310))))

(declare-datatypes ((array!43315 0))(
  ( (array!43316 (arr!20734 (Array (_ BitVec 32) (_ BitVec 64))) (size!21155 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43315)

(declare-datatypes ((List!14750 0))(
  ( (Nil!14747) (Cons!14746 (h!15875 (_ BitVec 64)) (t!21073 List!14750)) )
))
(declare-fun arrayNoDuplicates!0 (array!43315 (_ BitVec 32) List!14750) Bool)

(assert (=> b!797203 (= res!541899 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14747))))

(declare-fun b!797204 () Bool)

(declare-fun res!541893 () Bool)

(declare-fun e!442309 () Bool)

(assert (=> b!797204 (=> (not res!541893) (not e!442309))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43315 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797204 (= res!541893 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!8332 0))(
  ( (MissingZero!8332 (index!35695 (_ BitVec 32))) (Found!8332 (index!35696 (_ BitVec 32))) (Intermediate!8332 (undefined!9144 Bool) (index!35697 (_ BitVec 32)) (x!66619 (_ BitVec 32))) (Undefined!8332) (MissingVacant!8332 (index!35698 (_ BitVec 32))) )
))
(declare-fun lt!355673 () SeekEntryResult!8332)

(declare-fun e!442308 () Bool)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!355675 () SeekEntryResult!8332)

(declare-fun b!797205 () Bool)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!797205 (= e!442308 (not (or (not (= lt!355673 lt!355675)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(assert (=> b!797205 (= lt!355673 (Found!8332 index!1236))))

(declare-fun b!797207 () Bool)

(declare-fun e!442312 () Bool)

(assert (=> b!797207 (= e!442310 e!442312)))

(declare-fun res!541901 () Bool)

(assert (=> b!797207 (=> (not res!541901) (not e!442312))))

(declare-fun lt!355671 () SeekEntryResult!8332)

(assert (=> b!797207 (= res!541901 (= lt!355671 lt!355673))))

(declare-fun lt!355670 () (_ BitVec 64))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!355669 () array!43315)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43315 (_ BitVec 32)) SeekEntryResult!8332)

(assert (=> b!797207 (= lt!355673 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355670 lt!355669 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43315 (_ BitVec 32)) SeekEntryResult!8332)

(assert (=> b!797207 (= lt!355671 (seekEntryOrOpen!0 lt!355670 lt!355669 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!797207 (= lt!355670 (select (store (arr!20734 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!797207 (= lt!355669 (array!43316 (store (arr!20734 a!3170) i!1163 k0!2044) (size!21155 a!3170)))))

(declare-fun b!797208 () Bool)

(declare-fun res!541897 () Bool)

(assert (=> b!797208 (=> (not res!541897) (not e!442309))))

(assert (=> b!797208 (= res!541897 (and (= (size!21155 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21155 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21155 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!797209 () Bool)

(declare-fun res!541900 () Bool)

(assert (=> b!797209 (=> (not res!541900) (not e!442309))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797209 (= res!541900 (validKeyInArray!0 (select (arr!20734 a!3170) j!153)))))

(declare-fun b!797210 () Bool)

(declare-fun e!442307 () Bool)

(assert (=> b!797210 (= e!442312 e!442307)))

(declare-fun res!541892 () Bool)

(assert (=> b!797210 (=> (not res!541892) (not e!442307))))

(declare-fun lt!355674 () SeekEntryResult!8332)

(declare-fun lt!355672 () SeekEntryResult!8332)

(assert (=> b!797210 (= res!541892 (= lt!355674 lt!355672))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!797210 (= lt!355672 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20734 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797210 (= lt!355674 (seekEntryOrOpen!0 (select (arr!20734 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!797211 () Bool)

(declare-fun res!541895 () Bool)

(assert (=> b!797211 (=> (not res!541895) (not e!442310))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43315 (_ BitVec 32)) Bool)

(assert (=> b!797211 (= res!541895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797212 () Bool)

(assert (=> b!797212 (= e!442309 e!442310)))

(declare-fun res!541894 () Bool)

(assert (=> b!797212 (=> (not res!541894) (not e!442310))))

(declare-fun lt!355668 () SeekEntryResult!8332)

(assert (=> b!797212 (= res!541894 (or (= lt!355668 (MissingZero!8332 i!1163)) (= lt!355668 (MissingVacant!8332 i!1163))))))

(assert (=> b!797212 (= lt!355668 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!797213 () Bool)

(assert (=> b!797213 (= e!442307 e!442308)))

(declare-fun res!541903 () Bool)

(assert (=> b!797213 (=> (not res!541903) (not e!442308))))

(assert (=> b!797213 (= res!541903 (and (= lt!355672 lt!355675) (= (select (arr!20734 a!3170) index!1236) (select (arr!20734 a!3170) j!153))))))

(assert (=> b!797213 (= lt!355675 (Found!8332 j!153))))

(declare-fun b!797214 () Bool)

(declare-fun res!541902 () Bool)

(assert (=> b!797214 (=> (not res!541902) (not e!442309))))

(assert (=> b!797214 (= res!541902 (validKeyInArray!0 k0!2044))))

(declare-fun b!797206 () Bool)

(declare-fun res!541896 () Bool)

(assert (=> b!797206 (=> (not res!541896) (not e!442310))))

(assert (=> b!797206 (= res!541896 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21155 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20734 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21155 a!3170)) (= (select (arr!20734 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!541898 () Bool)

(assert (=> start!68574 (=> (not res!541898) (not e!442309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68574 (= res!541898 (validMask!0 mask!3266))))

(assert (=> start!68574 e!442309))

(assert (=> start!68574 true))

(declare-fun array_inv!16508 (array!43315) Bool)

(assert (=> start!68574 (array_inv!16508 a!3170)))

(assert (= (and start!68574 res!541898) b!797208))

(assert (= (and b!797208 res!541897) b!797209))

(assert (= (and b!797209 res!541900) b!797214))

(assert (= (and b!797214 res!541902) b!797204))

(assert (= (and b!797204 res!541893) b!797212))

(assert (= (and b!797212 res!541894) b!797211))

(assert (= (and b!797211 res!541895) b!797203))

(assert (= (and b!797203 res!541899) b!797206))

(assert (= (and b!797206 res!541896) b!797207))

(assert (= (and b!797207 res!541901) b!797210))

(assert (= (and b!797210 res!541892) b!797213))

(assert (= (and b!797213 res!541903) b!797205))

(declare-fun m!738151 () Bool)

(assert (=> b!797210 m!738151))

(assert (=> b!797210 m!738151))

(declare-fun m!738153 () Bool)

(assert (=> b!797210 m!738153))

(assert (=> b!797210 m!738151))

(declare-fun m!738155 () Bool)

(assert (=> b!797210 m!738155))

(assert (=> b!797209 m!738151))

(assert (=> b!797209 m!738151))

(declare-fun m!738157 () Bool)

(assert (=> b!797209 m!738157))

(declare-fun m!738159 () Bool)

(assert (=> b!797204 m!738159))

(declare-fun m!738161 () Bool)

(assert (=> b!797206 m!738161))

(declare-fun m!738163 () Bool)

(assert (=> b!797206 m!738163))

(declare-fun m!738165 () Bool)

(assert (=> b!797212 m!738165))

(declare-fun m!738167 () Bool)

(assert (=> b!797213 m!738167))

(assert (=> b!797213 m!738151))

(declare-fun m!738169 () Bool)

(assert (=> b!797207 m!738169))

(declare-fun m!738171 () Bool)

(assert (=> b!797207 m!738171))

(declare-fun m!738173 () Bool)

(assert (=> b!797207 m!738173))

(declare-fun m!738175 () Bool)

(assert (=> b!797207 m!738175))

(declare-fun m!738177 () Bool)

(assert (=> b!797203 m!738177))

(declare-fun m!738179 () Bool)

(assert (=> b!797211 m!738179))

(declare-fun m!738181 () Bool)

(assert (=> start!68574 m!738181))

(declare-fun m!738183 () Bool)

(assert (=> start!68574 m!738183))

(declare-fun m!738185 () Bool)

(assert (=> b!797214 m!738185))

(check-sat (not b!797203) (not b!797204) (not b!797214) (not b!797212) (not b!797210) (not b!797211) (not start!68574) (not b!797209) (not b!797207))
(check-sat)
