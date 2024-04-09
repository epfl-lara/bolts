; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49298 () Bool)

(assert start!49298)

(declare-fun b!542379 () Bool)

(declare-fun e!313906 () Bool)

(declare-fun e!313903 () Bool)

(assert (=> b!542379 (= e!313906 e!313903)))

(declare-fun res!337083 () Bool)

(assert (=> b!542379 (=> (not res!337083) (not e!313903))))

(declare-datatypes ((SeekEntryResult!4925 0))(
  ( (MissingZero!4925 (index!21924 (_ BitVec 32))) (Found!4925 (index!21925 (_ BitVec 32))) (Intermediate!4925 (undefined!5737 Bool) (index!21926 (_ BitVec 32)) (x!50863 (_ BitVec 32))) (Undefined!4925) (MissingVacant!4925 (index!21927 (_ BitVec 32))) )
))
(declare-fun lt!247919 () SeekEntryResult!4925)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542379 (= res!337083 (or (= lt!247919 (MissingZero!4925 i!1153)) (= lt!247919 (MissingVacant!4925 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((array!34262 0))(
  ( (array!34263 (arr!16460 (Array (_ BitVec 32) (_ BitVec 64))) (size!16824 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34262)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34262 (_ BitVec 32)) SeekEntryResult!4925)

(assert (=> b!542379 (= lt!247919 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!542380 () Bool)

(declare-fun res!337088 () Bool)

(declare-fun e!313905 () Bool)

(assert (=> b!542380 (=> (not res!337088) (not e!313905))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun lt!247918 () SeekEntryResult!4925)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34262 (_ BitVec 32)) SeekEntryResult!4925)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542380 (= res!337088 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16460 a!3154) j!147) mask!3216) (select (arr!16460 a!3154) j!147) a!3154 mask!3216) lt!247918))))

(declare-fun b!542381 () Bool)

(declare-fun res!337086 () Bool)

(assert (=> b!542381 (=> (not res!337086) (not e!313905))))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!542381 (= res!337086 (and (not (= (select (arr!16460 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16460 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16460 a!3154) index!1177) (select (arr!16460 a!3154) j!147)))))))

(declare-fun b!542382 () Bool)

(declare-fun res!337087 () Bool)

(assert (=> b!542382 (=> (not res!337087) (not e!313903))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!542382 (= res!337087 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16824 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16824 a!3154)) (= (select (arr!16460 a!3154) resIndex!32) (select (arr!16460 a!3154) j!147))))))

(declare-fun b!542383 () Bool)

(declare-fun res!337080 () Bool)

(assert (=> b!542383 (=> (not res!337080) (not e!313906))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542383 (= res!337080 (validKeyInArray!0 k!1998))))

(declare-fun b!542384 () Bool)

(assert (=> b!542384 (= e!313905 false)))

(declare-fun lt!247917 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542384 (= lt!247917 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542385 () Bool)

(declare-fun res!337085 () Bool)

(assert (=> b!542385 (=> (not res!337085) (not e!313906))))

(assert (=> b!542385 (= res!337085 (validKeyInArray!0 (select (arr!16460 a!3154) j!147)))))

(declare-fun b!542387 () Bool)

(declare-fun res!337084 () Bool)

(assert (=> b!542387 (=> (not res!337084) (not e!313906))))

(declare-fun arrayContainsKey!0 (array!34262 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542387 (= res!337084 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542388 () Bool)

(declare-fun res!337081 () Bool)

(assert (=> b!542388 (=> (not res!337081) (not e!313903))))

(declare-datatypes ((List!10632 0))(
  ( (Nil!10629) (Cons!10628 (h!11583 (_ BitVec 64)) (t!16868 List!10632)) )
))
(declare-fun arrayNoDuplicates!0 (array!34262 (_ BitVec 32) List!10632) Bool)

(assert (=> b!542388 (= res!337081 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10629))))

(declare-fun b!542389 () Bool)

(declare-fun res!337091 () Bool)

(assert (=> b!542389 (=> (not res!337091) (not e!313903))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34262 (_ BitVec 32)) Bool)

(assert (=> b!542389 (= res!337091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542390 () Bool)

(declare-fun res!337090 () Bool)

(assert (=> b!542390 (=> (not res!337090) (not e!313906))))

(assert (=> b!542390 (= res!337090 (and (= (size!16824 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16824 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16824 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542386 () Bool)

(assert (=> b!542386 (= e!313903 e!313905)))

(declare-fun res!337089 () Bool)

(assert (=> b!542386 (=> (not res!337089) (not e!313905))))

(assert (=> b!542386 (= res!337089 (= lt!247918 (Intermediate!4925 false resIndex!32 resX!32)))))

(assert (=> b!542386 (= lt!247918 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16460 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!337082 () Bool)

(assert (=> start!49298 (=> (not res!337082) (not e!313906))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49298 (= res!337082 (validMask!0 mask!3216))))

(assert (=> start!49298 e!313906))

(assert (=> start!49298 true))

(declare-fun array_inv!12234 (array!34262) Bool)

(assert (=> start!49298 (array_inv!12234 a!3154)))

(assert (= (and start!49298 res!337082) b!542390))

(assert (= (and b!542390 res!337090) b!542385))

(assert (= (and b!542385 res!337085) b!542383))

(assert (= (and b!542383 res!337080) b!542387))

(assert (= (and b!542387 res!337084) b!542379))

(assert (= (and b!542379 res!337083) b!542389))

(assert (= (and b!542389 res!337091) b!542388))

(assert (= (and b!542388 res!337081) b!542382))

(assert (= (and b!542382 res!337087) b!542386))

(assert (= (and b!542386 res!337089) b!542380))

(assert (= (and b!542380 res!337088) b!542381))

(assert (= (and b!542381 res!337086) b!542384))

(declare-fun m!520651 () Bool)

(assert (=> start!49298 m!520651))

(declare-fun m!520653 () Bool)

(assert (=> start!49298 m!520653))

(declare-fun m!520655 () Bool)

(assert (=> b!542386 m!520655))

(assert (=> b!542386 m!520655))

(declare-fun m!520657 () Bool)

(assert (=> b!542386 m!520657))

(declare-fun m!520659 () Bool)

(assert (=> b!542388 m!520659))

(assert (=> b!542385 m!520655))

(assert (=> b!542385 m!520655))

(declare-fun m!520661 () Bool)

(assert (=> b!542385 m!520661))

(declare-fun m!520663 () Bool)

(assert (=> b!542384 m!520663))

(declare-fun m!520665 () Bool)

(assert (=> b!542382 m!520665))

(assert (=> b!542382 m!520655))

(declare-fun m!520667 () Bool)

(assert (=> b!542387 m!520667))

(assert (=> b!542380 m!520655))

(assert (=> b!542380 m!520655))

(declare-fun m!520669 () Bool)

(assert (=> b!542380 m!520669))

(assert (=> b!542380 m!520669))

(assert (=> b!542380 m!520655))

(declare-fun m!520671 () Bool)

(assert (=> b!542380 m!520671))

(declare-fun m!520673 () Bool)

(assert (=> b!542379 m!520673))

(declare-fun m!520675 () Bool)

(assert (=> b!542381 m!520675))

(assert (=> b!542381 m!520655))

(declare-fun m!520677 () Bool)

(assert (=> b!542383 m!520677))

(declare-fun m!520679 () Bool)

(assert (=> b!542389 m!520679))

(push 1)

(assert (not b!542384))

(assert (not b!542388))

(assert (not start!49298))

(assert (not b!542379))

(assert (not b!542385))

(assert (not b!542387))

(assert (not b!542386))

(assert (not b!542383))

(assert (not b!542389))

(assert (not b!542380))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

