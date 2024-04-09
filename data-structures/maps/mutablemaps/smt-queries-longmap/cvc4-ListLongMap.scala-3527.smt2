; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48752 () Bool)

(assert start!48752)

(declare-fun b!535637 () Bool)

(declare-fun res!331003 () Bool)

(declare-fun e!311077 () Bool)

(assert (=> b!535637 (=> (not res!331003) (not e!311077))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33920 0))(
  ( (array!33921 (arr!16295 (Array (_ BitVec 32) (_ BitVec 64))) (size!16659 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33920)

(assert (=> b!535637 (= res!331003 (and (not (= (select (arr!16295 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16295 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16295 a!3154) index!1177) (select (arr!16295 a!3154) j!147)))))))

(declare-fun b!535638 () Bool)

(declare-fun e!311075 () Bool)

(assert (=> b!535638 (= e!311075 false)))

(declare-fun lt!245870 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4760 0))(
  ( (MissingZero!4760 (index!21264 (_ BitVec 32))) (Found!4760 (index!21265 (_ BitVec 32))) (Intermediate!4760 (undefined!5572 Bool) (index!21266 (_ BitVec 32)) (x!50234 (_ BitVec 32))) (Undefined!4760) (MissingVacant!4760 (index!21267 (_ BitVec 32))) )
))
(declare-fun lt!245873 () SeekEntryResult!4760)

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33920 (_ BitVec 32)) SeekEntryResult!4760)

(assert (=> b!535638 (= lt!245873 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!245870 (select (arr!16295 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535639 () Bool)

(assert (=> b!535639 (= e!311077 e!311075)))

(declare-fun res!330997 () Bool)

(assert (=> b!535639 (=> (not res!330997) (not e!311075))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!535639 (= res!330997 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!245870 #b00000000000000000000000000000000) (bvslt lt!245870 (size!16659 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535639 (= lt!245870 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!535640 () Bool)

(declare-fun res!330998 () Bool)

(declare-fun e!311074 () Bool)

(assert (=> b!535640 (=> (not res!330998) (not e!311074))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33920 (_ BitVec 32)) Bool)

(assert (=> b!535640 (= res!330998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535641 () Bool)

(declare-fun res!330995 () Bool)

(declare-fun e!311073 () Bool)

(assert (=> b!535641 (=> (not res!330995) (not e!311073))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535641 (= res!330995 (validKeyInArray!0 k!1998))))

(declare-fun b!535642 () Bool)

(assert (=> b!535642 (= e!311073 e!311074)))

(declare-fun res!330992 () Bool)

(assert (=> b!535642 (=> (not res!330992) (not e!311074))))

(declare-fun lt!245872 () SeekEntryResult!4760)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535642 (= res!330992 (or (= lt!245872 (MissingZero!4760 i!1153)) (= lt!245872 (MissingVacant!4760 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33920 (_ BitVec 32)) SeekEntryResult!4760)

(assert (=> b!535642 (= lt!245872 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!535644 () Bool)

(declare-fun res!330993 () Bool)

(assert (=> b!535644 (=> (not res!330993) (not e!311073))))

(declare-fun arrayContainsKey!0 (array!33920 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535644 (= res!330993 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535645 () Bool)

(assert (=> b!535645 (= e!311074 e!311077)))

(declare-fun res!331002 () Bool)

(assert (=> b!535645 (=> (not res!331002) (not e!311077))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun lt!245871 () SeekEntryResult!4760)

(assert (=> b!535645 (= res!331002 (= lt!245871 (Intermediate!4760 false resIndex!32 resX!32)))))

(assert (=> b!535645 (= lt!245871 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16295 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535646 () Bool)

(declare-fun res!330994 () Bool)

(assert (=> b!535646 (=> (not res!330994) (not e!311073))))

(assert (=> b!535646 (= res!330994 (validKeyInArray!0 (select (arr!16295 a!3154) j!147)))))

(declare-fun b!535647 () Bool)

(declare-fun res!331004 () Bool)

(assert (=> b!535647 (=> (not res!331004) (not e!311077))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535647 (= res!331004 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16295 a!3154) j!147) mask!3216) (select (arr!16295 a!3154) j!147) a!3154 mask!3216) lt!245871))))

(declare-fun b!535648 () Bool)

(declare-fun res!331001 () Bool)

(assert (=> b!535648 (=> (not res!331001) (not e!311074))))

(declare-datatypes ((List!10467 0))(
  ( (Nil!10464) (Cons!10463 (h!11406 (_ BitVec 64)) (t!16703 List!10467)) )
))
(declare-fun arrayNoDuplicates!0 (array!33920 (_ BitVec 32) List!10467) Bool)

(assert (=> b!535648 (= res!331001 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10464))))

(declare-fun b!535649 () Bool)

(declare-fun res!330996 () Bool)

(assert (=> b!535649 (=> (not res!330996) (not e!311073))))

(assert (=> b!535649 (= res!330996 (and (= (size!16659 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16659 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16659 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535643 () Bool)

(declare-fun res!330999 () Bool)

(assert (=> b!535643 (=> (not res!330999) (not e!311074))))

(assert (=> b!535643 (= res!330999 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16659 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16659 a!3154)) (= (select (arr!16295 a!3154) resIndex!32) (select (arr!16295 a!3154) j!147))))))

(declare-fun res!331000 () Bool)

(assert (=> start!48752 (=> (not res!331000) (not e!311073))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48752 (= res!331000 (validMask!0 mask!3216))))

(assert (=> start!48752 e!311073))

(assert (=> start!48752 true))

(declare-fun array_inv!12069 (array!33920) Bool)

(assert (=> start!48752 (array_inv!12069 a!3154)))

(assert (= (and start!48752 res!331000) b!535649))

(assert (= (and b!535649 res!330996) b!535646))

(assert (= (and b!535646 res!330994) b!535641))

(assert (= (and b!535641 res!330995) b!535644))

(assert (= (and b!535644 res!330993) b!535642))

(assert (= (and b!535642 res!330992) b!535640))

(assert (= (and b!535640 res!330998) b!535648))

(assert (= (and b!535648 res!331001) b!535643))

(assert (= (and b!535643 res!330999) b!535645))

(assert (= (and b!535645 res!331002) b!535647))

(assert (= (and b!535647 res!331004) b!535637))

(assert (= (and b!535637 res!331003) b!535639))

(assert (= (and b!535639 res!330997) b!535638))

(declare-fun m!515195 () Bool)

(assert (=> b!535641 m!515195))

(declare-fun m!515197 () Bool)

(assert (=> b!535637 m!515197))

(declare-fun m!515199 () Bool)

(assert (=> b!535637 m!515199))

(declare-fun m!515201 () Bool)

(assert (=> b!535642 m!515201))

(declare-fun m!515203 () Bool)

(assert (=> b!535644 m!515203))

(assert (=> b!535647 m!515199))

(assert (=> b!535647 m!515199))

(declare-fun m!515205 () Bool)

(assert (=> b!535647 m!515205))

(assert (=> b!535647 m!515205))

(assert (=> b!535647 m!515199))

(declare-fun m!515207 () Bool)

(assert (=> b!535647 m!515207))

(declare-fun m!515209 () Bool)

(assert (=> b!535643 m!515209))

(assert (=> b!535643 m!515199))

(assert (=> b!535645 m!515199))

(assert (=> b!535645 m!515199))

(declare-fun m!515211 () Bool)

(assert (=> b!535645 m!515211))

(assert (=> b!535638 m!515199))

(assert (=> b!535638 m!515199))

(declare-fun m!515213 () Bool)

(assert (=> b!535638 m!515213))

(declare-fun m!515215 () Bool)

(assert (=> b!535640 m!515215))

(declare-fun m!515217 () Bool)

(assert (=> b!535639 m!515217))

(assert (=> b!535646 m!515199))

(assert (=> b!535646 m!515199))

(declare-fun m!515219 () Bool)

(assert (=> b!535646 m!515219))

(declare-fun m!515221 () Bool)

(assert (=> start!48752 m!515221))

(declare-fun m!515223 () Bool)

(assert (=> start!48752 m!515223))

(declare-fun m!515225 () Bool)

(assert (=> b!535648 m!515225))

(push 1)

(assert (not b!535646))

(assert (not b!535648))

(assert (not b!535644))

(assert (not b!535645))

