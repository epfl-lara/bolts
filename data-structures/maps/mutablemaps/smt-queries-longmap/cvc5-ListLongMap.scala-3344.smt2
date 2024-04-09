; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46066 () Bool)

(assert start!46066)

(declare-fun b!509859 () Bool)

(declare-fun res!310861 () Bool)

(declare-fun e!298087 () Bool)

(assert (=> b!509859 (=> (not res!310861) (not e!298087))))

(declare-datatypes ((array!32737 0))(
  ( (array!32738 (arr!15744 (Array (_ BitVec 32) (_ BitVec 64))) (size!16108 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32737)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32737 (_ BitVec 32)) Bool)

(assert (=> b!509859 (= res!310861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509860 () Bool)

(assert (=> b!509860 (= e!298087 (not true))))

(declare-fun lt!233090 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4218 0))(
  ( (MissingZero!4218 (index!19060 (_ BitVec 32))) (Found!4218 (index!19061 (_ BitVec 32))) (Intermediate!4218 (undefined!5030 Bool) (index!19062 (_ BitVec 32)) (x!48054 (_ BitVec 32))) (Undefined!4218) (MissingVacant!4218 (index!19063 (_ BitVec 32))) )
))
(declare-fun lt!233093 () SeekEntryResult!4218)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32737 (_ BitVec 32)) SeekEntryResult!4218)

(assert (=> b!509860 (= lt!233093 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233090 (select (store (arr!15744 a!3235) i!1204 k!2280) j!176) (array!32738 (store (arr!15744 a!3235) i!1204 k!2280) (size!16108 a!3235)) mask!3524))))

(declare-fun lt!233091 () (_ BitVec 32))

(declare-fun lt!233092 () SeekEntryResult!4218)

(assert (=> b!509860 (= lt!233092 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233091 (select (arr!15744 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509860 (= lt!233090 (toIndex!0 (select (store (arr!15744 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509860 (= lt!233091 (toIndex!0 (select (arr!15744 a!3235) j!176) mask!3524))))

(declare-fun e!298088 () Bool)

(assert (=> b!509860 e!298088))

(declare-fun res!310862 () Bool)

(assert (=> b!509860 (=> (not res!310862) (not e!298088))))

(assert (=> b!509860 (= res!310862 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15686 0))(
  ( (Unit!15687) )
))
(declare-fun lt!233088 () Unit!15686)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32737 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15686)

(assert (=> b!509860 (= lt!233088 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509862 () Bool)

(declare-fun res!310858 () Bool)

(declare-fun e!298090 () Bool)

(assert (=> b!509862 (=> (not res!310858) (not e!298090))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509862 (= res!310858 (validKeyInArray!0 k!2280))))

(declare-fun b!509863 () Bool)

(declare-fun res!310854 () Bool)

(assert (=> b!509863 (=> (not res!310854) (not e!298090))))

(declare-fun arrayContainsKey!0 (array!32737 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509863 (= res!310854 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!509864 () Bool)

(declare-fun res!310857 () Bool)

(assert (=> b!509864 (=> (not res!310857) (not e!298090))))

(assert (=> b!509864 (= res!310857 (validKeyInArray!0 (select (arr!15744 a!3235) j!176)))))

(declare-fun b!509865 () Bool)

(declare-fun res!310855 () Bool)

(assert (=> b!509865 (=> (not res!310855) (not e!298090))))

(assert (=> b!509865 (= res!310855 (and (= (size!16108 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16108 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16108 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509866 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32737 (_ BitVec 32)) SeekEntryResult!4218)

(assert (=> b!509866 (= e!298088 (= (seekEntryOrOpen!0 (select (arr!15744 a!3235) j!176) a!3235 mask!3524) (Found!4218 j!176)))))

(declare-fun b!509867 () Bool)

(declare-fun res!310859 () Bool)

(assert (=> b!509867 (=> (not res!310859) (not e!298087))))

(declare-datatypes ((List!9955 0))(
  ( (Nil!9952) (Cons!9951 (h!10828 (_ BitVec 64)) (t!16191 List!9955)) )
))
(declare-fun arrayNoDuplicates!0 (array!32737 (_ BitVec 32) List!9955) Bool)

(assert (=> b!509867 (= res!310859 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9952))))

(declare-fun res!310856 () Bool)

(assert (=> start!46066 (=> (not res!310856) (not e!298090))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46066 (= res!310856 (validMask!0 mask!3524))))

(assert (=> start!46066 e!298090))

(assert (=> start!46066 true))

(declare-fun array_inv!11518 (array!32737) Bool)

(assert (=> start!46066 (array_inv!11518 a!3235)))

(declare-fun b!509861 () Bool)

(assert (=> b!509861 (= e!298090 e!298087)))

(declare-fun res!310860 () Bool)

(assert (=> b!509861 (=> (not res!310860) (not e!298087))))

(declare-fun lt!233089 () SeekEntryResult!4218)

(assert (=> b!509861 (= res!310860 (or (= lt!233089 (MissingZero!4218 i!1204)) (= lt!233089 (MissingVacant!4218 i!1204))))))

(assert (=> b!509861 (= lt!233089 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!46066 res!310856) b!509865))

(assert (= (and b!509865 res!310855) b!509864))

(assert (= (and b!509864 res!310857) b!509862))

(assert (= (and b!509862 res!310858) b!509863))

(assert (= (and b!509863 res!310854) b!509861))

(assert (= (and b!509861 res!310860) b!509859))

(assert (= (and b!509859 res!310861) b!509867))

(assert (= (and b!509867 res!310859) b!509860))

(assert (= (and b!509860 res!310862) b!509866))

(declare-fun m!490987 () Bool)

(assert (=> b!509859 m!490987))

(declare-fun m!490989 () Bool)

(assert (=> b!509864 m!490989))

(assert (=> b!509864 m!490989))

(declare-fun m!490991 () Bool)

(assert (=> b!509864 m!490991))

(declare-fun m!490993 () Bool)

(assert (=> b!509860 m!490993))

(declare-fun m!490995 () Bool)

(assert (=> b!509860 m!490995))

(declare-fun m!490997 () Bool)

(assert (=> b!509860 m!490997))

(declare-fun m!490999 () Bool)

(assert (=> b!509860 m!490999))

(assert (=> b!509860 m!490993))

(assert (=> b!509860 m!490989))

(declare-fun m!491001 () Bool)

(assert (=> b!509860 m!491001))

(assert (=> b!509860 m!490989))

(declare-fun m!491003 () Bool)

(assert (=> b!509860 m!491003))

(assert (=> b!509860 m!490989))

(declare-fun m!491005 () Bool)

(assert (=> b!509860 m!491005))

(assert (=> b!509860 m!490993))

(declare-fun m!491007 () Bool)

(assert (=> b!509860 m!491007))

(declare-fun m!491009 () Bool)

(assert (=> b!509861 m!491009))

(declare-fun m!491011 () Bool)

(assert (=> b!509862 m!491011))

(declare-fun m!491013 () Bool)

(assert (=> b!509863 m!491013))

(declare-fun m!491015 () Bool)

(assert (=> b!509867 m!491015))

(declare-fun m!491017 () Bool)

(assert (=> start!46066 m!491017))

(declare-fun m!491019 () Bool)

(assert (=> start!46066 m!491019))

(assert (=> b!509866 m!490989))

(assert (=> b!509866 m!490989))

(declare-fun m!491021 () Bool)

(assert (=> b!509866 m!491021))

(push 1)

