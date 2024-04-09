; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45608 () Bool)

(assert start!45608)

(declare-fun b!501982 () Bool)

(declare-fun res!303584 () Bool)

(declare-fun e!294050 () Bool)

(assert (=> b!501982 (=> (not res!303584) (not e!294050))))

(declare-datatypes ((array!32324 0))(
  ( (array!32325 (arr!15539 (Array (_ BitVec 32) (_ BitVec 64))) (size!15903 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32324)

(declare-datatypes ((List!9750 0))(
  ( (Nil!9747) (Cons!9746 (h!10623 (_ BitVec 64)) (t!15986 List!9750)) )
))
(declare-fun arrayNoDuplicates!0 (array!32324 (_ BitVec 32) List!9750) Bool)

(assert (=> b!501982 (= res!303584 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9747))))

(declare-fun e!294049 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!228176 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!501983 () Bool)

(declare-datatypes ((SeekEntryResult!4013 0))(
  ( (MissingZero!4013 (index!18240 (_ BitVec 32))) (Found!4013 (index!18241 (_ BitVec 32))) (Intermediate!4013 (undefined!4825 Bool) (index!18242 (_ BitVec 32)) (x!47297 (_ BitVec 32))) (Undefined!4013) (MissingVacant!4013 (index!18243 (_ BitVec 32))) )
))
(declare-fun lt!228170 () SeekEntryResult!4013)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32324 (_ BitVec 32)) SeekEntryResult!4013)

(assert (=> b!501983 (= e!294049 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228176 (index!18242 lt!228170) (select (arr!15539 a!3235) j!176) a!3235 mask!3524) (Found!4013 j!176))))))

(declare-fun b!501984 () Bool)

(declare-fun res!303592 () Bool)

(declare-fun e!294048 () Bool)

(assert (=> b!501984 (=> (not res!303592) (not e!294048))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!501984 (= res!303592 (and (= (size!15903 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15903 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15903 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!501986 () Bool)

(declare-fun e!294054 () Bool)

(declare-fun e!294051 () Bool)

(assert (=> b!501986 (= e!294054 e!294051)))

(declare-fun res!303581 () Bool)

(assert (=> b!501986 (=> res!303581 e!294051)))

(assert (=> b!501986 (= res!303581 (or (bvsgt (x!47297 lt!228170) #b01111111111111111111111111111110) (bvslt lt!228176 #b00000000000000000000000000000000) (bvsge lt!228176 (size!15903 a!3235)) (bvslt (index!18242 lt!228170) #b00000000000000000000000000000000) (bvsge (index!18242 lt!228170) (size!15903 a!3235)) (not (= lt!228170 (Intermediate!4013 false (index!18242 lt!228170) (x!47297 lt!228170))))))))

(assert (=> b!501986 (= (index!18242 lt!228170) i!1204)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-datatypes ((Unit!15142 0))(
  ( (Unit!15143) )
))
(declare-fun lt!228177 () Unit!15142)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32324 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15142)

(assert (=> b!501986 (= lt!228177 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228176 #b00000000000000000000000000000000 (index!18242 lt!228170) (x!47297 lt!228170) mask!3524))))

(assert (=> b!501986 (and (or (= (select (arr!15539 a!3235) (index!18242 lt!228170)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15539 a!3235) (index!18242 lt!228170)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15539 a!3235) (index!18242 lt!228170)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15539 a!3235) (index!18242 lt!228170)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228179 () Unit!15142)

(declare-fun e!294055 () Unit!15142)

(assert (=> b!501986 (= lt!228179 e!294055)))

(declare-fun c!59480 () Bool)

(assert (=> b!501986 (= c!59480 (= (select (arr!15539 a!3235) (index!18242 lt!228170)) (select (arr!15539 a!3235) j!176)))))

(assert (=> b!501986 (and (bvslt (x!47297 lt!228170) #b01111111111111111111111111111110) (or (= (select (arr!15539 a!3235) (index!18242 lt!228170)) (select (arr!15539 a!3235) j!176)) (= (select (arr!15539 a!3235) (index!18242 lt!228170)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15539 a!3235) (index!18242 lt!228170)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!501987 () Bool)

(declare-fun e!294047 () Bool)

(assert (=> b!501987 (= e!294047 false)))

(declare-fun b!501988 () Bool)

(declare-fun e!294052 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32324 (_ BitVec 32)) SeekEntryResult!4013)

(assert (=> b!501988 (= e!294052 (= (seekEntryOrOpen!0 (select (arr!15539 a!3235) j!176) a!3235 mask!3524) (Found!4013 j!176)))))

(declare-fun b!501989 () Bool)

(declare-fun res!303588 () Bool)

(assert (=> b!501989 (=> (not res!303588) (not e!294048))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!501989 (= res!303588 (validKeyInArray!0 (select (arr!15539 a!3235) j!176)))))

(declare-fun b!501990 () Bool)

(assert (=> b!501990 (= e!294048 e!294050)))

(declare-fun res!303582 () Bool)

(assert (=> b!501990 (=> (not res!303582) (not e!294050))))

(declare-fun lt!228169 () SeekEntryResult!4013)

(assert (=> b!501990 (= res!303582 (or (= lt!228169 (MissingZero!4013 i!1204)) (= lt!228169 (MissingVacant!4013 i!1204))))))

(assert (=> b!501990 (= lt!228169 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!501991 () Bool)

(declare-fun Unit!15144 () Unit!15142)

(assert (=> b!501991 (= e!294055 Unit!15144)))

(declare-fun b!501992 () Bool)

(declare-fun res!303579 () Bool)

(assert (=> b!501992 (=> (not res!303579) (not e!294048))))

(declare-fun arrayContainsKey!0 (array!32324 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!501992 (= res!303579 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!501993 () Bool)

(declare-fun res!303591 () Bool)

(assert (=> b!501993 (=> (not res!303591) (not e!294048))))

(assert (=> b!501993 (= res!303591 (validKeyInArray!0 k!2280))))

(declare-fun b!501994 () Bool)

(declare-fun Unit!15145 () Unit!15142)

(assert (=> b!501994 (= e!294055 Unit!15145)))

(declare-fun lt!228171 () Unit!15142)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32324 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15142)

(assert (=> b!501994 (= lt!228171 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228176 #b00000000000000000000000000000000 (index!18242 lt!228170) (x!47297 lt!228170) mask!3524))))

(declare-fun lt!228178 () array!32324)

(declare-fun res!303593 () Bool)

(declare-fun lt!228175 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32324 (_ BitVec 32)) SeekEntryResult!4013)

(assert (=> b!501994 (= res!303593 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228176 lt!228175 lt!228178 mask!3524) (Intermediate!4013 false (index!18242 lt!228170) (x!47297 lt!228170))))))

(assert (=> b!501994 (=> (not res!303593) (not e!294047))))

(assert (=> b!501994 e!294047))

(declare-fun b!501995 () Bool)

(declare-fun res!303586 () Bool)

(assert (=> b!501995 (=> res!303586 e!294054)))

(assert (=> b!501995 (= res!303586 (or (undefined!4825 lt!228170) (not (is-Intermediate!4013 lt!228170))))))

(declare-fun b!501996 () Bool)

(declare-fun res!303583 () Bool)

(assert (=> b!501996 (=> res!303583 e!294051)))

(assert (=> b!501996 (= res!303583 e!294049)))

(declare-fun res!303587 () Bool)

(assert (=> b!501996 (=> (not res!303587) (not e!294049))))

(assert (=> b!501996 (= res!303587 (bvsgt #b00000000000000000000000000000000 (x!47297 lt!228170)))))

(declare-fun res!303589 () Bool)

(assert (=> start!45608 (=> (not res!303589) (not e!294048))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45608 (= res!303589 (validMask!0 mask!3524))))

(assert (=> start!45608 e!294048))

(assert (=> start!45608 true))

(declare-fun array_inv!11313 (array!32324) Bool)

(assert (=> start!45608 (array_inv!11313 a!3235)))

(declare-fun b!501985 () Bool)

(assert (=> b!501985 (= e!294050 (not e!294054))))

(declare-fun res!303580 () Bool)

(assert (=> b!501985 (=> res!303580 e!294054)))

(declare-fun lt!228172 () (_ BitVec 32))

(assert (=> b!501985 (= res!303580 (= lt!228170 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228172 lt!228175 lt!228178 mask!3524)))))

(assert (=> b!501985 (= lt!228170 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228176 (select (arr!15539 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!501985 (= lt!228172 (toIndex!0 lt!228175 mask!3524))))

(assert (=> b!501985 (= lt!228175 (select (store (arr!15539 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!501985 (= lt!228176 (toIndex!0 (select (arr!15539 a!3235) j!176) mask!3524))))

(assert (=> b!501985 (= lt!228178 (array!32325 (store (arr!15539 a!3235) i!1204 k!2280) (size!15903 a!3235)))))

(assert (=> b!501985 e!294052))

(declare-fun res!303585 () Bool)

(assert (=> b!501985 (=> (not res!303585) (not e!294052))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32324 (_ BitVec 32)) Bool)

(assert (=> b!501985 (= res!303585 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228174 () Unit!15142)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32324 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15142)

(assert (=> b!501985 (= lt!228174 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!501997 () Bool)

(declare-fun res!303590 () Bool)

(assert (=> b!501997 (=> (not res!303590) (not e!294050))))

(assert (=> b!501997 (= res!303590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!501998 () Bool)

(assert (=> b!501998 (= e!294051 true)))

(declare-fun lt!228173 () SeekEntryResult!4013)

(assert (=> b!501998 (= lt!228173 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228176 lt!228175 lt!228178 mask!3524))))

(assert (= (and start!45608 res!303589) b!501984))

(assert (= (and b!501984 res!303592) b!501989))

(assert (= (and b!501989 res!303588) b!501993))

(assert (= (and b!501993 res!303591) b!501992))

(assert (= (and b!501992 res!303579) b!501990))

(assert (= (and b!501990 res!303582) b!501997))

(assert (= (and b!501997 res!303590) b!501982))

(assert (= (and b!501982 res!303584) b!501985))

(assert (= (and b!501985 res!303585) b!501988))

(assert (= (and b!501985 (not res!303580)) b!501995))

(assert (= (and b!501995 (not res!303586)) b!501986))

(assert (= (and b!501986 c!59480) b!501994))

(assert (= (and b!501986 (not c!59480)) b!501991))

(assert (= (and b!501994 res!303593) b!501987))

(assert (= (and b!501986 (not res!303581)) b!501996))

(assert (= (and b!501996 res!303587) b!501983))

(assert (= (and b!501996 (not res!303583)) b!501998))

(declare-fun m!482979 () Bool)

(assert (=> b!501989 m!482979))

(assert (=> b!501989 m!482979))

(declare-fun m!482981 () Bool)

(assert (=> b!501989 m!482981))

(declare-fun m!482983 () Bool)

(assert (=> start!45608 m!482983))

(declare-fun m!482985 () Bool)

(assert (=> start!45608 m!482985))

(declare-fun m!482987 () Bool)

(assert (=> b!501992 m!482987))

(declare-fun m!482989 () Bool)

(assert (=> b!501997 m!482989))

(assert (=> b!501983 m!482979))

(assert (=> b!501983 m!482979))

(declare-fun m!482991 () Bool)

(assert (=> b!501983 m!482991))

(declare-fun m!482993 () Bool)

(assert (=> b!501993 m!482993))

(declare-fun m!482995 () Bool)

(assert (=> b!501998 m!482995))

(declare-fun m!482997 () Bool)

(assert (=> b!501982 m!482997))

(declare-fun m!482999 () Bool)

(assert (=> b!501994 m!482999))

(assert (=> b!501994 m!482995))

(declare-fun m!483001 () Bool)

(assert (=> b!501990 m!483001))

(declare-fun m!483003 () Bool)

(assert (=> b!501985 m!483003))

(declare-fun m!483005 () Bool)

(assert (=> b!501985 m!483005))

(declare-fun m!483007 () Bool)

(assert (=> b!501985 m!483007))

(declare-fun m!483009 () Bool)

(assert (=> b!501985 m!483009))

(assert (=> b!501985 m!482979))

(declare-fun m!483011 () Bool)

(assert (=> b!501985 m!483011))

(assert (=> b!501985 m!482979))

(declare-fun m!483013 () Bool)

(assert (=> b!501985 m!483013))

(declare-fun m!483015 () Bool)

(assert (=> b!501985 m!483015))

(assert (=> b!501985 m!482979))

(declare-fun m!483017 () Bool)

(assert (=> b!501985 m!483017))

(declare-fun m!483019 () Bool)

(assert (=> b!501986 m!483019))

(declare-fun m!483021 () Bool)

(assert (=> b!501986 m!483021))

(assert (=> b!501986 m!482979))

(assert (=> b!501988 m!482979))

(assert (=> b!501988 m!482979))

(declare-fun m!483023 () Bool)

(assert (=> b!501988 m!483023))

(push 1)

