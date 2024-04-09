; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48748 () Bool)

(assert start!48748)

(declare-fun b!535559 () Bool)

(declare-fun res!330925 () Bool)

(declare-fun e!311043 () Bool)

(assert (=> b!535559 (=> (not res!330925) (not e!311043))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33916 0))(
  ( (array!33917 (arr!16293 (Array (_ BitVec 32) (_ BitVec 64))) (size!16657 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33916)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535559 (= res!330925 (and (= (size!16657 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16657 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16657 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!330916 () Bool)

(assert (=> start!48748 (=> (not res!330916) (not e!311043))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48748 (= res!330916 (validMask!0 mask!3216))))

(assert (=> start!48748 e!311043))

(assert (=> start!48748 true))

(declare-fun array_inv!12067 (array!33916) Bool)

(assert (=> start!48748 (array_inv!12067 a!3154)))

(declare-fun b!535560 () Bool)

(declare-fun res!330922 () Bool)

(declare-fun e!311044 () Bool)

(assert (=> b!535560 (=> (not res!330922) (not e!311044))))

(declare-datatypes ((List!10465 0))(
  ( (Nil!10462) (Cons!10461 (h!11404 (_ BitVec 64)) (t!16701 List!10465)) )
))
(declare-fun arrayNoDuplicates!0 (array!33916 (_ BitVec 32) List!10465) Bool)

(assert (=> b!535560 (= res!330922 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10462))))

(declare-fun b!535561 () Bool)

(declare-fun res!330914 () Bool)

(assert (=> b!535561 (=> (not res!330914) (not e!311044))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33916 (_ BitVec 32)) Bool)

(assert (=> b!535561 (= res!330914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535562 () Bool)

(assert (=> b!535562 (= e!311043 e!311044)))

(declare-fun res!330924 () Bool)

(assert (=> b!535562 (=> (not res!330924) (not e!311044))))

(declare-datatypes ((SeekEntryResult!4758 0))(
  ( (MissingZero!4758 (index!21256 (_ BitVec 32))) (Found!4758 (index!21257 (_ BitVec 32))) (Intermediate!4758 (undefined!5570 Bool) (index!21258 (_ BitVec 32)) (x!50232 (_ BitVec 32))) (Undefined!4758) (MissingVacant!4758 (index!21259 (_ BitVec 32))) )
))
(declare-fun lt!245849 () SeekEntryResult!4758)

(assert (=> b!535562 (= res!330924 (or (= lt!245849 (MissingZero!4758 i!1153)) (= lt!245849 (MissingVacant!4758 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33916 (_ BitVec 32)) SeekEntryResult!4758)

(assert (=> b!535562 (= lt!245849 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!535563 () Bool)

(declare-fun res!330920 () Bool)

(assert (=> b!535563 (=> (not res!330920) (not e!311043))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535563 (= res!330920 (validKeyInArray!0 k!1998))))

(declare-fun b!535564 () Bool)

(declare-fun res!330923 () Bool)

(assert (=> b!535564 (=> (not res!330923) (not e!311043))))

(assert (=> b!535564 (= res!330923 (validKeyInArray!0 (select (arr!16293 a!3154) j!147)))))

(declare-fun b!535565 () Bool)

(declare-fun e!311045 () Bool)

(assert (=> b!535565 (= e!311044 e!311045)))

(declare-fun res!330926 () Bool)

(assert (=> b!535565 (=> (not res!330926) (not e!311045))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun lt!245848 () SeekEntryResult!4758)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!535565 (= res!330926 (= lt!245848 (Intermediate!4758 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33916 (_ BitVec 32)) SeekEntryResult!4758)

(assert (=> b!535565 (= lt!245848 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16293 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535566 () Bool)

(declare-fun e!311046 () Bool)

(assert (=> b!535566 (= e!311045 e!311046)))

(declare-fun res!330921 () Bool)

(assert (=> b!535566 (=> (not res!330921) (not e!311046))))

(declare-fun lt!245847 () (_ BitVec 32))

(assert (=> b!535566 (= res!330921 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!245847 #b00000000000000000000000000000000) (bvslt lt!245847 (size!16657 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535566 (= lt!245847 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!535567 () Bool)

(declare-fun res!330919 () Bool)

(assert (=> b!535567 (=> (not res!330919) (not e!311043))))

(declare-fun arrayContainsKey!0 (array!33916 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535567 (= res!330919 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535568 () Bool)

(declare-fun res!330917 () Bool)

(assert (=> b!535568 (=> (not res!330917) (not e!311044))))

(assert (=> b!535568 (= res!330917 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16657 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16657 a!3154)) (= (select (arr!16293 a!3154) resIndex!32) (select (arr!16293 a!3154) j!147))))))

(declare-fun b!535569 () Bool)

(declare-fun res!330915 () Bool)

(assert (=> b!535569 (=> (not res!330915) (not e!311045))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535569 (= res!330915 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16293 a!3154) j!147) mask!3216) (select (arr!16293 a!3154) j!147) a!3154 mask!3216) lt!245848))))

(declare-fun b!535570 () Bool)

(declare-fun res!330918 () Bool)

(assert (=> b!535570 (=> (not res!330918) (not e!311045))))

(assert (=> b!535570 (= res!330918 (and (not (= (select (arr!16293 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16293 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16293 a!3154) index!1177) (select (arr!16293 a!3154) j!147)))))))

(declare-fun b!535571 () Bool)

(assert (=> b!535571 (= e!311046 false)))

(declare-fun lt!245846 () SeekEntryResult!4758)

(assert (=> b!535571 (= lt!245846 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!245847 (select (arr!16293 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48748 res!330916) b!535559))

(assert (= (and b!535559 res!330925) b!535564))

(assert (= (and b!535564 res!330923) b!535563))

(assert (= (and b!535563 res!330920) b!535567))

(assert (= (and b!535567 res!330919) b!535562))

(assert (= (and b!535562 res!330924) b!535561))

(assert (= (and b!535561 res!330914) b!535560))

(assert (= (and b!535560 res!330922) b!535568))

(assert (= (and b!535568 res!330917) b!535565))

(assert (= (and b!535565 res!330926) b!535569))

(assert (= (and b!535569 res!330915) b!535570))

(assert (= (and b!535570 res!330918) b!535566))

(assert (= (and b!535566 res!330921) b!535571))

(declare-fun m!515131 () Bool)

(assert (=> b!535570 m!515131))

(declare-fun m!515133 () Bool)

(assert (=> b!535570 m!515133))

(assert (=> b!535569 m!515133))

(assert (=> b!535569 m!515133))

(declare-fun m!515135 () Bool)

(assert (=> b!535569 m!515135))

(assert (=> b!535569 m!515135))

(assert (=> b!535569 m!515133))

(declare-fun m!515137 () Bool)

(assert (=> b!535569 m!515137))

(declare-fun m!515139 () Bool)

(assert (=> b!535563 m!515139))

(assert (=> b!535564 m!515133))

(assert (=> b!535564 m!515133))

(declare-fun m!515141 () Bool)

(assert (=> b!535564 m!515141))

(declare-fun m!515143 () Bool)

(assert (=> b!535561 m!515143))

(declare-fun m!515145 () Bool)

(assert (=> b!535567 m!515145))

(declare-fun m!515147 () Bool)

(assert (=> b!535566 m!515147))

(declare-fun m!515149 () Bool)

(assert (=> b!535568 m!515149))

(assert (=> b!535568 m!515133))

(assert (=> b!535565 m!515133))

(assert (=> b!535565 m!515133))

(declare-fun m!515151 () Bool)

(assert (=> b!535565 m!515151))

(declare-fun m!515153 () Bool)

(assert (=> b!535560 m!515153))

(declare-fun m!515155 () Bool)

(assert (=> start!48748 m!515155))

(declare-fun m!515157 () Bool)

(assert (=> start!48748 m!515157))

(assert (=> b!535571 m!515133))

(assert (=> b!535571 m!515133))

(declare-fun m!515159 () Bool)

(assert (=> b!535571 m!515159))

(declare-fun m!515161 () Bool)

(assert (=> b!535562 m!515161))

(push 1)

