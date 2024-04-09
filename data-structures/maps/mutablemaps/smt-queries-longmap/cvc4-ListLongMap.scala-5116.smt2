; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69434 () Bool)

(assert start!69434)

(declare-fun b!809246 () Bool)

(declare-fun res!553143 () Bool)

(declare-fun e!447969 () Bool)

(assert (=> b!809246 (=> (not res!553143) (not e!447969))))

(declare-datatypes ((array!43983 0))(
  ( (array!43984 (arr!21062 (Array (_ BitVec 32) (_ BitVec 64))) (size!21483 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43983)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43983 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!809246 (= res!553143 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!553153 () Bool)

(assert (=> start!69434 (=> (not res!553153) (not e!447969))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69434 (= res!553153 (validMask!0 mask!3266))))

(assert (=> start!69434 e!447969))

(assert (=> start!69434 true))

(declare-fun array_inv!16836 (array!43983) Bool)

(assert (=> start!69434 (array_inv!16836 a!3170)))

(declare-fun b!809247 () Bool)

(declare-fun res!553150 () Bool)

(assert (=> b!809247 (=> (not res!553150) (not e!447969))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!809247 (= res!553150 (and (= (size!21483 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21483 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21483 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!809248 () Bool)

(declare-fun res!553145 () Bool)

(declare-fun e!447972 () Bool)

(assert (=> b!809248 (=> (not res!553145) (not e!447972))))

(declare-datatypes ((List!15078 0))(
  ( (Nil!15075) (Cons!15074 (h!16203 (_ BitVec 64)) (t!21401 List!15078)) )
))
(declare-fun arrayNoDuplicates!0 (array!43983 (_ BitVec 32) List!15078) Bool)

(assert (=> b!809248 (= res!553145 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15075))))

(declare-fun b!809249 () Bool)

(declare-fun res!553151 () Bool)

(assert (=> b!809249 (=> (not res!553151) (not e!447969))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!809249 (= res!553151 (validKeyInArray!0 k!2044))))

(declare-fun b!809250 () Bool)

(declare-fun e!447973 () Bool)

(assert (=> b!809250 (= e!447973 false)))

(declare-fun lt!362676 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!809250 (= lt!362676 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!809251 () Bool)

(declare-fun res!553148 () Bool)

(assert (=> b!809251 (=> (not res!553148) (not e!447972))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43983 (_ BitVec 32)) Bool)

(assert (=> b!809251 (= res!553148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!809252 () Bool)

(declare-fun res!553144 () Bool)

(assert (=> b!809252 (=> (not res!553144) (not e!447972))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!809252 (= res!553144 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21483 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21062 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21483 a!3170)) (= (select (arr!21062 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!809253 () Bool)

(declare-fun res!553147 () Bool)

(assert (=> b!809253 (=> (not res!553147) (not e!447969))))

(assert (=> b!809253 (= res!553147 (validKeyInArray!0 (select (arr!21062 a!3170) j!153)))))

(declare-fun b!809254 () Bool)

(assert (=> b!809254 (= e!447969 e!447972)))

(declare-fun res!553146 () Bool)

(assert (=> b!809254 (=> (not res!553146) (not e!447972))))

(declare-datatypes ((SeekEntryResult!8660 0))(
  ( (MissingZero!8660 (index!37007 (_ BitVec 32))) (Found!8660 (index!37008 (_ BitVec 32))) (Intermediate!8660 (undefined!9472 Bool) (index!37009 (_ BitVec 32)) (x!67837 (_ BitVec 32))) (Undefined!8660) (MissingVacant!8660 (index!37010 (_ BitVec 32))) )
))
(declare-fun lt!362678 () SeekEntryResult!8660)

(assert (=> b!809254 (= res!553146 (or (= lt!362678 (MissingZero!8660 i!1163)) (= lt!362678 (MissingVacant!8660 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43983 (_ BitVec 32)) SeekEntryResult!8660)

(assert (=> b!809254 (= lt!362678 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!809255 () Bool)

(declare-fun e!447970 () Bool)

(assert (=> b!809255 (= e!447972 e!447970)))

(declare-fun res!553149 () Bool)

(assert (=> b!809255 (=> (not res!553149) (not e!447970))))

(declare-fun lt!362677 () array!43983)

(declare-fun lt!362679 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43983 (_ BitVec 32)) SeekEntryResult!8660)

(assert (=> b!809255 (= res!553149 (= (seekEntryOrOpen!0 lt!362679 lt!362677 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362679 lt!362677 mask!3266)))))

(assert (=> b!809255 (= lt!362679 (select (store (arr!21062 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!809255 (= lt!362677 (array!43984 (store (arr!21062 a!3170) i!1163 k!2044) (size!21483 a!3170)))))

(declare-fun b!809256 () Bool)

(assert (=> b!809256 (= e!447970 e!447973)))

(declare-fun res!553152 () Bool)

(assert (=> b!809256 (=> (not res!553152) (not e!447973))))

(declare-fun lt!362680 () SeekEntryResult!8660)

(declare-fun lt!362675 () SeekEntryResult!8660)

(assert (=> b!809256 (= res!553152 (and (= lt!362680 lt!362675) (= lt!362675 (Found!8660 j!153)) (not (= (select (arr!21062 a!3170) index!1236) (select (arr!21062 a!3170) j!153)))))))

(assert (=> b!809256 (= lt!362675 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21062 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!809256 (= lt!362680 (seekEntryOrOpen!0 (select (arr!21062 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!69434 res!553153) b!809247))

(assert (= (and b!809247 res!553150) b!809253))

(assert (= (and b!809253 res!553147) b!809249))

(assert (= (and b!809249 res!553151) b!809246))

(assert (= (and b!809246 res!553143) b!809254))

(assert (= (and b!809254 res!553146) b!809251))

(assert (= (and b!809251 res!553148) b!809248))

(assert (= (and b!809248 res!553145) b!809252))

(assert (= (and b!809252 res!553144) b!809255))

(assert (= (and b!809255 res!553149) b!809256))

(assert (= (and b!809256 res!553152) b!809250))

(declare-fun m!751529 () Bool)

(assert (=> start!69434 m!751529))

(declare-fun m!751531 () Bool)

(assert (=> start!69434 m!751531))

(declare-fun m!751533 () Bool)

(assert (=> b!809253 m!751533))

(assert (=> b!809253 m!751533))

(declare-fun m!751535 () Bool)

(assert (=> b!809253 m!751535))

(declare-fun m!751537 () Bool)

(assert (=> b!809256 m!751537))

(assert (=> b!809256 m!751533))

(assert (=> b!809256 m!751533))

(declare-fun m!751539 () Bool)

(assert (=> b!809256 m!751539))

(assert (=> b!809256 m!751533))

(declare-fun m!751541 () Bool)

(assert (=> b!809256 m!751541))

(declare-fun m!751543 () Bool)

(assert (=> b!809252 m!751543))

(declare-fun m!751545 () Bool)

(assert (=> b!809252 m!751545))

(declare-fun m!751547 () Bool)

(assert (=> b!809246 m!751547))

(declare-fun m!751549 () Bool)

(assert (=> b!809251 m!751549))

(declare-fun m!751551 () Bool)

(assert (=> b!809254 m!751551))

(declare-fun m!751553 () Bool)

(assert (=> b!809250 m!751553))

(declare-fun m!751555 () Bool)

(assert (=> b!809255 m!751555))

(declare-fun m!751557 () Bool)

(assert (=> b!809255 m!751557))

(declare-fun m!751559 () Bool)

(assert (=> b!809255 m!751559))

(declare-fun m!751561 () Bool)

(assert (=> b!809255 m!751561))

(declare-fun m!751563 () Bool)

(assert (=> b!809249 m!751563))

(declare-fun m!751565 () Bool)

(assert (=> b!809248 m!751565))

(push 1)

