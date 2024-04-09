; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48788 () Bool)

(assert start!48788)

(declare-fun b!536339 () Bool)

(declare-fun e!311345 () Bool)

(assert (=> b!536339 (= e!311345 false)))

(declare-datatypes ((SeekEntryResult!4778 0))(
  ( (MissingZero!4778 (index!21336 (_ BitVec 32))) (Found!4778 (index!21337 (_ BitVec 32))) (Intermediate!4778 (undefined!5590 Bool) (index!21338 (_ BitVec 32)) (x!50300 (_ BitVec 32))) (Undefined!4778) (MissingVacant!4778 (index!21339 (_ BitVec 32))) )
))
(declare-fun lt!246089 () SeekEntryResult!4778)

(declare-fun lt!246087 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33956 0))(
  ( (array!33957 (arr!16313 (Array (_ BitVec 32) (_ BitVec 64))) (size!16677 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33956)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33956 (_ BitVec 32)) SeekEntryResult!4778)

(assert (=> b!536339 (= lt!246089 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246087 (select (arr!16313 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536340 () Bool)

(declare-fun res!331704 () Bool)

(declare-fun e!311343 () Bool)

(assert (=> b!536340 (=> (not res!331704) (not e!311343))))

(declare-datatypes ((List!10485 0))(
  ( (Nil!10482) (Cons!10481 (h!11424 (_ BitVec 64)) (t!16721 List!10485)) )
))
(declare-fun arrayNoDuplicates!0 (array!33956 (_ BitVec 32) List!10485) Bool)

(assert (=> b!536340 (= res!331704 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10482))))

(declare-fun b!536341 () Bool)

(declare-fun e!311346 () Bool)

(assert (=> b!536341 (= e!311346 e!311345)))

(declare-fun res!331702 () Bool)

(assert (=> b!536341 (=> (not res!331702) (not e!311345))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536341 (= res!331702 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246087 #b00000000000000000000000000000000) (bvslt lt!246087 (size!16677 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536341 (= lt!246087 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!536342 () Bool)

(declare-fun res!331701 () Bool)

(declare-fun e!311347 () Bool)

(assert (=> b!536342 (=> (not res!331701) (not e!311347))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536342 (= res!331701 (validKeyInArray!0 k!1998))))

(declare-fun b!536343 () Bool)

(declare-fun res!331700 () Bool)

(assert (=> b!536343 (=> (not res!331700) (not e!311343))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!536343 (= res!331700 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16677 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16677 a!3154)) (= (select (arr!16313 a!3154) resIndex!32) (select (arr!16313 a!3154) j!147))))))

(declare-fun b!536344 () Bool)

(declare-fun res!331699 () Bool)

(assert (=> b!536344 (=> (not res!331699) (not e!311343))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33956 (_ BitVec 32)) Bool)

(assert (=> b!536344 (= res!331699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536346 () Bool)

(declare-fun res!331703 () Bool)

(assert (=> b!536346 (=> (not res!331703) (not e!311347))))

(assert (=> b!536346 (= res!331703 (validKeyInArray!0 (select (arr!16313 a!3154) j!147)))))

(declare-fun b!536347 () Bool)

(declare-fun res!331694 () Bool)

(assert (=> b!536347 (=> (not res!331694) (not e!311347))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536347 (= res!331694 (and (= (size!16677 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16677 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16677 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536348 () Bool)

(declare-fun res!331698 () Bool)

(assert (=> b!536348 (=> (not res!331698) (not e!311346))))

(declare-fun lt!246086 () SeekEntryResult!4778)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536348 (= res!331698 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16313 a!3154) j!147) mask!3216) (select (arr!16313 a!3154) j!147) a!3154 mask!3216) lt!246086))))

(declare-fun b!536349 () Bool)

(declare-fun res!331705 () Bool)

(assert (=> b!536349 (=> (not res!331705) (not e!311347))))

(declare-fun arrayContainsKey!0 (array!33956 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536349 (= res!331705 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536350 () Bool)

(assert (=> b!536350 (= e!311347 e!311343)))

(declare-fun res!331706 () Bool)

(assert (=> b!536350 (=> (not res!331706) (not e!311343))))

(declare-fun lt!246088 () SeekEntryResult!4778)

(assert (=> b!536350 (= res!331706 (or (= lt!246088 (MissingZero!4778 i!1153)) (= lt!246088 (MissingVacant!4778 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33956 (_ BitVec 32)) SeekEntryResult!4778)

(assert (=> b!536350 (= lt!246088 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!536351 () Bool)

(declare-fun res!331697 () Bool)

(assert (=> b!536351 (=> (not res!331697) (not e!311346))))

(assert (=> b!536351 (= res!331697 (and (not (= (select (arr!16313 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16313 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16313 a!3154) index!1177) (select (arr!16313 a!3154) j!147)))))))

(declare-fun b!536345 () Bool)

(assert (=> b!536345 (= e!311343 e!311346)))

(declare-fun res!331696 () Bool)

(assert (=> b!536345 (=> (not res!331696) (not e!311346))))

(assert (=> b!536345 (= res!331696 (= lt!246086 (Intermediate!4778 false resIndex!32 resX!32)))))

(assert (=> b!536345 (= lt!246086 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16313 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!331695 () Bool)

(assert (=> start!48788 (=> (not res!331695) (not e!311347))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48788 (= res!331695 (validMask!0 mask!3216))))

(assert (=> start!48788 e!311347))

(assert (=> start!48788 true))

(declare-fun array_inv!12087 (array!33956) Bool)

(assert (=> start!48788 (array_inv!12087 a!3154)))

(assert (= (and start!48788 res!331695) b!536347))

(assert (= (and b!536347 res!331694) b!536346))

(assert (= (and b!536346 res!331703) b!536342))

(assert (= (and b!536342 res!331701) b!536349))

(assert (= (and b!536349 res!331705) b!536350))

(assert (= (and b!536350 res!331706) b!536344))

(assert (= (and b!536344 res!331699) b!536340))

(assert (= (and b!536340 res!331704) b!536343))

(assert (= (and b!536343 res!331700) b!536345))

(assert (= (and b!536345 res!331696) b!536348))

(assert (= (and b!536348 res!331698) b!536351))

(assert (= (and b!536351 res!331697) b!536341))

(assert (= (and b!536341 res!331702) b!536339))

(declare-fun m!515771 () Bool)

(assert (=> b!536342 m!515771))

(declare-fun m!515773 () Bool)

(assert (=> b!536341 m!515773))

(declare-fun m!515775 () Bool)

(assert (=> start!48788 m!515775))

(declare-fun m!515777 () Bool)

(assert (=> start!48788 m!515777))

(declare-fun m!515779 () Bool)

(assert (=> b!536350 m!515779))

(declare-fun m!515781 () Bool)

(assert (=> b!536340 m!515781))

(declare-fun m!515783 () Bool)

(assert (=> b!536346 m!515783))

(assert (=> b!536346 m!515783))

(declare-fun m!515785 () Bool)

(assert (=> b!536346 m!515785))

(assert (=> b!536339 m!515783))

(assert (=> b!536339 m!515783))

(declare-fun m!515787 () Bool)

(assert (=> b!536339 m!515787))

(assert (=> b!536345 m!515783))

(assert (=> b!536345 m!515783))

(declare-fun m!515789 () Bool)

(assert (=> b!536345 m!515789))

(declare-fun m!515791 () Bool)

(assert (=> b!536351 m!515791))

(assert (=> b!536351 m!515783))

(assert (=> b!536348 m!515783))

(assert (=> b!536348 m!515783))

(declare-fun m!515793 () Bool)

(assert (=> b!536348 m!515793))

(assert (=> b!536348 m!515793))

(assert (=> b!536348 m!515783))

(declare-fun m!515795 () Bool)

(assert (=> b!536348 m!515795))

(declare-fun m!515797 () Bool)

(assert (=> b!536343 m!515797))

(assert (=> b!536343 m!515783))

(declare-fun m!515799 () Bool)

(assert (=> b!536349 m!515799))

(declare-fun m!515801 () Bool)

(assert (=> b!536344 m!515801))

(push 1)

(assert (not b!536345))

(assert (not b!536350))

