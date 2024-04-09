; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68632 () Bool)

(assert start!68632)

(declare-fun b!798218 () Bool)

(declare-fun e!442801 () Bool)

(assert (=> b!798218 (= e!442801 (not true))))

(declare-datatypes ((SeekEntryResult!8361 0))(
  ( (MissingZero!8361 (index!35811 (_ BitVec 32))) (Found!8361 (index!35812 (_ BitVec 32))) (Intermediate!8361 (undefined!9173 Bool) (index!35813 (_ BitVec 32)) (x!66728 (_ BitVec 32))) (Undefined!8361) (MissingVacant!8361 (index!35814 (_ BitVec 32))) )
))
(declare-fun lt!356330 () SeekEntryResult!8361)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!798218 (= lt!356330 (Found!8361 index!1236))))

(declare-fun b!798219 () Bool)

(declare-fun e!442800 () Bool)

(declare-fun e!442804 () Bool)

(assert (=> b!798219 (= e!442800 e!442804)))

(declare-fun res!542910 () Bool)

(assert (=> b!798219 (=> (not res!542910) (not e!442804))))

(declare-fun lt!356326 () SeekEntryResult!8361)

(assert (=> b!798219 (= res!542910 (= lt!356326 lt!356330))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!356329 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((array!43373 0))(
  ( (array!43374 (arr!20763 (Array (_ BitVec 32) (_ BitVec 64))) (size!21184 (_ BitVec 32))) )
))
(declare-fun lt!356332 () array!43373)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43373 (_ BitVec 32)) SeekEntryResult!8361)

(assert (=> b!798219 (= lt!356330 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356329 lt!356332 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43373 (_ BitVec 32)) SeekEntryResult!8361)

(assert (=> b!798219 (= lt!356326 (seekEntryOrOpen!0 lt!356329 lt!356332 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43373)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!798219 (= lt!356329 (select (store (arr!20763 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!798219 (= lt!356332 (array!43374 (store (arr!20763 a!3170) i!1163 k!2044) (size!21184 a!3170)))))

(declare-fun b!798220 () Bool)

(declare-fun res!542913 () Bool)

(assert (=> b!798220 (=> (not res!542913) (not e!442800))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43373 (_ BitVec 32)) Bool)

(assert (=> b!798220 (= res!542913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798221 () Bool)

(declare-fun res!542916 () Bool)

(declare-fun e!442803 () Bool)

(assert (=> b!798221 (=> (not res!542916) (not e!442803))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798221 (= res!542916 (validKeyInArray!0 (select (arr!20763 a!3170) j!153)))))

(declare-fun b!798222 () Bool)

(declare-fun res!542915 () Bool)

(assert (=> b!798222 (=> (not res!542915) (not e!442800))))

(declare-datatypes ((List!14779 0))(
  ( (Nil!14776) (Cons!14775 (h!15904 (_ BitVec 64)) (t!21102 List!14779)) )
))
(declare-fun arrayNoDuplicates!0 (array!43373 (_ BitVec 32) List!14779) Bool)

(assert (=> b!798222 (= res!542915 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14776))))

(declare-fun b!798223 () Bool)

(declare-fun res!542912 () Bool)

(assert (=> b!798223 (=> (not res!542912) (not e!442803))))

(assert (=> b!798223 (= res!542912 (validKeyInArray!0 k!2044))))

(declare-fun b!798224 () Bool)

(declare-fun res!542911 () Bool)

(assert (=> b!798224 (=> (not res!542911) (not e!442803))))

(declare-fun arrayContainsKey!0 (array!43373 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798224 (= res!542911 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798225 () Bool)

(declare-fun res!542914 () Bool)

(assert (=> b!798225 (=> (not res!542914) (not e!442800))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!798225 (= res!542914 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21184 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20763 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21184 a!3170)) (= (select (arr!20763 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798226 () Bool)

(assert (=> b!798226 (= e!442804 e!442801)))

(declare-fun res!542907 () Bool)

(assert (=> b!798226 (=> (not res!542907) (not e!442801))))

(declare-fun lt!356331 () SeekEntryResult!8361)

(declare-fun lt!356328 () SeekEntryResult!8361)

(assert (=> b!798226 (= res!542907 (and (= lt!356328 lt!356331) (= lt!356331 (Found!8361 j!153)) (= (select (arr!20763 a!3170) index!1236) (select (arr!20763 a!3170) j!153))))))

(assert (=> b!798226 (= lt!356331 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20763 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!798226 (= lt!356328 (seekEntryOrOpen!0 (select (arr!20763 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!542917 () Bool)

(assert (=> start!68632 (=> (not res!542917) (not e!442803))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68632 (= res!542917 (validMask!0 mask!3266))))

(assert (=> start!68632 e!442803))

(assert (=> start!68632 true))

(declare-fun array_inv!16537 (array!43373) Bool)

(assert (=> start!68632 (array_inv!16537 a!3170)))

(declare-fun b!798227 () Bool)

(declare-fun res!542909 () Bool)

(assert (=> b!798227 (=> (not res!542909) (not e!442803))))

(assert (=> b!798227 (= res!542909 (and (= (size!21184 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21184 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21184 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798228 () Bool)

(assert (=> b!798228 (= e!442803 e!442800)))

(declare-fun res!542908 () Bool)

(assert (=> b!798228 (=> (not res!542908) (not e!442800))))

(declare-fun lt!356327 () SeekEntryResult!8361)

(assert (=> b!798228 (= res!542908 (or (= lt!356327 (MissingZero!8361 i!1163)) (= lt!356327 (MissingVacant!8361 i!1163))))))

(assert (=> b!798228 (= lt!356327 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!68632 res!542917) b!798227))

(assert (= (and b!798227 res!542909) b!798221))

(assert (= (and b!798221 res!542916) b!798223))

(assert (= (and b!798223 res!542912) b!798224))

(assert (= (and b!798224 res!542911) b!798228))

(assert (= (and b!798228 res!542908) b!798220))

(assert (= (and b!798220 res!542913) b!798222))

(assert (= (and b!798222 res!542915) b!798225))

(assert (= (and b!798225 res!542914) b!798219))

(assert (= (and b!798219 res!542910) b!798226))

(assert (= (and b!798226 res!542907) b!798218))

(declare-fun m!739213 () Bool)

(assert (=> b!798223 m!739213))

(declare-fun m!739215 () Bool)

(assert (=> b!798222 m!739215))

(declare-fun m!739217 () Bool)

(assert (=> b!798219 m!739217))

(declare-fun m!739219 () Bool)

(assert (=> b!798219 m!739219))

(declare-fun m!739221 () Bool)

(assert (=> b!798219 m!739221))

(declare-fun m!739223 () Bool)

(assert (=> b!798219 m!739223))

(declare-fun m!739225 () Bool)

(assert (=> b!798220 m!739225))

(declare-fun m!739227 () Bool)

(assert (=> b!798228 m!739227))

(declare-fun m!739229 () Bool)

(assert (=> b!798224 m!739229))

(declare-fun m!739231 () Bool)

(assert (=> b!798225 m!739231))

(declare-fun m!739233 () Bool)

(assert (=> b!798225 m!739233))

(declare-fun m!739235 () Bool)

(assert (=> b!798221 m!739235))

(assert (=> b!798221 m!739235))

(declare-fun m!739237 () Bool)

(assert (=> b!798221 m!739237))

(declare-fun m!739239 () Bool)

(assert (=> b!798226 m!739239))

(assert (=> b!798226 m!739235))

(assert (=> b!798226 m!739235))

(declare-fun m!739241 () Bool)

(assert (=> b!798226 m!739241))

(assert (=> b!798226 m!739235))

(declare-fun m!739243 () Bool)

(assert (=> b!798226 m!739243))

(declare-fun m!739245 () Bool)

(assert (=> start!68632 m!739245))

(declare-fun m!739247 () Bool)

(assert (=> start!68632 m!739247))

(push 1)

