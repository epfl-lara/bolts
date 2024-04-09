; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49630 () Bool)

(assert start!49630)

(declare-fun b!545732 () Bool)

(declare-fun res!339815 () Bool)

(declare-fun e!315428 () Bool)

(assert (=> b!545732 (=> (not res!339815) (not e!315428))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34399 0))(
  ( (array!34400 (arr!16524 (Array (_ BitVec 32) (_ BitVec 64))) (size!16888 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34399)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!545732 (= res!339815 (and (= (size!16888 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16888 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16888 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!545733 () Bool)

(declare-fun res!339816 () Bool)

(declare-fun e!315430 () Bool)

(assert (=> b!545733 (=> (not res!339816) (not e!315430))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34399 (_ BitVec 32)) Bool)

(assert (=> b!545733 (= res!339816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!545734 () Bool)

(assert (=> b!545734 (= e!315428 e!315430)))

(declare-fun res!339811 () Bool)

(assert (=> b!545734 (=> (not res!339811) (not e!315430))))

(declare-datatypes ((SeekEntryResult!4989 0))(
  ( (MissingZero!4989 (index!22180 (_ BitVec 32))) (Found!4989 (index!22181 (_ BitVec 32))) (Intermediate!4989 (undefined!5801 Bool) (index!22182 (_ BitVec 32)) (x!51136 (_ BitVec 32))) (Undefined!4989) (MissingVacant!4989 (index!22183 (_ BitVec 32))) )
))
(declare-fun lt!249043 () SeekEntryResult!4989)

(assert (=> b!545734 (= res!339811 (or (= lt!249043 (MissingZero!4989 i!1153)) (= lt!249043 (MissingVacant!4989 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34399 (_ BitVec 32)) SeekEntryResult!4989)

(assert (=> b!545734 (= lt!249043 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!545735 () Bool)

(declare-fun res!339819 () Bool)

(assert (=> b!545735 (=> (not res!339819) (not e!315430))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!545735 (= res!339819 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16888 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16888 a!3154)) (= (select (arr!16524 a!3154) resIndex!32) (select (arr!16524 a!3154) j!147))))))

(declare-fun b!545736 () Bool)

(declare-fun res!339809 () Bool)

(assert (=> b!545736 (=> (not res!339809) (not e!315428))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!545736 (= res!339809 (validKeyInArray!0 k!1998))))

(declare-fun b!545737 () Bool)

(declare-fun e!315427 () Bool)

(declare-fun e!315433 () Bool)

(assert (=> b!545737 (= e!315427 e!315433)))

(declare-fun res!339810 () Bool)

(assert (=> b!545737 (=> (not res!339810) (not e!315433))))

(declare-fun lt!249039 () SeekEntryResult!4989)

(declare-fun lt!249044 () SeekEntryResult!4989)

(declare-fun lt!249040 () SeekEntryResult!4989)

(assert (=> b!545737 (= res!339810 (and (= lt!249044 lt!249040) (= lt!249039 lt!249044)))))

(declare-fun lt!249042 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34399 (_ BitVec 32)) SeekEntryResult!4989)

(assert (=> b!545737 (= lt!249044 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249042 (select (arr!16524 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545738 () Bool)

(assert (=> b!545738 (= e!315433 (not true))))

(assert (=> b!545738 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249042 (select (store (arr!16524 a!3154) i!1153 k!1998) j!147) (array!34400 (store (arr!16524 a!3154) i!1153 k!1998) (size!16888 a!3154)) mask!3216) lt!249040)))

(declare-datatypes ((Unit!16910 0))(
  ( (Unit!16911) )
))
(declare-fun lt!249041 () Unit!16910)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34399 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16910)

(assert (=> b!545738 (= lt!249041 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!249042 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!545739 () Bool)

(declare-fun e!315429 () Bool)

(declare-fun e!315432 () Bool)

(assert (=> b!545739 (= e!315429 e!315432)))

(declare-fun res!339813 () Bool)

(assert (=> b!545739 (=> (not res!339813) (not e!315432))))

(declare-fun lt!249038 () SeekEntryResult!4989)

(assert (=> b!545739 (= res!339813 (and (= lt!249039 lt!249038) (not (= (select (arr!16524 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16524 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16524 a!3154) index!1177) (select (arr!16524 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545739 (= lt!249039 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16524 a!3154) j!147) mask!3216) (select (arr!16524 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545740 () Bool)

(declare-fun res!339821 () Bool)

(assert (=> b!545740 (=> (not res!339821) (not e!315428))))

(assert (=> b!545740 (= res!339821 (validKeyInArray!0 (select (arr!16524 a!3154) j!147)))))

(declare-fun b!545741 () Bool)

(assert (=> b!545741 (= e!315430 e!315429)))

(declare-fun res!339820 () Bool)

(assert (=> b!545741 (=> (not res!339820) (not e!315429))))

(assert (=> b!545741 (= res!339820 (= lt!249038 lt!249040))))

(assert (=> b!545741 (= lt!249040 (Intermediate!4989 false resIndex!32 resX!32))))

(assert (=> b!545741 (= lt!249038 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16524 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545742 () Bool)

(assert (=> b!545742 (= e!315432 e!315427)))

(declare-fun res!339817 () Bool)

(assert (=> b!545742 (=> (not res!339817) (not e!315427))))

(assert (=> b!545742 (= res!339817 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!249042 #b00000000000000000000000000000000) (bvslt lt!249042 (size!16888 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545742 (= lt!249042 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!545743 () Bool)

(declare-fun res!339818 () Bool)

(assert (=> b!545743 (=> (not res!339818) (not e!315430))))

(declare-datatypes ((List!10696 0))(
  ( (Nil!10693) (Cons!10692 (h!11656 (_ BitVec 64)) (t!16932 List!10696)) )
))
(declare-fun arrayNoDuplicates!0 (array!34399 (_ BitVec 32) List!10696) Bool)

(assert (=> b!545743 (= res!339818 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10693))))

(declare-fun b!545744 () Bool)

(declare-fun res!339814 () Bool)

(assert (=> b!545744 (=> (not res!339814) (not e!315428))))

(declare-fun arrayContainsKey!0 (array!34399 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!545744 (= res!339814 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun res!339812 () Bool)

(assert (=> start!49630 (=> (not res!339812) (not e!315428))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49630 (= res!339812 (validMask!0 mask!3216))))

(assert (=> start!49630 e!315428))

(assert (=> start!49630 true))

(declare-fun array_inv!12298 (array!34399) Bool)

(assert (=> start!49630 (array_inv!12298 a!3154)))

(assert (= (and start!49630 res!339812) b!545732))

(assert (= (and b!545732 res!339815) b!545740))

(assert (= (and b!545740 res!339821) b!545736))

(assert (= (and b!545736 res!339809) b!545744))

(assert (= (and b!545744 res!339814) b!545734))

(assert (= (and b!545734 res!339811) b!545733))

(assert (= (and b!545733 res!339816) b!545743))

(assert (= (and b!545743 res!339818) b!545735))

(assert (= (and b!545735 res!339819) b!545741))

(assert (= (and b!545741 res!339820) b!545739))

(assert (= (and b!545739 res!339813) b!545742))

(assert (= (and b!545742 res!339817) b!545737))

(assert (= (and b!545737 res!339810) b!545738))

(declare-fun m!523315 () Bool)

(assert (=> start!49630 m!523315))

(declare-fun m!523317 () Bool)

(assert (=> start!49630 m!523317))

(declare-fun m!523319 () Bool)

(assert (=> b!545739 m!523319))

(declare-fun m!523321 () Bool)

(assert (=> b!545739 m!523321))

(assert (=> b!545739 m!523321))

(declare-fun m!523323 () Bool)

(assert (=> b!545739 m!523323))

(assert (=> b!545739 m!523323))

(assert (=> b!545739 m!523321))

(declare-fun m!523325 () Bool)

(assert (=> b!545739 m!523325))

(declare-fun m!523327 () Bool)

(assert (=> b!545742 m!523327))

(declare-fun m!523329 () Bool)

(assert (=> b!545733 m!523329))

(declare-fun m!523331 () Bool)

(assert (=> b!545744 m!523331))

(declare-fun m!523333 () Bool)

(assert (=> b!545738 m!523333))

(declare-fun m!523335 () Bool)

(assert (=> b!545738 m!523335))

(assert (=> b!545738 m!523335))

(declare-fun m!523337 () Bool)

(assert (=> b!545738 m!523337))

(declare-fun m!523339 () Bool)

(assert (=> b!545738 m!523339))

(declare-fun m!523341 () Bool)

(assert (=> b!545734 m!523341))

(assert (=> b!545740 m!523321))

(assert (=> b!545740 m!523321))

(declare-fun m!523343 () Bool)

(assert (=> b!545740 m!523343))

(assert (=> b!545741 m!523321))

(assert (=> b!545741 m!523321))

(declare-fun m!523345 () Bool)

(assert (=> b!545741 m!523345))

(declare-fun m!523347 () Bool)

(assert (=> b!545743 m!523347))

(assert (=> b!545737 m!523321))

(assert (=> b!545737 m!523321))

(declare-fun m!523349 () Bool)

(assert (=> b!545737 m!523349))

(declare-fun m!523351 () Bool)

(assert (=> b!545736 m!523351))

(declare-fun m!523353 () Bool)

(assert (=> b!545735 m!523353))

(assert (=> b!545735 m!523321))

(push 1)

