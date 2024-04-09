; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68286 () Bool)

(assert start!68286)

(declare-fun b!792890 () Bool)

(declare-fun res!537579 () Bool)

(declare-fun e!440546 () Bool)

(assert (=> b!792890 (=> (not res!537579) (not e!440546))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792890 (= res!537579 (validKeyInArray!0 k0!2044))))

(declare-fun b!792891 () Bool)

(declare-fun res!537582 () Bool)

(assert (=> b!792891 (=> (not res!537582) (not e!440546))))

(declare-datatypes ((array!43027 0))(
  ( (array!43028 (arr!20590 (Array (_ BitVec 32) (_ BitVec 64))) (size!21011 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43027)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!792891 (= res!537582 (validKeyInArray!0 (select (arr!20590 a!3170) j!153)))))

(declare-fun b!792892 () Bool)

(declare-fun res!537584 () Bool)

(assert (=> b!792892 (=> (not res!537584) (not e!440546))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!792892 (= res!537584 (and (= (size!21011 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21011 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21011 a!3170)) (not (= i!1163 j!153))))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun b!792893 () Bool)

(declare-fun e!440548 () Bool)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!792893 (= e!440548 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21011 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20590 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21011 a!3170)) (= (select (arr!20590 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvslt mask!3266 #b00000000000000000000000000000000)))))

(declare-fun b!792894 () Bool)

(declare-fun res!537580 () Bool)

(assert (=> b!792894 (=> (not res!537580) (not e!440548))))

(declare-datatypes ((List!14606 0))(
  ( (Nil!14603) (Cons!14602 (h!15731 (_ BitVec 64)) (t!20929 List!14606)) )
))
(declare-fun arrayNoDuplicates!0 (array!43027 (_ BitVec 32) List!14606) Bool)

(assert (=> b!792894 (= res!537580 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14603))))

(declare-fun b!792895 () Bool)

(assert (=> b!792895 (= e!440546 e!440548)))

(declare-fun res!537581 () Bool)

(assert (=> b!792895 (=> (not res!537581) (not e!440548))))

(declare-datatypes ((SeekEntryResult!8188 0))(
  ( (MissingZero!8188 (index!35119 (_ BitVec 32))) (Found!8188 (index!35120 (_ BitVec 32))) (Intermediate!8188 (undefined!9000 Bool) (index!35121 (_ BitVec 32)) (x!66091 (_ BitVec 32))) (Undefined!8188) (MissingVacant!8188 (index!35122 (_ BitVec 32))) )
))
(declare-fun lt!353581 () SeekEntryResult!8188)

(assert (=> b!792895 (= res!537581 (or (= lt!353581 (MissingZero!8188 i!1163)) (= lt!353581 (MissingVacant!8188 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43027 (_ BitVec 32)) SeekEntryResult!8188)

(assert (=> b!792895 (= lt!353581 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!792896 () Bool)

(declare-fun res!537585 () Bool)

(assert (=> b!792896 (=> (not res!537585) (not e!440546))))

(declare-fun arrayContainsKey!0 (array!43027 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792896 (= res!537585 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792897 () Bool)

(declare-fun res!537586 () Bool)

(assert (=> b!792897 (=> (not res!537586) (not e!440548))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43027 (_ BitVec 32)) Bool)

(assert (=> b!792897 (= res!537586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!537583 () Bool)

(assert (=> start!68286 (=> (not res!537583) (not e!440546))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68286 (= res!537583 (validMask!0 mask!3266))))

(assert (=> start!68286 e!440546))

(assert (=> start!68286 true))

(declare-fun array_inv!16364 (array!43027) Bool)

(assert (=> start!68286 (array_inv!16364 a!3170)))

(assert (= (and start!68286 res!537583) b!792892))

(assert (= (and b!792892 res!537584) b!792891))

(assert (= (and b!792891 res!537582) b!792890))

(assert (= (and b!792890 res!537579) b!792896))

(assert (= (and b!792896 res!537585) b!792895))

(assert (= (and b!792895 res!537581) b!792897))

(assert (= (and b!792897 res!537586) b!792894))

(assert (= (and b!792894 res!537580) b!792893))

(declare-fun m!733481 () Bool)

(assert (=> b!792896 m!733481))

(declare-fun m!733483 () Bool)

(assert (=> b!792895 m!733483))

(declare-fun m!733485 () Bool)

(assert (=> b!792894 m!733485))

(declare-fun m!733487 () Bool)

(assert (=> b!792890 m!733487))

(declare-fun m!733489 () Bool)

(assert (=> b!792897 m!733489))

(declare-fun m!733491 () Bool)

(assert (=> b!792891 m!733491))

(assert (=> b!792891 m!733491))

(declare-fun m!733493 () Bool)

(assert (=> b!792891 m!733493))

(declare-fun m!733495 () Bool)

(assert (=> b!792893 m!733495))

(declare-fun m!733497 () Bool)

(assert (=> b!792893 m!733497))

(declare-fun m!733499 () Bool)

(assert (=> start!68286 m!733499))

(declare-fun m!733501 () Bool)

(assert (=> start!68286 m!733501))

(check-sat (not b!792897) (not b!792891) (not b!792894) (not b!792896) (not b!792895) (not b!792890) (not start!68286))
(check-sat)
