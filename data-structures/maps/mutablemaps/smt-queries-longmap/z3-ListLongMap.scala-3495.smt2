; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48504 () Bool)

(assert start!48504)

(declare-fun b!532424 () Bool)

(declare-fun res!327922 () Bool)

(declare-fun e!309970 () Bool)

(assert (=> b!532424 (=> (not res!327922) (not e!309970))))

(declare-datatypes ((array!33723 0))(
  ( (array!33724 (arr!16198 (Array (_ BitVec 32) (_ BitVec 64))) (size!16562 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33723)

(declare-datatypes ((List!10370 0))(
  ( (Nil!10367) (Cons!10366 (h!11306 (_ BitVec 64)) (t!16606 List!10370)) )
))
(declare-fun arrayNoDuplicates!0 (array!33723 (_ BitVec 32) List!10370) Bool)

(assert (=> b!532424 (= res!327922 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10367))))

(declare-fun b!532426 () Bool)

(declare-fun res!327921 () Bool)

(declare-fun e!309968 () Bool)

(assert (=> b!532426 (=> (not res!327921) (not e!309968))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33723 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!532426 (= res!327921 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!532427 () Bool)

(declare-fun res!327923 () Bool)

(assert (=> b!532427 (=> (not res!327923) (not e!309968))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!532427 (= res!327923 (and (= (size!16562 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16562 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16562 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!532428 () Bool)

(declare-fun res!327927 () Bool)

(assert (=> b!532428 (=> (not res!327927) (not e!309970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33723 (_ BitVec 32)) Bool)

(assert (=> b!532428 (= res!327927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!532429 () Bool)

(declare-fun res!327926 () Bool)

(assert (=> b!532429 (=> (not res!327926) (not e!309968))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!532429 (= res!327926 (validKeyInArray!0 k0!1998))))

(declare-fun b!532425 () Bool)

(assert (=> b!532425 (= e!309970 false)))

(declare-fun lt!245209 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532425 (= lt!245209 (toIndex!0 (select (arr!16198 a!3154) j!147) mask!3216))))

(declare-fun res!327925 () Bool)

(assert (=> start!48504 (=> (not res!327925) (not e!309968))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48504 (= res!327925 (validMask!0 mask!3216))))

(assert (=> start!48504 e!309968))

(assert (=> start!48504 true))

(declare-fun array_inv!11972 (array!33723) Bool)

(assert (=> start!48504 (array_inv!11972 a!3154)))

(declare-fun b!532430 () Bool)

(declare-fun res!327924 () Bool)

(assert (=> b!532430 (=> (not res!327924) (not e!309970))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4663 0))(
  ( (MissingZero!4663 (index!20876 (_ BitVec 32))) (Found!4663 (index!20877 (_ BitVec 32))) (Intermediate!4663 (undefined!5475 Bool) (index!20878 (_ BitVec 32)) (x!49875 (_ BitVec 32))) (Undefined!4663) (MissingVacant!4663 (index!20879 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33723 (_ BitVec 32)) SeekEntryResult!4663)

(assert (=> b!532430 (= res!327924 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16198 a!3154) j!147) a!3154 mask!3216) (Intermediate!4663 false resIndex!32 resX!32)))))

(declare-fun b!532431 () Bool)

(declare-fun res!327929 () Bool)

(assert (=> b!532431 (=> (not res!327929) (not e!309970))))

(assert (=> b!532431 (= res!327929 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16562 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16562 a!3154)) (= (select (arr!16198 a!3154) resIndex!32) (select (arr!16198 a!3154) j!147))))))

(declare-fun b!532432 () Bool)

(assert (=> b!532432 (= e!309968 e!309970)))

(declare-fun res!327920 () Bool)

(assert (=> b!532432 (=> (not res!327920) (not e!309970))))

(declare-fun lt!245210 () SeekEntryResult!4663)

(assert (=> b!532432 (= res!327920 (or (= lt!245210 (MissingZero!4663 i!1153)) (= lt!245210 (MissingVacant!4663 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33723 (_ BitVec 32)) SeekEntryResult!4663)

(assert (=> b!532432 (= lt!245210 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!532433 () Bool)

(declare-fun res!327928 () Bool)

(assert (=> b!532433 (=> (not res!327928) (not e!309968))))

(assert (=> b!532433 (= res!327928 (validKeyInArray!0 (select (arr!16198 a!3154) j!147)))))

(assert (= (and start!48504 res!327925) b!532427))

(assert (= (and b!532427 res!327923) b!532433))

(assert (= (and b!532433 res!327928) b!532429))

(assert (= (and b!532429 res!327926) b!532426))

(assert (= (and b!532426 res!327921) b!532432))

(assert (= (and b!532432 res!327920) b!532428))

(assert (= (and b!532428 res!327927) b!532424))

(assert (= (and b!532424 res!327922) b!532431))

(assert (= (and b!532431 res!327929) b!532430))

(assert (= (and b!532430 res!327924) b!532425))

(declare-fun m!512575 () Bool)

(assert (=> b!532428 m!512575))

(declare-fun m!512577 () Bool)

(assert (=> b!532425 m!512577))

(assert (=> b!532425 m!512577))

(declare-fun m!512579 () Bool)

(assert (=> b!532425 m!512579))

(declare-fun m!512581 () Bool)

(assert (=> start!48504 m!512581))

(declare-fun m!512583 () Bool)

(assert (=> start!48504 m!512583))

(assert (=> b!532433 m!512577))

(assert (=> b!532433 m!512577))

(declare-fun m!512585 () Bool)

(assert (=> b!532433 m!512585))

(assert (=> b!532430 m!512577))

(assert (=> b!532430 m!512577))

(declare-fun m!512587 () Bool)

(assert (=> b!532430 m!512587))

(declare-fun m!512589 () Bool)

(assert (=> b!532424 m!512589))

(declare-fun m!512591 () Bool)

(assert (=> b!532431 m!512591))

(assert (=> b!532431 m!512577))

(declare-fun m!512593 () Bool)

(assert (=> b!532429 m!512593))

(declare-fun m!512595 () Bool)

(assert (=> b!532426 m!512595))

(declare-fun m!512597 () Bool)

(assert (=> b!532432 m!512597))

(check-sat (not b!532425) (not b!532424) (not b!532426) (not b!532433) (not b!532432) (not start!48504) (not b!532428) (not b!532429) (not b!532430))
(check-sat)
