; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32458 () Bool)

(assert start!32458)

(declare-fun b!324010 () Bool)

(declare-fun res!177501 () Bool)

(declare-fun e!200098 () Bool)

(assert (=> b!324010 (=> (not res!177501) (not e!200098))))

(declare-datatypes ((array!16593 0))(
  ( (array!16594 (arr!7851 (Array (_ BitVec 32) (_ BitVec 64))) (size!8203 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16593)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2993 0))(
  ( (MissingZero!2993 (index!14148 (_ BitVec 32))) (Found!2993 (index!14149 (_ BitVec 32))) (Intermediate!2993 (undefined!3805 Bool) (index!14150 (_ BitVec 32)) (x!32360 (_ BitVec 32))) (Undefined!2993) (MissingVacant!2993 (index!14151 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16593 (_ BitVec 32)) SeekEntryResult!2993)

(assert (=> b!324010 (= res!177501 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2993 i!1250)))))

(declare-fun b!324011 () Bool)

(declare-fun res!177505 () Bool)

(declare-fun e!200097 () Bool)

(assert (=> b!324011 (=> (not res!177505) (not e!200097))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun lt!156725 () SeekEntryResult!2993)

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16593 (_ BitVec 32)) SeekEntryResult!2993)

(assert (=> b!324011 (= res!177505 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156725))))

(declare-fun b!324012 () Bool)

(declare-fun res!177500 () Bool)

(assert (=> b!324012 (=> (not res!177500) (not e!200098))))

(declare-fun arrayContainsKey!0 (array!16593 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324012 (= res!177500 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324013 () Bool)

(declare-fun res!177506 () Bool)

(assert (=> b!324013 (=> (not res!177506) (not e!200097))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!324013 (= res!177506 (and (= (select (arr!7851 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8203 a!3305))))))

(declare-fun res!177504 () Bool)

(assert (=> start!32458 (=> (not res!177504) (not e!200098))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32458 (= res!177504 (validMask!0 mask!3777))))

(assert (=> start!32458 e!200098))

(declare-fun array_inv!5805 (array!16593) Bool)

(assert (=> start!32458 (array_inv!5805 a!3305)))

(assert (=> start!32458 true))

(declare-fun b!324014 () Bool)

(assert (=> b!324014 (= e!200098 e!200097)))

(declare-fun res!177499 () Bool)

(assert (=> b!324014 (=> (not res!177499) (not e!200097))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324014 (= res!177499 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156725))))

(assert (=> b!324014 (= lt!156725 (Intermediate!2993 false resIndex!58 resX!58))))

(declare-fun b!324015 () Bool)

(declare-fun res!177503 () Bool)

(assert (=> b!324015 (=> (not res!177503) (not e!200098))))

(assert (=> b!324015 (= res!177503 (and (= (size!8203 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8203 a!3305))))))

(declare-fun b!324016 () Bool)

(declare-fun res!177507 () Bool)

(assert (=> b!324016 (=> (not res!177507) (not e!200098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16593 (_ BitVec 32)) Bool)

(assert (=> b!324016 (= res!177507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324017 () Bool)

(declare-fun res!177502 () Bool)

(assert (=> b!324017 (=> (not res!177502) (not e!200098))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324017 (= res!177502 (validKeyInArray!0 k!2497))))

(declare-fun b!324018 () Bool)

(assert (=> b!324018 (= e!200097 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7851 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777))))))

(assert (= (and start!32458 res!177504) b!324015))

(assert (= (and b!324015 res!177503) b!324017))

(assert (= (and b!324017 res!177502) b!324012))

(assert (= (and b!324012 res!177500) b!324010))

(assert (= (and b!324010 res!177501) b!324016))

(assert (= (and b!324016 res!177507) b!324014))

(assert (= (and b!324014 res!177499) b!324013))

(assert (= (and b!324013 res!177506) b!324011))

(assert (= (and b!324011 res!177505) b!324018))

(declare-fun m!331143 () Bool)

(assert (=> start!32458 m!331143))

(declare-fun m!331145 () Bool)

(assert (=> start!32458 m!331145))

(declare-fun m!331147 () Bool)

(assert (=> b!324014 m!331147))

(assert (=> b!324014 m!331147))

(declare-fun m!331149 () Bool)

(assert (=> b!324014 m!331149))

(declare-fun m!331151 () Bool)

(assert (=> b!324018 m!331151))

(declare-fun m!331153 () Bool)

(assert (=> b!324017 m!331153))

(declare-fun m!331155 () Bool)

(assert (=> b!324011 m!331155))

(declare-fun m!331157 () Bool)

(assert (=> b!324012 m!331157))

(declare-fun m!331159 () Bool)

(assert (=> b!324013 m!331159))

(declare-fun m!331161 () Bool)

(assert (=> b!324016 m!331161))

(declare-fun m!331163 () Bool)

(assert (=> b!324010 m!331163))

(push 1)

(assert (not b!324017))

(assert (not b!324016))

(assert (not b!324014))

(assert (not start!32458))

(assert (not b!324011))

(assert (not b!324012))

(assert (not b!324010))

(check-sat)

(pop 1)

(push 1)

(check-sat)

