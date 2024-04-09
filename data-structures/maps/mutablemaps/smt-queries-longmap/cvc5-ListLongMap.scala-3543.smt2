; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48844 () Bool)

(assert start!48844)

(declare-fun b!537431 () Bool)

(declare-fun res!332787 () Bool)

(declare-fun e!311767 () Bool)

(assert (=> b!537431 (=> (not res!332787) (not e!311767))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!537431 (= res!332787 (validKeyInArray!0 k!1998))))

(declare-fun b!537432 () Bool)

(declare-fun res!332798 () Bool)

(declare-fun e!311765 () Bool)

(assert (=> b!537432 (=> (not res!332798) (not e!311765))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34012 0))(
  ( (array!34013 (arr!16341 (Array (_ BitVec 32) (_ BitVec 64))) (size!16705 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34012)

(assert (=> b!537432 (= res!332798 (and (not (= (select (arr!16341 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16341 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16341 a!3154) index!1177) (select (arr!16341 a!3154) j!147)))))))

(declare-fun b!537433 () Bool)

(declare-fun res!332788 () Bool)

(declare-fun e!311764 () Bool)

(assert (=> b!537433 (=> (not res!332788) (not e!311764))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34012 (_ BitVec 32)) Bool)

(assert (=> b!537433 (= res!332788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!537434 () Bool)

(assert (=> b!537434 (= e!311767 e!311764)))

(declare-fun res!332790 () Bool)

(assert (=> b!537434 (=> (not res!332790) (not e!311764))))

(declare-datatypes ((SeekEntryResult!4806 0))(
  ( (MissingZero!4806 (index!21448 (_ BitVec 32))) (Found!4806 (index!21449 (_ BitVec 32))) (Intermediate!4806 (undefined!5618 Bool) (index!21450 (_ BitVec 32)) (x!50408 (_ BitVec 32))) (Undefined!4806) (MissingVacant!4806 (index!21451 (_ BitVec 32))) )
))
(declare-fun lt!246425 () SeekEntryResult!4806)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!537434 (= res!332790 (or (= lt!246425 (MissingZero!4806 i!1153)) (= lt!246425 (MissingVacant!4806 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34012 (_ BitVec 32)) SeekEntryResult!4806)

(assert (=> b!537434 (= lt!246425 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!537435 () Bool)

(declare-fun e!311763 () Bool)

(assert (=> b!537435 (= e!311765 e!311763)))

(declare-fun res!332792 () Bool)

(assert (=> b!537435 (=> (not res!332792) (not e!311763))))

(declare-fun lt!246422 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!537435 (= res!332792 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246422 #b00000000000000000000000000000000) (bvslt lt!246422 (size!16705 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537435 (= lt!246422 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!537436 () Bool)

(assert (=> b!537436 (= e!311763 false)))

(declare-fun lt!246423 () SeekEntryResult!4806)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34012 (_ BitVec 32)) SeekEntryResult!4806)

(assert (=> b!537436 (= lt!246423 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246422 (select (arr!16341 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!332795 () Bool)

(assert (=> start!48844 (=> (not res!332795) (not e!311767))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48844 (= res!332795 (validMask!0 mask!3216))))

(assert (=> start!48844 e!311767))

(assert (=> start!48844 true))

(declare-fun array_inv!12115 (array!34012) Bool)

(assert (=> start!48844 (array_inv!12115 a!3154)))

(declare-fun b!537437 () Bool)

(declare-fun res!332786 () Bool)

(assert (=> b!537437 (=> (not res!332786) (not e!311767))))

(assert (=> b!537437 (= res!332786 (and (= (size!16705 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16705 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16705 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!537438 () Bool)

(declare-fun res!332789 () Bool)

(assert (=> b!537438 (=> (not res!332789) (not e!311764))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!537438 (= res!332789 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16705 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16705 a!3154)) (= (select (arr!16341 a!3154) resIndex!32) (select (arr!16341 a!3154) j!147))))))

(declare-fun b!537439 () Bool)

(declare-fun res!332797 () Bool)

(assert (=> b!537439 (=> (not res!332797) (not e!311767))))

(declare-fun arrayContainsKey!0 (array!34012 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!537439 (= res!332797 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!537440 () Bool)

(declare-fun res!332791 () Bool)

(assert (=> b!537440 (=> (not res!332791) (not e!311767))))

(assert (=> b!537440 (= res!332791 (validKeyInArray!0 (select (arr!16341 a!3154) j!147)))))

(declare-fun b!537441 () Bool)

(declare-fun res!332794 () Bool)

(assert (=> b!537441 (=> (not res!332794) (not e!311765))))

(declare-fun lt!246424 () SeekEntryResult!4806)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!537441 (= res!332794 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16341 a!3154) j!147) mask!3216) (select (arr!16341 a!3154) j!147) a!3154 mask!3216) lt!246424))))

(declare-fun b!537442 () Bool)

(declare-fun res!332796 () Bool)

(assert (=> b!537442 (=> (not res!332796) (not e!311764))))

(declare-datatypes ((List!10513 0))(
  ( (Nil!10510) (Cons!10509 (h!11452 (_ BitVec 64)) (t!16749 List!10513)) )
))
(declare-fun arrayNoDuplicates!0 (array!34012 (_ BitVec 32) List!10513) Bool)

(assert (=> b!537442 (= res!332796 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10510))))

(declare-fun b!537443 () Bool)

(assert (=> b!537443 (= e!311764 e!311765)))

(declare-fun res!332793 () Bool)

(assert (=> b!537443 (=> (not res!332793) (not e!311765))))

(assert (=> b!537443 (= res!332793 (= lt!246424 (Intermediate!4806 false resIndex!32 resX!32)))))

(assert (=> b!537443 (= lt!246424 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16341 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48844 res!332795) b!537437))

(assert (= (and b!537437 res!332786) b!537440))

(assert (= (and b!537440 res!332791) b!537431))

(assert (= (and b!537431 res!332787) b!537439))

(assert (= (and b!537439 res!332797) b!537434))

(assert (= (and b!537434 res!332790) b!537433))

(assert (= (and b!537433 res!332788) b!537442))

(assert (= (and b!537442 res!332796) b!537438))

(assert (= (and b!537438 res!332789) b!537443))

(assert (= (and b!537443 res!332793) b!537441))

(assert (= (and b!537441 res!332794) b!537432))

(assert (= (and b!537432 res!332798) b!537435))

(assert (= (and b!537435 res!332792) b!537436))

(declare-fun m!516667 () Bool)

(assert (=> b!537431 m!516667))

(declare-fun m!516669 () Bool)

(assert (=> b!537434 m!516669))

(declare-fun m!516671 () Bool)

(assert (=> b!537441 m!516671))

(assert (=> b!537441 m!516671))

(declare-fun m!516673 () Bool)

(assert (=> b!537441 m!516673))

(assert (=> b!537441 m!516673))

(assert (=> b!537441 m!516671))

(declare-fun m!516675 () Bool)

(assert (=> b!537441 m!516675))

(assert (=> b!537443 m!516671))

(assert (=> b!537443 m!516671))

(declare-fun m!516677 () Bool)

(assert (=> b!537443 m!516677))

(assert (=> b!537440 m!516671))

(assert (=> b!537440 m!516671))

(declare-fun m!516679 () Bool)

(assert (=> b!537440 m!516679))

(declare-fun m!516681 () Bool)

(assert (=> b!537433 m!516681))

(declare-fun m!516683 () Bool)

(assert (=> b!537439 m!516683))

(declare-fun m!516685 () Bool)

(assert (=> b!537435 m!516685))

(assert (=> b!537436 m!516671))

(assert (=> b!537436 m!516671))

(declare-fun m!516687 () Bool)

(assert (=> b!537436 m!516687))

(declare-fun m!516689 () Bool)

(assert (=> b!537438 m!516689))

(assert (=> b!537438 m!516671))

(declare-fun m!516691 () Bool)

(assert (=> b!537432 m!516691))

(assert (=> b!537432 m!516671))

(declare-fun m!516693 () Bool)

(assert (=> b!537442 m!516693))

(declare-fun m!516695 () Bool)

(assert (=> start!48844 m!516695))

(declare-fun m!516697 () Bool)

(assert (=> start!48844 m!516697))

(push 1)

