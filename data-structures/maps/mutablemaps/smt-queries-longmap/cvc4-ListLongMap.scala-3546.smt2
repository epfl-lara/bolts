; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48866 () Bool)

(assert start!48866)

(declare-fun b!537860 () Bool)

(declare-fun res!333224 () Bool)

(declare-fun e!311931 () Bool)

(assert (=> b!537860 (=> (not res!333224) (not e!311931))))

(declare-datatypes ((SeekEntryResult!4817 0))(
  ( (MissingZero!4817 (index!21492 (_ BitVec 32))) (Found!4817 (index!21493 (_ BitVec 32))) (Intermediate!4817 (undefined!5629 Bool) (index!21494 (_ BitVec 32)) (x!50443 (_ BitVec 32))) (Undefined!4817) (MissingVacant!4817 (index!21495 (_ BitVec 32))) )
))
(declare-fun lt!246555 () SeekEntryResult!4817)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34034 0))(
  ( (array!34035 (arr!16352 (Array (_ BitVec 32) (_ BitVec 64))) (size!16716 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34034)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34034 (_ BitVec 32)) SeekEntryResult!4817)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537860 (= res!333224 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16352 a!3154) j!147) mask!3216) (select (arr!16352 a!3154) j!147) a!3154 mask!3216) lt!246555))))

(declare-fun b!537861 () Bool)

(declare-fun res!333227 () Bool)

(declare-fun e!311929 () Bool)

(assert (=> b!537861 (=> (not res!333227) (not e!311929))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537861 (= res!333227 (and (= (size!16716 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16716 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16716 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537862 () Bool)

(declare-fun res!333222 () Bool)

(declare-fun e!311932 () Bool)

(assert (=> b!537862 (=> (not res!333222) (not e!311932))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537862 (= res!333222 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16716 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16716 a!3154)) (= (select (arr!16352 a!3154) resIndex!32) (select (arr!16352 a!3154) j!147))))))

(declare-fun b!537863 () Bool)

(declare-fun res!333226 () Bool)

(assert (=> b!537863 (=> (not res!333226) (not e!311929))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34034 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537863 (= res!333226 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537864 () Bool)

(assert (=> b!537864 (= e!311929 e!311932)))

(declare-fun res!333225 () Bool)

(assert (=> b!537864 (=> (not res!333225) (not e!311932))))

(declare-fun lt!246556 () SeekEntryResult!4817)

(assert (=> b!537864 (= res!333225 (or (= lt!246556 (MissingZero!4817 i!1153)) (= lt!246556 (MissingVacant!4817 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34034 (_ BitVec 32)) SeekEntryResult!4817)

(assert (=> b!537864 (= lt!246556 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!537865 () Bool)

(declare-fun res!333218 () Bool)

(assert (=> b!537865 (=> (not res!333218) (not e!311932))))

(declare-datatypes ((List!10524 0))(
  ( (Nil!10521) (Cons!10520 (h!11463 (_ BitVec 64)) (t!16760 List!10524)) )
))
(declare-fun arrayNoDuplicates!0 (array!34034 (_ BitVec 32) List!10524) Bool)

(assert (=> b!537865 (= res!333218 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10521))))

(declare-fun b!537866 () Bool)

(declare-fun res!333216 () Bool)

(assert (=> b!537866 (=> (not res!333216) (not e!311929))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537866 (= res!333216 (validKeyInArray!0 (select (arr!16352 a!3154) j!147)))))

(declare-fun b!537867 () Bool)

(assert (=> b!537867 (= e!311932 e!311931)))

(declare-fun res!333217 () Bool)

(assert (=> b!537867 (=> (not res!333217) (not e!311931))))

(assert (=> b!537867 (= res!333217 (= lt!246555 (Intermediate!4817 false resIndex!32 resX!32)))))

(assert (=> b!537867 (= lt!246555 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16352 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537868 () Bool)

(declare-fun e!311928 () Bool)

(assert (=> b!537868 (= e!311931 e!311928)))

(declare-fun res!333220 () Bool)

(assert (=> b!537868 (=> (not res!333220) (not e!311928))))

(declare-fun lt!246557 () (_ BitVec 32))

(assert (=> b!537868 (= res!333220 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246557 #b00000000000000000000000000000000) (bvslt lt!246557 (size!16716 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537868 (= lt!246557 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun res!333219 () Bool)

(assert (=> start!48866 (=> (not res!333219) (not e!311929))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48866 (= res!333219 (validMask!0 mask!3216))))

(assert (=> start!48866 e!311929))

(assert (=> start!48866 true))

(declare-fun array_inv!12126 (array!34034) Bool)

(assert (=> start!48866 (array_inv!12126 a!3154)))

(declare-fun b!537869 () Bool)

(declare-fun res!333223 () Bool)

(assert (=> b!537869 (=> (not res!333223) (not e!311931))))

(assert (=> b!537869 (= res!333223 (and (not (= (select (arr!16352 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16352 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16352 a!3154) index!1177) (select (arr!16352 a!3154) j!147)))))))

(declare-fun b!537870 () Bool)

(declare-fun res!333215 () Bool)

(assert (=> b!537870 (=> (not res!333215) (not e!311929))))

(assert (=> b!537870 (= res!333215 (validKeyInArray!0 k!1998))))

(declare-fun b!537871 () Bool)

(assert (=> b!537871 (= e!311928 false)))

(declare-fun lt!246554 () SeekEntryResult!4817)

(assert (=> b!537871 (= lt!246554 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246557 (select (arr!16352 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!537872 () Bool)

(declare-fun res!333221 () Bool)

(assert (=> b!537872 (=> (not res!333221) (not e!311932))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34034 (_ BitVec 32)) Bool)

(assert (=> b!537872 (= res!333221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48866 res!333219) b!537861))

(assert (= (and b!537861 res!333227) b!537866))

(assert (= (and b!537866 res!333216) b!537870))

(assert (= (and b!537870 res!333215) b!537863))

(assert (= (and b!537863 res!333226) b!537864))

(assert (= (and b!537864 res!333225) b!537872))

(assert (= (and b!537872 res!333221) b!537865))

(assert (= (and b!537865 res!333218) b!537862))

(assert (= (and b!537862 res!333222) b!537867))

(assert (= (and b!537867 res!333217) b!537860))

(assert (= (and b!537860 res!333224) b!537869))

(assert (= (and b!537869 res!333223) b!537868))

(assert (= (and b!537868 res!333220) b!537871))

(declare-fun m!517019 () Bool)

(assert (=> b!537868 m!517019))

(declare-fun m!517021 () Bool)

(assert (=> b!537872 m!517021))

(declare-fun m!517023 () Bool)

(assert (=> b!537860 m!517023))

(assert (=> b!537860 m!517023))

(declare-fun m!517025 () Bool)

(assert (=> b!537860 m!517025))

(assert (=> b!537860 m!517025))

(assert (=> b!537860 m!517023))

(declare-fun m!517027 () Bool)

(assert (=> b!537860 m!517027))

(declare-fun m!517029 () Bool)

(assert (=> b!537869 m!517029))

(assert (=> b!537869 m!517023))

(declare-fun m!517031 () Bool)

(assert (=> b!537864 m!517031))

(declare-fun m!517033 () Bool)

(assert (=> start!48866 m!517033))

(declare-fun m!517035 () Bool)

(assert (=> start!48866 m!517035))

(assert (=> b!537867 m!517023))

(assert (=> b!537867 m!517023))

(declare-fun m!517037 () Bool)

(assert (=> b!537867 m!517037))

(assert (=> b!537871 m!517023))

(assert (=> b!537871 m!517023))

(declare-fun m!517039 () Bool)

(assert (=> b!537871 m!517039))

(declare-fun m!517041 () Bool)

(assert (=> b!537863 m!517041))

(assert (=> b!537866 m!517023))

(assert (=> b!537866 m!517023))

(declare-fun m!517043 () Bool)

(assert (=> b!537866 m!517043))

(declare-fun m!517045 () Bool)

(assert (=> b!537862 m!517045))

(assert (=> b!537862 m!517023))

(declare-fun m!517047 () Bool)

(assert (=> b!537870 m!517047))

(declare-fun m!517049 () Bool)

(assert (=> b!537865 m!517049))

(push 1)

(assert (not b!537868))

(assert (not b!537864))

