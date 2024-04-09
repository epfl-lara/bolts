; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46690 () Bool)

(assert start!46690)

(declare-fun b!514888 () Bool)

(declare-fun res!314604 () Bool)

(declare-fun e!300679 () Bool)

(assert (=> b!514888 (=> (not res!314604) (not e!300679))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32962 0))(
  ( (array!32963 (arr!15846 (Array (_ BitVec 32) (_ BitVec 64))) (size!16210 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32962)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!514888 (= res!314604 (and (= (size!16210 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16210 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16210 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!514889 () Bool)

(declare-fun e!300680 () Bool)

(assert (=> b!514889 (= e!300679 e!300680)))

(declare-fun res!314605 () Bool)

(assert (=> b!514889 (=> (not res!314605) (not e!300680))))

(declare-datatypes ((SeekEntryResult!4320 0))(
  ( (MissingZero!4320 (index!19468 (_ BitVec 32))) (Found!4320 (index!19469 (_ BitVec 32))) (Intermediate!4320 (undefined!5132 Bool) (index!19470 (_ BitVec 32)) (x!48470 (_ BitVec 32))) (Undefined!4320) (MissingVacant!4320 (index!19471 (_ BitVec 32))) )
))
(declare-fun lt!235765 () SeekEntryResult!4320)

(assert (=> b!514889 (= res!314605 (or (= lt!235765 (MissingZero!4320 i!1204)) (= lt!235765 (MissingVacant!4320 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32962 (_ BitVec 32)) SeekEntryResult!4320)

(assert (=> b!514889 (= lt!235765 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!514890 () Bool)

(declare-fun res!314612 () Bool)

(assert (=> b!514890 (=> (not res!314612) (not e!300679))))

(declare-fun arrayContainsKey!0 (array!32962 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!514890 (= res!314612 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!514891 () Bool)

(declare-fun res!314610 () Bool)

(assert (=> b!514891 (=> (not res!314610) (not e!300680))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32962 (_ BitVec 32)) Bool)

(assert (=> b!514891 (= res!314610 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!514892 () Bool)

(declare-fun e!300682 () Bool)

(assert (=> b!514892 (= e!300680 (not e!300682))))

(declare-fun res!314611 () Bool)

(assert (=> b!514892 (=> res!314611 e!300682)))

(declare-fun lt!235764 () (_ BitVec 32))

(declare-fun lt!235763 () SeekEntryResult!4320)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32962 (_ BitVec 32)) SeekEntryResult!4320)

(assert (=> b!514892 (= res!314611 (= lt!235763 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235764 (select (store (arr!15846 a!3235) i!1204 k!2280) j!176) (array!32963 (store (arr!15846 a!3235) i!1204 k!2280) (size!16210 a!3235)) mask!3524)))))

(declare-fun lt!235766 () (_ BitVec 32))

(assert (=> b!514892 (= lt!235763 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235766 (select (arr!15846 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!514892 (= lt!235764 (toIndex!0 (select (store (arr!15846 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!514892 (= lt!235766 (toIndex!0 (select (arr!15846 a!3235) j!176) mask!3524))))

(declare-fun e!300681 () Bool)

(assert (=> b!514892 e!300681))

(declare-fun res!314603 () Bool)

(assert (=> b!514892 (=> (not res!314603) (not e!300681))))

(assert (=> b!514892 (= res!314603 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15890 0))(
  ( (Unit!15891) )
))
(declare-fun lt!235762 () Unit!15890)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32962 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15890)

(assert (=> b!514892 (= lt!235762 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!314602 () Bool)

(assert (=> start!46690 (=> (not res!314602) (not e!300679))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46690 (= res!314602 (validMask!0 mask!3524))))

(assert (=> start!46690 e!300679))

(assert (=> start!46690 true))

(declare-fun array_inv!11620 (array!32962) Bool)

(assert (=> start!46690 (array_inv!11620 a!3235)))

(declare-fun b!514893 () Bool)

(declare-fun res!314607 () Bool)

(assert (=> b!514893 (=> (not res!314607) (not e!300679))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!514893 (= res!314607 (validKeyInArray!0 k!2280))))

(declare-fun b!514894 () Bool)

(assert (=> b!514894 (= e!300681 (= (seekEntryOrOpen!0 (select (arr!15846 a!3235) j!176) a!3235 mask!3524) (Found!4320 j!176)))))

(declare-fun b!514895 () Bool)

(assert (=> b!514895 (= e!300682 true)))

(assert (=> b!514895 (and (bvslt (x!48470 lt!235763) #b01111111111111111111111111111110) (or (= (select (arr!15846 a!3235) (index!19470 lt!235763)) (select (arr!15846 a!3235) j!176)) (= (select (arr!15846 a!3235) (index!19470 lt!235763)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15846 a!3235) (index!19470 lt!235763)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!514896 () Bool)

(declare-fun res!314608 () Bool)

(assert (=> b!514896 (=> (not res!314608) (not e!300680))))

(declare-datatypes ((List!10057 0))(
  ( (Nil!10054) (Cons!10053 (h!10951 (_ BitVec 64)) (t!16293 List!10057)) )
))
(declare-fun arrayNoDuplicates!0 (array!32962 (_ BitVec 32) List!10057) Bool)

(assert (=> b!514896 (= res!314608 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10054))))

(declare-fun b!514897 () Bool)

(declare-fun res!314609 () Bool)

(assert (=> b!514897 (=> res!314609 e!300682)))

(assert (=> b!514897 (= res!314609 (or (undefined!5132 lt!235763) (not (is-Intermediate!4320 lt!235763))))))

(declare-fun b!514898 () Bool)

(declare-fun res!314606 () Bool)

(assert (=> b!514898 (=> (not res!314606) (not e!300679))))

(assert (=> b!514898 (= res!314606 (validKeyInArray!0 (select (arr!15846 a!3235) j!176)))))

(assert (= (and start!46690 res!314602) b!514888))

(assert (= (and b!514888 res!314604) b!514898))

(assert (= (and b!514898 res!314606) b!514893))

(assert (= (and b!514893 res!314607) b!514890))

(assert (= (and b!514890 res!314612) b!514889))

(assert (= (and b!514889 res!314605) b!514891))

(assert (= (and b!514891 res!314610) b!514896))

(assert (= (and b!514896 res!314608) b!514892))

(assert (= (and b!514892 res!314603) b!514894))

(assert (= (and b!514892 (not res!314611)) b!514897))

(assert (= (and b!514897 (not res!314609)) b!514895))

(declare-fun m!496207 () Bool)

(assert (=> b!514890 m!496207))

(declare-fun m!496209 () Bool)

(assert (=> b!514889 m!496209))

(declare-fun m!496211 () Bool)

(assert (=> b!514895 m!496211))

(declare-fun m!496213 () Bool)

(assert (=> b!514895 m!496213))

(declare-fun m!496215 () Bool)

(assert (=> b!514891 m!496215))

(assert (=> b!514894 m!496213))

(assert (=> b!514894 m!496213))

(declare-fun m!496217 () Bool)

(assert (=> b!514894 m!496217))

(declare-fun m!496219 () Bool)

(assert (=> start!46690 m!496219))

(declare-fun m!496221 () Bool)

(assert (=> start!46690 m!496221))

(declare-fun m!496223 () Bool)

(assert (=> b!514896 m!496223))

(declare-fun m!496225 () Bool)

(assert (=> b!514893 m!496225))

(assert (=> b!514892 m!496213))

(declare-fun m!496227 () Bool)

(assert (=> b!514892 m!496227))

(declare-fun m!496229 () Bool)

(assert (=> b!514892 m!496229))

(declare-fun m!496231 () Bool)

(assert (=> b!514892 m!496231))

(declare-fun m!496233 () Bool)

(assert (=> b!514892 m!496233))

(assert (=> b!514892 m!496213))

(declare-fun m!496235 () Bool)

(assert (=> b!514892 m!496235))

(assert (=> b!514892 m!496233))

(declare-fun m!496237 () Bool)

(assert (=> b!514892 m!496237))

(assert (=> b!514892 m!496213))

(declare-fun m!496239 () Bool)

(assert (=> b!514892 m!496239))

(assert (=> b!514892 m!496233))

(declare-fun m!496241 () Bool)

(assert (=> b!514892 m!496241))

(assert (=> b!514898 m!496213))

(assert (=> b!514898 m!496213))

(declare-fun m!496243 () Bool)

(assert (=> b!514898 m!496243))

(push 1)

