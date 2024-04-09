; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48714 () Bool)

(assert start!48714)

(declare-fun b!534994 () Bool)

(declare-fun res!330350 () Bool)

(declare-fun e!310849 () Bool)

(assert (=> b!534994 (=> (not res!330350) (not e!310849))))

(declare-datatypes ((array!33882 0))(
  ( (array!33883 (arr!16276 (Array (_ BitVec 32) (_ BitVec 64))) (size!16640 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33882)

(declare-datatypes ((List!10448 0))(
  ( (Nil!10445) (Cons!10444 (h!11387 (_ BitVec 64)) (t!16684 List!10448)) )
))
(declare-fun arrayNoDuplicates!0 (array!33882 (_ BitVec 32) List!10448) Bool)

(assert (=> b!534994 (= res!330350 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10445))))

(declare-fun b!534995 () Bool)

(declare-fun res!330352 () Bool)

(declare-fun e!310848 () Bool)

(assert (=> b!534995 (=> (not res!330352) (not e!310848))))

(declare-datatypes ((SeekEntryResult!4741 0))(
  ( (MissingZero!4741 (index!21188 (_ BitVec 32))) (Found!4741 (index!21189 (_ BitVec 32))) (Intermediate!4741 (undefined!5553 Bool) (index!21190 (_ BitVec 32)) (x!50167 (_ BitVec 32))) (Undefined!4741) (MissingVacant!4741 (index!21191 (_ BitVec 32))) )
))
(declare-fun lt!245740 () SeekEntryResult!4741)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33882 (_ BitVec 32)) SeekEntryResult!4741)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534995 (= res!330352 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16276 a!3154) j!147) mask!3216) (select (arr!16276 a!3154) j!147) a!3154 mask!3216) lt!245740))))

(declare-fun res!330351 () Bool)

(declare-fun e!310847 () Bool)

(assert (=> start!48714 (=> (not res!330351) (not e!310847))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48714 (= res!330351 (validMask!0 mask!3216))))

(assert (=> start!48714 e!310847))

(assert (=> start!48714 true))

(declare-fun array_inv!12050 (array!33882) Bool)

(assert (=> start!48714 (array_inv!12050 a!3154)))

(declare-fun b!534996 () Bool)

(declare-fun res!330353 () Bool)

(assert (=> b!534996 (=> (not res!330353) (not e!310847))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534996 (= res!330353 (validKeyInArray!0 (select (arr!16276 a!3154) j!147)))))

(declare-fun b!534997 () Bool)

(declare-fun res!330356 () Bool)

(assert (=> b!534997 (=> (not res!330356) (not e!310847))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534997 (= res!330356 (and (= (size!16640 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16640 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16640 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534998 () Bool)

(declare-fun res!330349 () Bool)

(assert (=> b!534998 (=> (not res!330349) (not e!310847))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33882 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534998 (= res!330349 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534999 () Bool)

(declare-fun res!330354 () Bool)

(assert (=> b!534999 (=> (not res!330354) (not e!310849))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33882 (_ BitVec 32)) Bool)

(assert (=> b!534999 (= res!330354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535000 () Bool)

(assert (=> b!535000 (= e!310849 e!310848)))

(declare-fun res!330357 () Bool)

(assert (=> b!535000 (=> (not res!330357) (not e!310848))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!535000 (= res!330357 (= lt!245740 (Intermediate!4741 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!535000 (= lt!245740 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16276 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535001 () Bool)

(assert (=> b!535001 (= e!310848 (and (not (= (select (arr!16276 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16276 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16276 a!3154) index!1177) (select (arr!16276 a!3154) j!147)) (= index!1177 resIndex!32) (bvsge mask!3216 #b00000000000000000000000000000000) (bvslt index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsgt x!1030 #b01111111111111111111111111111110)))))

(declare-fun b!535002 () Bool)

(assert (=> b!535002 (= e!310847 e!310849)))

(declare-fun res!330355 () Bool)

(assert (=> b!535002 (=> (not res!330355) (not e!310849))))

(declare-fun lt!245741 () SeekEntryResult!4741)

(assert (=> b!535002 (= res!330355 (or (= lt!245741 (MissingZero!4741 i!1153)) (= lt!245741 (MissingVacant!4741 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33882 (_ BitVec 32)) SeekEntryResult!4741)

(assert (=> b!535002 (= lt!245741 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!535003 () Bool)

(declare-fun res!330358 () Bool)

(assert (=> b!535003 (=> (not res!330358) (not e!310849))))

(assert (=> b!535003 (= res!330358 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16640 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16640 a!3154)) (= (select (arr!16276 a!3154) resIndex!32) (select (arr!16276 a!3154) j!147))))))

(declare-fun b!535004 () Bool)

(declare-fun res!330359 () Bool)

(assert (=> b!535004 (=> (not res!330359) (not e!310847))))

(assert (=> b!535004 (= res!330359 (validKeyInArray!0 k0!1998))))

(assert (= (and start!48714 res!330351) b!534997))

(assert (= (and b!534997 res!330356) b!534996))

(assert (= (and b!534996 res!330353) b!535004))

(assert (= (and b!535004 res!330359) b!534998))

(assert (= (and b!534998 res!330349) b!535002))

(assert (= (and b!535002 res!330355) b!534999))

(assert (= (and b!534999 res!330354) b!534994))

(assert (= (and b!534994 res!330350) b!535003))

(assert (= (and b!535003 res!330358) b!535000))

(assert (= (and b!535000 res!330357) b!534995))

(assert (= (and b!534995 res!330352) b!535001))

(declare-fun m!514643 () Bool)

(assert (=> b!535003 m!514643))

(declare-fun m!514645 () Bool)

(assert (=> b!535003 m!514645))

(assert (=> b!534995 m!514645))

(assert (=> b!534995 m!514645))

(declare-fun m!514647 () Bool)

(assert (=> b!534995 m!514647))

(assert (=> b!534995 m!514647))

(assert (=> b!534995 m!514645))

(declare-fun m!514649 () Bool)

(assert (=> b!534995 m!514649))

(declare-fun m!514651 () Bool)

(assert (=> b!534994 m!514651))

(assert (=> b!535000 m!514645))

(assert (=> b!535000 m!514645))

(declare-fun m!514653 () Bool)

(assert (=> b!535000 m!514653))

(assert (=> b!534996 m!514645))

(assert (=> b!534996 m!514645))

(declare-fun m!514655 () Bool)

(assert (=> b!534996 m!514655))

(declare-fun m!514657 () Bool)

(assert (=> b!535002 m!514657))

(declare-fun m!514659 () Bool)

(assert (=> b!535004 m!514659))

(declare-fun m!514661 () Bool)

(assert (=> b!534999 m!514661))

(declare-fun m!514663 () Bool)

(assert (=> b!534998 m!514663))

(declare-fun m!514665 () Bool)

(assert (=> start!48714 m!514665))

(declare-fun m!514667 () Bool)

(assert (=> start!48714 m!514667))

(declare-fun m!514669 () Bool)

(assert (=> b!535001 m!514669))

(assert (=> b!535001 m!514645))

(check-sat (not b!535004) (not b!534999) (not b!535000) (not b!534996) (not start!48714) (not b!534998) (not b!535002) (not b!534995) (not b!534994))
(check-sat)
