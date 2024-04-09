; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69226 () Bool)

(assert start!69226)

(declare-fun b!807074 () Bool)

(declare-fun e!446899 () Bool)

(declare-fun e!446896 () Bool)

(assert (=> b!807074 (= e!446899 e!446896)))

(declare-fun res!551377 () Bool)

(assert (=> b!807074 (=> (not res!551377) (not e!446896))))

(declare-datatypes ((SeekEntryResult!8610 0))(
  ( (MissingZero!8610 (index!36807 (_ BitVec 32))) (Found!8610 (index!36808 (_ BitVec 32))) (Intermediate!8610 (undefined!9422 Bool) (index!36809 (_ BitVec 32)) (x!67647 (_ BitVec 32))) (Undefined!8610) (MissingVacant!8610 (index!36810 (_ BitVec 32))) )
))
(declare-fun lt!361570 () SeekEntryResult!8610)

(declare-datatypes ((array!43877 0))(
  ( (array!43878 (arr!21012 (Array (_ BitVec 32) (_ BitVec 64))) (size!21433 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43877)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!361566 () SeekEntryResult!8610)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!807074 (= res!551377 (and (= lt!361570 lt!361566) (= lt!361566 (Found!8610 j!153)) (not (= (select (arr!21012 a!3170) index!1236) (select (arr!21012 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43877 (_ BitVec 32)) SeekEntryResult!8610)

(assert (=> b!807074 (= lt!361566 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21012 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43877 (_ BitVec 32)) SeekEntryResult!8610)

(assert (=> b!807074 (= lt!361570 (seekEntryOrOpen!0 (select (arr!21012 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807075 () Bool)

(declare-fun e!446897 () Bool)

(declare-fun e!446898 () Bool)

(assert (=> b!807075 (= e!446897 e!446898)))

(declare-fun res!551375 () Bool)

(assert (=> b!807075 (=> (not res!551375) (not e!446898))))

(declare-fun lt!361569 () SeekEntryResult!8610)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!807075 (= res!551375 (or (= lt!361569 (MissingZero!8610 i!1163)) (= lt!361569 (MissingVacant!8610 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!807075 (= lt!361569 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!807076 () Bool)

(declare-fun res!551369 () Bool)

(assert (=> b!807076 (=> (not res!551369) (not e!446897))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807076 (= res!551369 (validKeyInArray!0 (select (arr!21012 a!3170) j!153)))))

(declare-fun b!807077 () Bool)

(declare-fun res!551371 () Bool)

(assert (=> b!807077 (=> (not res!551371) (not e!446897))))

(assert (=> b!807077 (= res!551371 (and (= (size!21433 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21433 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21433 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807078 () Bool)

(assert (=> b!807078 (= e!446898 e!446899)))

(declare-fun res!551368 () Bool)

(assert (=> b!807078 (=> (not res!551368) (not e!446899))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!361568 () array!43877)

(declare-fun lt!361567 () (_ BitVec 64))

(assert (=> b!807078 (= res!551368 (= (seekEntryOrOpen!0 lt!361567 lt!361568 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361567 lt!361568 mask!3266)))))

(assert (=> b!807078 (= lt!361567 (select (store (arr!21012 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!807078 (= lt!361568 (array!43878 (store (arr!21012 a!3170) i!1163 k!2044) (size!21433 a!3170)))))

(declare-fun b!807079 () Bool)

(assert (=> b!807079 (= e!446896 false)))

(declare-fun lt!361565 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807079 (= lt!361565 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807080 () Bool)

(declare-fun res!551373 () Bool)

(assert (=> b!807080 (=> (not res!551373) (not e!446898))))

(assert (=> b!807080 (= res!551373 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21433 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21012 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21433 a!3170)) (= (select (arr!21012 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807081 () Bool)

(declare-fun res!551370 () Bool)

(assert (=> b!807081 (=> (not res!551370) (not e!446897))))

(assert (=> b!807081 (= res!551370 (validKeyInArray!0 k!2044))))

(declare-fun b!807082 () Bool)

(declare-fun res!551376 () Bool)

(assert (=> b!807082 (=> (not res!551376) (not e!446898))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43877 (_ BitVec 32)) Bool)

(assert (=> b!807082 (= res!551376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!551367 () Bool)

(assert (=> start!69226 (=> (not res!551367) (not e!446897))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69226 (= res!551367 (validMask!0 mask!3266))))

(assert (=> start!69226 e!446897))

(assert (=> start!69226 true))

(declare-fun array_inv!16786 (array!43877) Bool)

(assert (=> start!69226 (array_inv!16786 a!3170)))

(declare-fun b!807083 () Bool)

(declare-fun res!551372 () Bool)

(assert (=> b!807083 (=> (not res!551372) (not e!446897))))

(declare-fun arrayContainsKey!0 (array!43877 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807083 (= res!551372 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807084 () Bool)

(declare-fun res!551374 () Bool)

(assert (=> b!807084 (=> (not res!551374) (not e!446898))))

(declare-datatypes ((List!15028 0))(
  ( (Nil!15025) (Cons!15024 (h!16153 (_ BitVec 64)) (t!21351 List!15028)) )
))
(declare-fun arrayNoDuplicates!0 (array!43877 (_ BitVec 32) List!15028) Bool)

(assert (=> b!807084 (= res!551374 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15025))))

(assert (= (and start!69226 res!551367) b!807077))

(assert (= (and b!807077 res!551371) b!807076))

(assert (= (and b!807076 res!551369) b!807081))

(assert (= (and b!807081 res!551370) b!807083))

(assert (= (and b!807083 res!551372) b!807075))

(assert (= (and b!807075 res!551375) b!807082))

(assert (= (and b!807082 res!551376) b!807084))

(assert (= (and b!807084 res!551374) b!807080))

(assert (= (and b!807080 res!551373) b!807078))

(assert (= (and b!807078 res!551368) b!807074))

(assert (= (and b!807074 res!551377) b!807079))

(declare-fun m!749173 () Bool)

(assert (=> start!69226 m!749173))

(declare-fun m!749175 () Bool)

(assert (=> start!69226 m!749175))

(declare-fun m!749177 () Bool)

(assert (=> b!807084 m!749177))

(declare-fun m!749179 () Bool)

(assert (=> b!807081 m!749179))

(declare-fun m!749181 () Bool)

(assert (=> b!807076 m!749181))

(assert (=> b!807076 m!749181))

(declare-fun m!749183 () Bool)

(assert (=> b!807076 m!749183))

(declare-fun m!749185 () Bool)

(assert (=> b!807075 m!749185))

(declare-fun m!749187 () Bool)

(assert (=> b!807074 m!749187))

(assert (=> b!807074 m!749181))

(assert (=> b!807074 m!749181))

(declare-fun m!749189 () Bool)

(assert (=> b!807074 m!749189))

(assert (=> b!807074 m!749181))

(declare-fun m!749191 () Bool)

(assert (=> b!807074 m!749191))

(declare-fun m!749193 () Bool)

(assert (=> b!807083 m!749193))

(declare-fun m!749195 () Bool)

(assert (=> b!807080 m!749195))

(declare-fun m!749197 () Bool)

(assert (=> b!807080 m!749197))

(declare-fun m!749199 () Bool)

(assert (=> b!807078 m!749199))

(declare-fun m!749201 () Bool)

(assert (=> b!807078 m!749201))

(declare-fun m!749203 () Bool)

(assert (=> b!807078 m!749203))

(declare-fun m!749205 () Bool)

(assert (=> b!807078 m!749205))

(declare-fun m!749207 () Bool)

(assert (=> b!807082 m!749207))

(declare-fun m!749209 () Bool)

(assert (=> b!807079 m!749209))

(push 1)

