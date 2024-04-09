; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48790 () Bool)

(assert start!48790)

(declare-fun b!536378 () Bool)

(declare-fun res!331734 () Bool)

(declare-fun e!311361 () Bool)

(assert (=> b!536378 (=> (not res!331734) (not e!311361))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536378 (= res!331734 (validKeyInArray!0 k!1998))))

(declare-fun b!536379 () Bool)

(declare-fun e!311362 () Bool)

(assert (=> b!536379 (= e!311361 e!311362)))

(declare-fun res!331736 () Bool)

(assert (=> b!536379 (=> (not res!331736) (not e!311362))))

(declare-datatypes ((SeekEntryResult!4779 0))(
  ( (MissingZero!4779 (index!21340 (_ BitVec 32))) (Found!4779 (index!21341 (_ BitVec 32))) (Intermediate!4779 (undefined!5591 Bool) (index!21342 (_ BitVec 32)) (x!50309 (_ BitVec 32))) (Undefined!4779) (MissingVacant!4779 (index!21343 (_ BitVec 32))) )
))
(declare-fun lt!246099 () SeekEntryResult!4779)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536379 (= res!331736 (or (= lt!246099 (MissingZero!4779 i!1153)) (= lt!246099 (MissingVacant!4779 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((array!33958 0))(
  ( (array!33959 (arr!16314 (Array (_ BitVec 32) (_ BitVec 64))) (size!16678 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33958)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33958 (_ BitVec 32)) SeekEntryResult!4779)

(assert (=> b!536379 (= lt!246099 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!536380 () Bool)

(declare-fun res!331739 () Bool)

(declare-fun e!311358 () Bool)

(assert (=> b!536380 (=> (not res!331739) (not e!311358))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!536380 (= res!331739 (and (not (= (select (arr!16314 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16314 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16314 a!3154) index!1177) (select (arr!16314 a!3154) j!147)))))))

(declare-fun b!536381 () Bool)

(declare-fun e!311359 () Bool)

(assert (=> b!536381 (= e!311358 e!311359)))

(declare-fun res!331745 () Bool)

(assert (=> b!536381 (=> (not res!331745) (not e!311359))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun lt!246101 () (_ BitVec 32))

(assert (=> b!536381 (= res!331745 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246101 #b00000000000000000000000000000000) (bvslt lt!246101 (size!16678 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536381 (= lt!246101 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!536382 () Bool)

(declare-fun res!331744 () Bool)

(assert (=> b!536382 (=> (not res!331744) (not e!311362))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!536382 (= res!331744 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16678 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16678 a!3154)) (= (select (arr!16314 a!3154) resIndex!32) (select (arr!16314 a!3154) j!147))))))

(declare-fun b!536383 () Bool)

(declare-fun res!331735 () Bool)

(assert (=> b!536383 (=> (not res!331735) (not e!311361))))

(assert (=> b!536383 (= res!331735 (validKeyInArray!0 (select (arr!16314 a!3154) j!147)))))

(declare-fun b!536384 () Bool)

(assert (=> b!536384 (= e!311362 e!311358)))

(declare-fun res!331741 () Bool)

(assert (=> b!536384 (=> (not res!331741) (not e!311358))))

(declare-fun lt!246098 () SeekEntryResult!4779)

(assert (=> b!536384 (= res!331741 (= lt!246098 (Intermediate!4779 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33958 (_ BitVec 32)) SeekEntryResult!4779)

(assert (=> b!536384 (= lt!246098 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16314 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536385 () Bool)

(declare-fun res!331742 () Bool)

(assert (=> b!536385 (=> (not res!331742) (not e!311361))))

(assert (=> b!536385 (= res!331742 (and (= (size!16678 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16678 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16678 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536386 () Bool)

(declare-fun res!331738 () Bool)

(assert (=> b!536386 (=> (not res!331738) (not e!311358))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536386 (= res!331738 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16314 a!3154) j!147) mask!3216) (select (arr!16314 a!3154) j!147) a!3154 mask!3216) lt!246098))))

(declare-fun b!536387 () Bool)

(declare-fun res!331737 () Bool)

(assert (=> b!536387 (=> (not res!331737) (not e!311362))))

(declare-datatypes ((List!10486 0))(
  ( (Nil!10483) (Cons!10482 (h!11425 (_ BitVec 64)) (t!16722 List!10486)) )
))
(declare-fun arrayNoDuplicates!0 (array!33958 (_ BitVec 32) List!10486) Bool)

(assert (=> b!536387 (= res!331737 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10483))))

(declare-fun b!536388 () Bool)

(declare-fun res!331743 () Bool)

(assert (=> b!536388 (=> (not res!331743) (not e!311361))))

(declare-fun arrayContainsKey!0 (array!33958 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536388 (= res!331743 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536389 () Bool)

(assert (=> b!536389 (= e!311359 false)))

(declare-fun lt!246100 () SeekEntryResult!4779)

(assert (=> b!536389 (= lt!246100 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246101 (select (arr!16314 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536390 () Bool)

(declare-fun res!331733 () Bool)

(assert (=> b!536390 (=> (not res!331733) (not e!311362))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33958 (_ BitVec 32)) Bool)

(assert (=> b!536390 (= res!331733 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!331740 () Bool)

(assert (=> start!48790 (=> (not res!331740) (not e!311361))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48790 (= res!331740 (validMask!0 mask!3216))))

(assert (=> start!48790 e!311361))

(assert (=> start!48790 true))

(declare-fun array_inv!12088 (array!33958) Bool)

(assert (=> start!48790 (array_inv!12088 a!3154)))

(assert (= (and start!48790 res!331740) b!536385))

(assert (= (and b!536385 res!331742) b!536383))

(assert (= (and b!536383 res!331735) b!536378))

(assert (= (and b!536378 res!331734) b!536388))

(assert (= (and b!536388 res!331743) b!536379))

(assert (= (and b!536379 res!331736) b!536390))

(assert (= (and b!536390 res!331733) b!536387))

(assert (= (and b!536387 res!331737) b!536382))

(assert (= (and b!536382 res!331744) b!536384))

(assert (= (and b!536384 res!331741) b!536386))

(assert (= (and b!536386 res!331738) b!536380))

(assert (= (and b!536380 res!331739) b!536381))

(assert (= (and b!536381 res!331745) b!536389))

(declare-fun m!515803 () Bool)

(assert (=> b!536386 m!515803))

(assert (=> b!536386 m!515803))

(declare-fun m!515805 () Bool)

(assert (=> b!536386 m!515805))

(assert (=> b!536386 m!515805))

(assert (=> b!536386 m!515803))

(declare-fun m!515807 () Bool)

(assert (=> b!536386 m!515807))

(declare-fun m!515809 () Bool)

(assert (=> b!536388 m!515809))

(declare-fun m!515811 () Bool)

(assert (=> b!536382 m!515811))

(assert (=> b!536382 m!515803))

(assert (=> b!536383 m!515803))

(assert (=> b!536383 m!515803))

(declare-fun m!515813 () Bool)

(assert (=> b!536383 m!515813))

(declare-fun m!515815 () Bool)

(assert (=> b!536387 m!515815))

(declare-fun m!515817 () Bool)

(assert (=> b!536390 m!515817))

(declare-fun m!515819 () Bool)

(assert (=> start!48790 m!515819))

(declare-fun m!515821 () Bool)

(assert (=> start!48790 m!515821))

(assert (=> b!536389 m!515803))

(assert (=> b!536389 m!515803))

(declare-fun m!515823 () Bool)

(assert (=> b!536389 m!515823))

(declare-fun m!515825 () Bool)

(assert (=> b!536378 m!515825))

(assert (=> b!536384 m!515803))

(assert (=> b!536384 m!515803))

(declare-fun m!515827 () Bool)

(assert (=> b!536384 m!515827))

(declare-fun m!515829 () Bool)

(assert (=> b!536381 m!515829))

(declare-fun m!515831 () Bool)

(assert (=> b!536380 m!515831))

(assert (=> b!536380 m!515803))

(declare-fun m!515833 () Bool)

(assert (=> b!536379 m!515833))

(push 1)

