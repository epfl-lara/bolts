; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86570 () Bool)

(assert start!86570)

(declare-fun b!1002739 () Bool)

(declare-fun res!672382 () Bool)

(declare-fun e!564887 () Bool)

(assert (=> b!1002739 (=> (not res!672382) (not e!564887))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!443343 () (_ BitVec 64))

(declare-datatypes ((array!63323 0))(
  ( (array!63324 (arr!30483 (Array (_ BitVec 32) (_ BitVec 64))) (size!30986 (_ BitVec 32))) )
))
(declare-fun lt!443342 () array!63323)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9415 0))(
  ( (MissingZero!9415 (index!40030 (_ BitVec 32))) (Found!9415 (index!40031 (_ BitVec 32))) (Intermediate!9415 (undefined!10227 Bool) (index!40032 (_ BitVec 32)) (x!87468 (_ BitVec 32))) (Undefined!9415) (MissingVacant!9415 (index!40033 (_ BitVec 32))) )
))
(declare-fun lt!443340 () SeekEntryResult!9415)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63323 (_ BitVec 32)) SeekEntryResult!9415)

(assert (=> b!1002739 (= res!672382 (not (= lt!443340 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443343 lt!443342 mask!3464))))))

(declare-fun b!1002740 () Bool)

(declare-fun res!672377 () Bool)

(declare-fun e!564890 () Bool)

(assert (=> b!1002740 (=> (not res!672377) (not e!564890))))

(declare-fun a!3219 () array!63323)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002740 (= res!672377 (validKeyInArray!0 (select (arr!30483 a!3219) j!170)))))

(declare-fun b!1002741 () Bool)

(declare-fun e!564893 () Bool)

(assert (=> b!1002741 (= e!564887 e!564893)))

(declare-fun res!672379 () Bool)

(assert (=> b!1002741 (=> (not res!672379) (not e!564893))))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun lt!443341 () (_ BitVec 32))

(assert (=> b!1002741 (= res!672379 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443341 #b00000000000000000000000000000000) (bvslt lt!443341 (size!30986 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002741 (= lt!443341 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1002742 () Bool)

(declare-fun res!672383 () Bool)

(declare-fun e!564892 () Bool)

(assert (=> b!1002742 (=> (not res!672383) (not e!564892))))

(declare-datatypes ((List!21285 0))(
  ( (Nil!21282) (Cons!21281 (h!22458 (_ BitVec 64)) (t!30294 List!21285)) )
))
(declare-fun arrayNoDuplicates!0 (array!63323 (_ BitVec 32) List!21285) Bool)

(assert (=> b!1002742 (= res!672383 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21282))))

(declare-fun b!1002743 () Bool)

(declare-fun res!672385 () Bool)

(assert (=> b!1002743 (=> (not res!672385) (not e!564890))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1002743 (= res!672385 (and (= (size!30986 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30986 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30986 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1002744 () Bool)

(declare-fun res!672378 () Bool)

(assert (=> b!1002744 (=> (not res!672378) (not e!564887))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1002744 (= res!672378 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1002746 () Bool)

(declare-fun e!564891 () Bool)

(assert (=> b!1002746 (= e!564891 e!564887)))

(declare-fun res!672374 () Bool)

(assert (=> b!1002746 (=> (not res!672374) (not e!564887))))

(declare-fun lt!443338 () SeekEntryResult!9415)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002746 (= res!672374 (not (= lt!443338 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443343 mask!3464) lt!443343 lt!443342 mask!3464))))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1002746 (= lt!443343 (select (store (arr!30483 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1002746 (= lt!443342 (array!63324 (store (arr!30483 a!3219) i!1194 k!2224) (size!30986 a!3219)))))

(declare-fun b!1002747 () Bool)

(declare-fun e!564888 () Bool)

(assert (=> b!1002747 (= e!564888 e!564891)))

(declare-fun res!672375 () Bool)

(assert (=> b!1002747 (=> (not res!672375) (not e!564891))))

(declare-fun lt!443339 () SeekEntryResult!9415)

(assert (=> b!1002747 (= res!672375 (= lt!443340 lt!443339))))

(assert (=> b!1002747 (= lt!443340 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30483 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002748 () Bool)

(declare-fun res!672388 () Bool)

(assert (=> b!1002748 (=> (not res!672388) (not e!564893))))

(assert (=> b!1002748 (= res!672388 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443341 (select (arr!30483 a!3219) j!170) a!3219 mask!3464) lt!443339))))

(declare-fun b!1002749 () Bool)

(assert (=> b!1002749 (= e!564890 e!564892)))

(declare-fun res!672380 () Bool)

(assert (=> b!1002749 (=> (not res!672380) (not e!564892))))

(declare-fun lt!443336 () SeekEntryResult!9415)

(assert (=> b!1002749 (= res!672380 (or (= lt!443336 (MissingVacant!9415 i!1194)) (= lt!443336 (MissingZero!9415 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63323 (_ BitVec 32)) SeekEntryResult!9415)

(assert (=> b!1002749 (= lt!443336 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1002750 () Bool)

(assert (=> b!1002750 (= e!564892 e!564888)))

(declare-fun res!672386 () Bool)

(assert (=> b!1002750 (=> (not res!672386) (not e!564888))))

(assert (=> b!1002750 (= res!672386 (= lt!443338 lt!443339))))

(assert (=> b!1002750 (= lt!443339 (Intermediate!9415 false resIndex!38 resX!38))))

(assert (=> b!1002750 (= lt!443338 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30483 a!3219) j!170) mask!3464) (select (arr!30483 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002751 () Bool)

(assert (=> b!1002751 (= e!564893 false)))

(declare-fun lt!443337 () SeekEntryResult!9415)

(assert (=> b!1002751 (= lt!443337 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443341 lt!443343 lt!443342 mask!3464))))

(declare-fun b!1002752 () Bool)

(declare-fun res!672376 () Bool)

(assert (=> b!1002752 (=> (not res!672376) (not e!564892))))

(assert (=> b!1002752 (= res!672376 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30986 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30986 a!3219))))))

(declare-fun b!1002745 () Bool)

(declare-fun res!672387 () Bool)

(assert (=> b!1002745 (=> (not res!672387) (not e!564890))))

(declare-fun arrayContainsKey!0 (array!63323 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002745 (= res!672387 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!672381 () Bool)

(assert (=> start!86570 (=> (not res!672381) (not e!564890))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86570 (= res!672381 (validMask!0 mask!3464))))

(assert (=> start!86570 e!564890))

(declare-fun array_inv!23473 (array!63323) Bool)

(assert (=> start!86570 (array_inv!23473 a!3219)))

(assert (=> start!86570 true))

(declare-fun b!1002753 () Bool)

(declare-fun res!672384 () Bool)

(assert (=> b!1002753 (=> (not res!672384) (not e!564890))))

(assert (=> b!1002753 (= res!672384 (validKeyInArray!0 k!2224))))

(declare-fun b!1002754 () Bool)

(declare-fun res!672373 () Bool)

(assert (=> b!1002754 (=> (not res!672373) (not e!564892))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63323 (_ BitVec 32)) Bool)

(assert (=> b!1002754 (= res!672373 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(assert (= (and start!86570 res!672381) b!1002743))

(assert (= (and b!1002743 res!672385) b!1002740))

(assert (= (and b!1002740 res!672377) b!1002753))

(assert (= (and b!1002753 res!672384) b!1002745))

(assert (= (and b!1002745 res!672387) b!1002749))

(assert (= (and b!1002749 res!672380) b!1002754))

(assert (= (and b!1002754 res!672373) b!1002742))

(assert (= (and b!1002742 res!672383) b!1002752))

(assert (= (and b!1002752 res!672376) b!1002750))

(assert (= (and b!1002750 res!672386) b!1002747))

(assert (= (and b!1002747 res!672375) b!1002746))

(assert (= (and b!1002746 res!672374) b!1002739))

(assert (= (and b!1002739 res!672382) b!1002744))

(assert (= (and b!1002744 res!672378) b!1002741))

(assert (= (and b!1002741 res!672379) b!1002748))

(assert (= (and b!1002748 res!672388) b!1002751))

(declare-fun m!928661 () Bool)

(assert (=> b!1002741 m!928661))

(declare-fun m!928663 () Bool)

(assert (=> b!1002742 m!928663))

(declare-fun m!928665 () Bool)

(assert (=> b!1002740 m!928665))

(assert (=> b!1002740 m!928665))

(declare-fun m!928667 () Bool)

(assert (=> b!1002740 m!928667))

(declare-fun m!928669 () Bool)

(assert (=> b!1002739 m!928669))

(declare-fun m!928671 () Bool)

(assert (=> b!1002749 m!928671))

(declare-fun m!928673 () Bool)

(assert (=> start!86570 m!928673))

(declare-fun m!928675 () Bool)

(assert (=> start!86570 m!928675))

(declare-fun m!928677 () Bool)

(assert (=> b!1002751 m!928677))

(declare-fun m!928679 () Bool)

(assert (=> b!1002753 m!928679))

(assert (=> b!1002748 m!928665))

(assert (=> b!1002748 m!928665))

(declare-fun m!928681 () Bool)

(assert (=> b!1002748 m!928681))

(declare-fun m!928683 () Bool)

(assert (=> b!1002754 m!928683))

(declare-fun m!928685 () Bool)

(assert (=> b!1002745 m!928685))

(assert (=> b!1002747 m!928665))

(assert (=> b!1002747 m!928665))

(declare-fun m!928687 () Bool)

(assert (=> b!1002747 m!928687))

(declare-fun m!928689 () Bool)

(assert (=> b!1002746 m!928689))

(assert (=> b!1002746 m!928689))

(declare-fun m!928691 () Bool)

(assert (=> b!1002746 m!928691))

(declare-fun m!928693 () Bool)

(assert (=> b!1002746 m!928693))

(declare-fun m!928695 () Bool)

(assert (=> b!1002746 m!928695))

(assert (=> b!1002750 m!928665))

(assert (=> b!1002750 m!928665))

(declare-fun m!928697 () Bool)

(assert (=> b!1002750 m!928697))

(assert (=> b!1002750 m!928697))

(assert (=> b!1002750 m!928665))

(declare-fun m!928699 () Bool)

(assert (=> b!1002750 m!928699))

(push 1)

(assert (not b!1002753))

(assert (not b!1002742))

(assert (not b!1002746))

(assert (not b!1002751))

(assert (not b!1002748))

(assert (not b!1002741))

(assert (not b!1002745))

(assert (not b!1002739))

(assert (not start!86570))

(assert (not b!1002754))

(assert (not b!1002740))

(assert (not b!1002747))

(assert (not b!1002749))

(assert (not b!1002750))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

