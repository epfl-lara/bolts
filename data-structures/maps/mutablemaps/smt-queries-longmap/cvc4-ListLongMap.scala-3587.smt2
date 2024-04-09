; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49328 () Bool)

(assert start!49328)

(declare-fun b!542919 () Bool)

(declare-fun res!337628 () Bool)

(declare-fun e!314086 () Bool)

(assert (=> b!542919 (=> (not res!337628) (not e!314086))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34292 0))(
  ( (array!34293 (arr!16475 (Array (_ BitVec 32) (_ BitVec 64))) (size!16839 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34292)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542919 (= res!337628 (and (= (size!16839 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16839 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16839 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542920 () Bool)

(declare-fun res!337622 () Bool)

(declare-fun e!314085 () Bool)

(assert (=> b!542920 (=> (not res!337622) (not e!314085))))

(declare-datatypes ((SeekEntryResult!4940 0))(
  ( (MissingZero!4940 (index!21984 (_ BitVec 32))) (Found!4940 (index!21985 (_ BitVec 32))) (Intermediate!4940 (undefined!5752 Bool) (index!21986 (_ BitVec 32)) (x!50918 (_ BitVec 32))) (Undefined!4940) (MissingVacant!4940 (index!21987 (_ BitVec 32))) )
))
(declare-fun lt!248054 () SeekEntryResult!4940)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34292 (_ BitVec 32)) SeekEntryResult!4940)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542920 (= res!337622 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16475 a!3154) j!147) mask!3216) (select (arr!16475 a!3154) j!147) a!3154 mask!3216) lt!248054))))

(declare-fun b!542921 () Bool)

(declare-fun res!337626 () Bool)

(assert (=> b!542921 (=> (not res!337626) (not e!314086))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34292 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542921 (= res!337626 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542922 () Bool)

(declare-fun res!337624 () Bool)

(assert (=> b!542922 (=> (not res!337624) (not e!314086))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542922 (= res!337624 (validKeyInArray!0 k!1998))))

(declare-fun res!337630 () Bool)

(assert (=> start!49328 (=> (not res!337630) (not e!314086))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49328 (= res!337630 (validMask!0 mask!3216))))

(assert (=> start!49328 e!314086))

(assert (=> start!49328 true))

(declare-fun array_inv!12249 (array!34292) Bool)

(assert (=> start!49328 (array_inv!12249 a!3154)))

(declare-fun b!542923 () Bool)

(declare-fun e!314083 () Bool)

(assert (=> b!542923 (= e!314086 e!314083)))

(declare-fun res!337625 () Bool)

(assert (=> b!542923 (=> (not res!337625) (not e!314083))))

(declare-fun lt!248053 () SeekEntryResult!4940)

(assert (=> b!542923 (= res!337625 (or (= lt!248053 (MissingZero!4940 i!1153)) (= lt!248053 (MissingVacant!4940 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34292 (_ BitVec 32)) SeekEntryResult!4940)

(assert (=> b!542923 (= lt!248053 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!542924 () Bool)

(assert (=> b!542924 (= e!314083 e!314085)))

(declare-fun res!337620 () Bool)

(assert (=> b!542924 (=> (not res!337620) (not e!314085))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!542924 (= res!337620 (= lt!248054 (Intermediate!4940 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!542924 (= lt!248054 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16475 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542925 () Bool)

(assert (=> b!542925 (= e!314085 false)))

(declare-fun lt!248052 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542925 (= lt!248052 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542926 () Bool)

(declare-fun res!337621 () Bool)

(assert (=> b!542926 (=> (not res!337621) (not e!314083))))

(declare-datatypes ((List!10647 0))(
  ( (Nil!10644) (Cons!10643 (h!11598 (_ BitVec 64)) (t!16883 List!10647)) )
))
(declare-fun arrayNoDuplicates!0 (array!34292 (_ BitVec 32) List!10647) Bool)

(assert (=> b!542926 (= res!337621 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10644))))

(declare-fun b!542927 () Bool)

(declare-fun res!337623 () Bool)

(assert (=> b!542927 (=> (not res!337623) (not e!314083))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34292 (_ BitVec 32)) Bool)

(assert (=> b!542927 (= res!337623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542928 () Bool)

(declare-fun res!337631 () Bool)

(assert (=> b!542928 (=> (not res!337631) (not e!314085))))

(assert (=> b!542928 (= res!337631 (and (not (= (select (arr!16475 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16475 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16475 a!3154) index!1177) (select (arr!16475 a!3154) j!147)))))))

(declare-fun b!542929 () Bool)

(declare-fun res!337629 () Bool)

(assert (=> b!542929 (=> (not res!337629) (not e!314083))))

(assert (=> b!542929 (= res!337629 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16839 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16839 a!3154)) (= (select (arr!16475 a!3154) resIndex!32) (select (arr!16475 a!3154) j!147))))))

(declare-fun b!542930 () Bool)

(declare-fun res!337627 () Bool)

(assert (=> b!542930 (=> (not res!337627) (not e!314086))))

(assert (=> b!542930 (= res!337627 (validKeyInArray!0 (select (arr!16475 a!3154) j!147)))))

(assert (= (and start!49328 res!337630) b!542919))

(assert (= (and b!542919 res!337628) b!542930))

(assert (= (and b!542930 res!337627) b!542922))

(assert (= (and b!542922 res!337624) b!542921))

(assert (= (and b!542921 res!337626) b!542923))

(assert (= (and b!542923 res!337625) b!542927))

(assert (= (and b!542927 res!337623) b!542926))

(assert (= (and b!542926 res!337621) b!542929))

(assert (= (and b!542929 res!337629) b!542924))

(assert (= (and b!542924 res!337620) b!542920))

(assert (= (and b!542920 res!337622) b!542928))

(assert (= (and b!542928 res!337631) b!542925))

(declare-fun m!521101 () Bool)

(assert (=> b!542928 m!521101))

(declare-fun m!521103 () Bool)

(assert (=> b!542928 m!521103))

(declare-fun m!521105 () Bool)

(assert (=> b!542926 m!521105))

(declare-fun m!521107 () Bool)

(assert (=> b!542925 m!521107))

(assert (=> b!542920 m!521103))

(assert (=> b!542920 m!521103))

(declare-fun m!521109 () Bool)

(assert (=> b!542920 m!521109))

(assert (=> b!542920 m!521109))

(assert (=> b!542920 m!521103))

(declare-fun m!521111 () Bool)

(assert (=> b!542920 m!521111))

(assert (=> b!542924 m!521103))

(assert (=> b!542924 m!521103))

(declare-fun m!521113 () Bool)

(assert (=> b!542924 m!521113))

(declare-fun m!521115 () Bool)

(assert (=> start!49328 m!521115))

(declare-fun m!521117 () Bool)

(assert (=> start!49328 m!521117))

(declare-fun m!521119 () Bool)

(assert (=> b!542929 m!521119))

(assert (=> b!542929 m!521103))

(declare-fun m!521121 () Bool)

(assert (=> b!542922 m!521121))

(declare-fun m!521123 () Bool)

(assert (=> b!542923 m!521123))

(declare-fun m!521125 () Bool)

(assert (=> b!542921 m!521125))

(assert (=> b!542930 m!521103))

(assert (=> b!542930 m!521103))

(declare-fun m!521127 () Bool)

(assert (=> b!542930 m!521127))

(declare-fun m!521129 () Bool)

(assert (=> b!542927 m!521129))

(push 1)

(assert (not b!542924))

(assert (not b!542921))

(assert (not b!542920))

(assert (not b!542925))

(assert (not b!542927))

(assert (not start!49328))

(assert (not b!542922))

(assert (not b!542926))

(assert (not b!542923))

(assert (not b!542930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

