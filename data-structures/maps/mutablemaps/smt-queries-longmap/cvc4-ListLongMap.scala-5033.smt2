; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68732 () Bool)

(assert start!68732)

(declare-fun b!800046 () Bool)

(declare-fun res!544743 () Bool)

(declare-fun e!443625 () Bool)

(assert (=> b!800046 (=> (not res!544743) (not e!443625))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800046 (= res!544743 (validKeyInArray!0 k!2044))))

(declare-fun b!800047 () Bool)

(declare-fun e!443622 () Bool)

(declare-fun e!443623 () Bool)

(assert (=> b!800047 (= e!443622 e!443623)))

(declare-fun res!544742 () Bool)

(assert (=> b!800047 (=> (not res!544742) (not e!443623))))

(declare-fun lt!357413 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8411 0))(
  ( (MissingZero!8411 (index!36011 (_ BitVec 32))) (Found!8411 (index!36012 (_ BitVec 32))) (Intermediate!8411 (undefined!9223 Bool) (index!36013 (_ BitVec 32)) (x!66906 (_ BitVec 32))) (Undefined!8411) (MissingVacant!8411 (index!36014 (_ BitVec 32))) )
))
(declare-fun lt!357415 () SeekEntryResult!8411)

(declare-datatypes ((array!43473 0))(
  ( (array!43474 (arr!20813 (Array (_ BitVec 32) (_ BitVec 64))) (size!21234 (_ BitVec 32))) )
))
(declare-fun lt!357411 () array!43473)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43473 (_ BitVec 32)) SeekEntryResult!8411)

(assert (=> b!800047 (= res!544742 (= lt!357415 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357413 lt!357411 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43473 (_ BitVec 32)) SeekEntryResult!8411)

(assert (=> b!800047 (= lt!357415 (seekEntryOrOpen!0 lt!357413 lt!357411 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43473)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!800047 (= lt!357413 (select (store (arr!20813 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!800047 (= lt!357411 (array!43474 (store (arr!20813 a!3170) i!1163 k!2044) (size!21234 a!3170)))))

(declare-fun b!800048 () Bool)

(declare-fun res!544747 () Bool)

(assert (=> b!800048 (=> (not res!544747) (not e!443622))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!800048 (= res!544747 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21234 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20813 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21234 a!3170)) (= (select (arr!20813 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800049 () Bool)

(declare-fun res!544736 () Bool)

(assert (=> b!800049 (=> (not res!544736) (not e!443622))))

(declare-datatypes ((List!14829 0))(
  ( (Nil!14826) (Cons!14825 (h!15954 (_ BitVec 64)) (t!21152 List!14829)) )
))
(declare-fun arrayNoDuplicates!0 (array!43473 (_ BitVec 32) List!14829) Bool)

(assert (=> b!800049 (= res!544736 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14826))))

(declare-fun res!544737 () Bool)

(assert (=> start!68732 (=> (not res!544737) (not e!443625))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68732 (= res!544737 (validMask!0 mask!3266))))

(assert (=> start!68732 e!443625))

(assert (=> start!68732 true))

(declare-fun array_inv!16587 (array!43473) Bool)

(assert (=> start!68732 (array_inv!16587 a!3170)))

(declare-fun b!800050 () Bool)

(assert (=> b!800050 (= e!443625 e!443622)))

(declare-fun res!544746 () Bool)

(assert (=> b!800050 (=> (not res!544746) (not e!443622))))

(declare-fun lt!357412 () SeekEntryResult!8411)

(assert (=> b!800050 (= res!544746 (or (= lt!357412 (MissingZero!8411 i!1163)) (= lt!357412 (MissingVacant!8411 i!1163))))))

(assert (=> b!800050 (= lt!357412 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!800051 () Bool)

(declare-fun res!544739 () Bool)

(declare-fun e!443626 () Bool)

(assert (=> b!800051 (=> (not res!544739) (not e!443626))))

(declare-fun lt!357417 () (_ BitVec 32))

(assert (=> b!800051 (= res!544739 (= lt!357415 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357417 vacantAfter!23 lt!357413 lt!357411 mask!3266)))))

(declare-fun b!800052 () Bool)

(declare-fun res!544745 () Bool)

(assert (=> b!800052 (=> (not res!544745) (not e!443625))))

(assert (=> b!800052 (= res!544745 (validKeyInArray!0 (select (arr!20813 a!3170) j!153)))))

(declare-fun b!800053 () Bool)

(declare-fun res!544740 () Bool)

(assert (=> b!800053 (=> (not res!544740) (not e!443625))))

(declare-fun arrayContainsKey!0 (array!43473 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800053 (= res!544740 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800054 () Bool)

(declare-fun res!544741 () Bool)

(assert (=> b!800054 (=> (not res!544741) (not e!443622))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43473 (_ BitVec 32)) Bool)

(assert (=> b!800054 (= res!544741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800055 () Bool)

(declare-fun e!443624 () Bool)

(assert (=> b!800055 (= e!443624 e!443626)))

(declare-fun res!544744 () Bool)

(assert (=> b!800055 (=> (not res!544744) (not e!443626))))

(assert (=> b!800055 (= res!544744 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357417 #b00000000000000000000000000000000) (bvslt lt!357417 (size!21234 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800055 (= lt!357417 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!800056 () Bool)

(assert (=> b!800056 (= e!443623 e!443624)))

(declare-fun res!544735 () Bool)

(assert (=> b!800056 (=> (not res!544735) (not e!443624))))

(declare-fun lt!357418 () SeekEntryResult!8411)

(declare-fun lt!357414 () SeekEntryResult!8411)

(assert (=> b!800056 (= res!544735 (and (= lt!357418 lt!357414) (= lt!357414 (Found!8411 j!153)) (not (= (select (arr!20813 a!3170) index!1236) (select (arr!20813 a!3170) j!153)))))))

(assert (=> b!800056 (= lt!357414 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20813 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!800056 (= lt!357418 (seekEntryOrOpen!0 (select (arr!20813 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800057 () Bool)

(assert (=> b!800057 (= e!443626 false)))

(declare-fun lt!357416 () SeekEntryResult!8411)

(assert (=> b!800057 (= lt!357416 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357417 vacantBefore!23 (select (arr!20813 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800058 () Bool)

(declare-fun res!544738 () Bool)

(assert (=> b!800058 (=> (not res!544738) (not e!443625))))

(assert (=> b!800058 (= res!544738 (and (= (size!21234 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21234 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21234 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68732 res!544737) b!800058))

(assert (= (and b!800058 res!544738) b!800052))

(assert (= (and b!800052 res!544745) b!800046))

(assert (= (and b!800046 res!544743) b!800053))

(assert (= (and b!800053 res!544740) b!800050))

(assert (= (and b!800050 res!544746) b!800054))

(assert (= (and b!800054 res!544741) b!800049))

(assert (= (and b!800049 res!544736) b!800048))

(assert (= (and b!800048 res!544747) b!800047))

(assert (= (and b!800047 res!544742) b!800056))

(assert (= (and b!800056 res!544735) b!800055))

(assert (= (and b!800055 res!544744) b!800051))

(assert (= (and b!800051 res!544739) b!800057))

(declare-fun m!741211 () Bool)

(assert (=> b!800052 m!741211))

(assert (=> b!800052 m!741211))

(declare-fun m!741213 () Bool)

(assert (=> b!800052 m!741213))

(declare-fun m!741215 () Bool)

(assert (=> b!800046 m!741215))

(declare-fun m!741217 () Bool)

(assert (=> b!800050 m!741217))

(assert (=> b!800057 m!741211))

(assert (=> b!800057 m!741211))

(declare-fun m!741219 () Bool)

(assert (=> b!800057 m!741219))

(declare-fun m!741221 () Bool)

(assert (=> b!800053 m!741221))

(declare-fun m!741223 () Bool)

(assert (=> b!800047 m!741223))

(declare-fun m!741225 () Bool)

(assert (=> b!800047 m!741225))

(declare-fun m!741227 () Bool)

(assert (=> b!800047 m!741227))

(declare-fun m!741229 () Bool)

(assert (=> b!800047 m!741229))

(declare-fun m!741231 () Bool)

(assert (=> b!800048 m!741231))

(declare-fun m!741233 () Bool)

(assert (=> b!800048 m!741233))

(declare-fun m!741235 () Bool)

(assert (=> b!800054 m!741235))

(declare-fun m!741237 () Bool)

(assert (=> b!800056 m!741237))

(assert (=> b!800056 m!741211))

(assert (=> b!800056 m!741211))

(declare-fun m!741239 () Bool)

(assert (=> b!800056 m!741239))

(assert (=> b!800056 m!741211))

(declare-fun m!741241 () Bool)

(assert (=> b!800056 m!741241))

(declare-fun m!741243 () Bool)

(assert (=> b!800051 m!741243))

(declare-fun m!741245 () Bool)

(assert (=> start!68732 m!741245))

(declare-fun m!741247 () Bool)

(assert (=> start!68732 m!741247))

(declare-fun m!741249 () Bool)

(assert (=> b!800055 m!741249))

(declare-fun m!741251 () Bool)

(assert (=> b!800049 m!741251))

(push 1)

