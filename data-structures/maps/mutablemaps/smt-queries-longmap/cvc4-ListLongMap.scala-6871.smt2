; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86516 () Bool)

(assert start!86516)

(declare-fun b!1001443 () Bool)

(declare-fun e!564326 () Bool)

(declare-fun e!564320 () Bool)

(assert (=> b!1001443 (= e!564326 e!564320)))

(declare-fun res!671084 () Bool)

(assert (=> b!1001443 (=> (not res!671084) (not e!564320))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9388 0))(
  ( (MissingZero!9388 (index!39922 (_ BitVec 32))) (Found!9388 (index!39923 (_ BitVec 32))) (Intermediate!9388 (undefined!10200 Bool) (index!39924 (_ BitVec 32)) (x!87369 (_ BitVec 32))) (Undefined!9388) (MissingVacant!9388 (index!39925 (_ BitVec 32))) )
))
(declare-fun lt!442689 () SeekEntryResult!9388)

(declare-fun lt!442691 () (_ BitVec 64))

(declare-datatypes ((array!63269 0))(
  ( (array!63270 (arr!30456 (Array (_ BitVec 32) (_ BitVec 64))) (size!30959 (_ BitVec 32))) )
))
(declare-fun lt!442695 () array!63269)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63269 (_ BitVec 32)) SeekEntryResult!9388)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001443 (= res!671084 (not (= lt!442689 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442691 mask!3464) lt!442691 lt!442695 mask!3464))))))

(declare-fun a!3219 () array!63269)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1001443 (= lt!442691 (select (store (arr!30456 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1001443 (= lt!442695 (array!63270 (store (arr!30456 a!3219) i!1194 k!2224) (size!30959 a!3219)))))

(declare-fun b!1001444 () Bool)

(declare-fun res!671091 () Bool)

(declare-fun e!564325 () Bool)

(assert (=> b!1001444 (=> (not res!671091) (not e!564325))))

(assert (=> b!1001444 (= res!671091 (and (= (size!30959 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30959 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30959 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001445 () Bool)

(declare-fun e!564321 () Bool)

(assert (=> b!1001445 (= e!564320 e!564321)))

(declare-fun res!671078 () Bool)

(assert (=> b!1001445 (=> (not res!671078) (not e!564321))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!442694 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1001445 (= res!671078 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!442694 #b00000000000000000000000000000000) (bvslt lt!442694 (size!30959 a!3219))))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001445 (= lt!442694 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1001446 () Bool)

(declare-fun res!671088 () Bool)

(declare-fun e!564323 () Bool)

(assert (=> b!1001446 (=> (not res!671088) (not e!564323))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1001446 (= res!671088 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30959 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30959 a!3219))))))

(declare-fun b!1001447 () Bool)

(declare-fun e!564324 () Bool)

(assert (=> b!1001447 (= e!564324 e!564326)))

(declare-fun res!671081 () Bool)

(assert (=> b!1001447 (=> (not res!671081) (not e!564326))))

(declare-fun lt!442688 () SeekEntryResult!9388)

(declare-fun lt!442692 () SeekEntryResult!9388)

(assert (=> b!1001447 (= res!671081 (= lt!442688 lt!442692))))

(assert (=> b!1001447 (= lt!442688 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30456 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001448 () Bool)

(declare-fun res!671082 () Bool)

(assert (=> b!1001448 (=> (not res!671082) (not e!564325))))

(declare-fun arrayContainsKey!0 (array!63269 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001448 (= res!671082 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1001449 () Bool)

(declare-fun res!671090 () Bool)

(assert (=> b!1001449 (=> (not res!671090) (not e!564321))))

(assert (=> b!1001449 (= res!671090 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442694 (select (arr!30456 a!3219) j!170) a!3219 mask!3464) lt!442692))))

(declare-fun b!1001450 () Bool)

(assert (=> b!1001450 (= e!564321 false)))

(declare-fun lt!442693 () SeekEntryResult!9388)

(assert (=> b!1001450 (= lt!442693 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442694 lt!442691 lt!442695 mask!3464))))

(declare-fun b!1001451 () Bool)

(declare-fun res!671089 () Bool)

(assert (=> b!1001451 (=> (not res!671089) (not e!564323))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63269 (_ BitVec 32)) Bool)

(assert (=> b!1001451 (= res!671089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!671083 () Bool)

(assert (=> start!86516 (=> (not res!671083) (not e!564325))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86516 (= res!671083 (validMask!0 mask!3464))))

(assert (=> start!86516 e!564325))

(declare-fun array_inv!23446 (array!63269) Bool)

(assert (=> start!86516 (array_inv!23446 a!3219)))

(assert (=> start!86516 true))

(declare-fun b!1001452 () Bool)

(assert (=> b!1001452 (= e!564325 e!564323)))

(declare-fun res!671092 () Bool)

(assert (=> b!1001452 (=> (not res!671092) (not e!564323))))

(declare-fun lt!442690 () SeekEntryResult!9388)

(assert (=> b!1001452 (= res!671092 (or (= lt!442690 (MissingVacant!9388 i!1194)) (= lt!442690 (MissingZero!9388 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63269 (_ BitVec 32)) SeekEntryResult!9388)

(assert (=> b!1001452 (= lt!442690 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1001453 () Bool)

(assert (=> b!1001453 (= e!564323 e!564324)))

(declare-fun res!671079 () Bool)

(assert (=> b!1001453 (=> (not res!671079) (not e!564324))))

(assert (=> b!1001453 (= res!671079 (= lt!442689 lt!442692))))

(assert (=> b!1001453 (= lt!442692 (Intermediate!9388 false resIndex!38 resX!38))))

(assert (=> b!1001453 (= lt!442689 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30456 a!3219) j!170) mask!3464) (select (arr!30456 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001454 () Bool)

(declare-fun res!671086 () Bool)

(assert (=> b!1001454 (=> (not res!671086) (not e!564325))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001454 (= res!671086 (validKeyInArray!0 (select (arr!30456 a!3219) j!170)))))

(declare-fun b!1001455 () Bool)

(declare-fun res!671080 () Bool)

(assert (=> b!1001455 (=> (not res!671080) (not e!564320))))

(assert (=> b!1001455 (= res!671080 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1001456 () Bool)

(declare-fun res!671077 () Bool)

(assert (=> b!1001456 (=> (not res!671077) (not e!564323))))

(declare-datatypes ((List!21258 0))(
  ( (Nil!21255) (Cons!21254 (h!22431 (_ BitVec 64)) (t!30267 List!21258)) )
))
(declare-fun arrayNoDuplicates!0 (array!63269 (_ BitVec 32) List!21258) Bool)

(assert (=> b!1001456 (= res!671077 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21255))))

(declare-fun b!1001457 () Bool)

(declare-fun res!671087 () Bool)

(assert (=> b!1001457 (=> (not res!671087) (not e!564325))))

(assert (=> b!1001457 (= res!671087 (validKeyInArray!0 k!2224))))

(declare-fun b!1001458 () Bool)

(declare-fun res!671085 () Bool)

(assert (=> b!1001458 (=> (not res!671085) (not e!564320))))

(assert (=> b!1001458 (= res!671085 (not (= lt!442688 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442691 lt!442695 mask!3464))))))

(assert (= (and start!86516 res!671083) b!1001444))

(assert (= (and b!1001444 res!671091) b!1001454))

(assert (= (and b!1001454 res!671086) b!1001457))

(assert (= (and b!1001457 res!671087) b!1001448))

(assert (= (and b!1001448 res!671082) b!1001452))

(assert (= (and b!1001452 res!671092) b!1001451))

(assert (= (and b!1001451 res!671089) b!1001456))

(assert (= (and b!1001456 res!671077) b!1001446))

(assert (= (and b!1001446 res!671088) b!1001453))

(assert (= (and b!1001453 res!671079) b!1001447))

(assert (= (and b!1001447 res!671081) b!1001443))

(assert (= (and b!1001443 res!671084) b!1001458))

(assert (= (and b!1001458 res!671085) b!1001455))

(assert (= (and b!1001455 res!671080) b!1001445))

(assert (= (and b!1001445 res!671078) b!1001449))

(assert (= (and b!1001449 res!671090) b!1001450))

(declare-fun m!927581 () Bool)

(assert (=> b!1001457 m!927581))

(declare-fun m!927583 () Bool)

(assert (=> start!86516 m!927583))

(declare-fun m!927585 () Bool)

(assert (=> start!86516 m!927585))

(declare-fun m!927587 () Bool)

(assert (=> b!1001454 m!927587))

(assert (=> b!1001454 m!927587))

(declare-fun m!927589 () Bool)

(assert (=> b!1001454 m!927589))

(declare-fun m!927591 () Bool)

(assert (=> b!1001456 m!927591))

(declare-fun m!927593 () Bool)

(assert (=> b!1001448 m!927593))

(declare-fun m!927595 () Bool)

(assert (=> b!1001445 m!927595))

(assert (=> b!1001449 m!927587))

(assert (=> b!1001449 m!927587))

(declare-fun m!927597 () Bool)

(assert (=> b!1001449 m!927597))

(declare-fun m!927599 () Bool)

(assert (=> b!1001458 m!927599))

(declare-fun m!927601 () Bool)

(assert (=> b!1001452 m!927601))

(declare-fun m!927603 () Bool)

(assert (=> b!1001443 m!927603))

(assert (=> b!1001443 m!927603))

(declare-fun m!927605 () Bool)

(assert (=> b!1001443 m!927605))

(declare-fun m!927607 () Bool)

(assert (=> b!1001443 m!927607))

(declare-fun m!927609 () Bool)

(assert (=> b!1001443 m!927609))

(assert (=> b!1001447 m!927587))

(assert (=> b!1001447 m!927587))

(declare-fun m!927611 () Bool)

(assert (=> b!1001447 m!927611))

(assert (=> b!1001453 m!927587))

(assert (=> b!1001453 m!927587))

(declare-fun m!927613 () Bool)

(assert (=> b!1001453 m!927613))

(assert (=> b!1001453 m!927613))

(assert (=> b!1001453 m!927587))

(declare-fun m!927615 () Bool)

(assert (=> b!1001453 m!927615))

(declare-fun m!927617 () Bool)

(assert (=> b!1001450 m!927617))

(declare-fun m!927619 () Bool)

(assert (=> b!1001451 m!927619))

(push 1)

(assert (not b!1001452))

