; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32472 () Bool)

(assert start!32472)

(declare-fun b!324210 () Bool)

(declare-fun res!177702 () Bool)

(declare-fun e!200161 () Bool)

(assert (=> b!324210 (=> (not res!177702) (not e!200161))))

(declare-datatypes ((array!16607 0))(
  ( (array!16608 (arr!7858 (Array (_ BitVec 32) (_ BitVec 64))) (size!8210 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16607)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16607 (_ BitVec 32)) Bool)

(assert (=> b!324210 (= res!177702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324211 () Bool)

(declare-fun res!177703 () Bool)

(assert (=> b!324211 (=> (not res!177703) (not e!200161))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324211 (= res!177703 (and (= (size!8210 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8210 a!3305))))))

(declare-fun b!324212 () Bool)

(declare-fun res!177701 () Bool)

(assert (=> b!324212 (=> (not res!177701) (not e!200161))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16607 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324212 (= res!177701 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324213 () Bool)

(declare-fun res!177699 () Bool)

(assert (=> b!324213 (=> (not res!177699) (not e!200161))))

(declare-datatypes ((SeekEntryResult!3000 0))(
  ( (MissingZero!3000 (index!14176 (_ BitVec 32))) (Found!3000 (index!14177 (_ BitVec 32))) (Intermediate!3000 (undefined!3812 Bool) (index!14178 (_ BitVec 32)) (x!32391 (_ BitVec 32))) (Undefined!3000) (MissingVacant!3000 (index!14179 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16607 (_ BitVec 32)) SeekEntryResult!3000)

(assert (=> b!324213 (= res!177699 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3000 i!1250)))))

(declare-fun b!324214 () Bool)

(declare-fun e!200160 () Bool)

(assert (=> b!324214 (= e!200160 false)))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun lt!156758 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324214 (= lt!156758 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun res!177706 () Bool)

(assert (=> start!32472 (=> (not res!177706) (not e!200161))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32472 (= res!177706 (validMask!0 mask!3777))))

(assert (=> start!32472 e!200161))

(declare-fun array_inv!5812 (array!16607) Bool)

(assert (=> start!32472 (array_inv!5812 a!3305)))

(assert (=> start!32472 true))

(declare-fun b!324215 () Bool)

(declare-fun res!177704 () Bool)

(assert (=> b!324215 (=> (not res!177704) (not e!200160))))

(declare-fun lt!156757 () SeekEntryResult!3000)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16607 (_ BitVec 32)) SeekEntryResult!3000)

(assert (=> b!324215 (= res!177704 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156757))))

(declare-fun b!324216 () Bool)

(declare-fun res!177705 () Bool)

(assert (=> b!324216 (=> (not res!177705) (not e!200161))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324216 (= res!177705 (validKeyInArray!0 k!2497))))

(declare-fun b!324217 () Bool)

(declare-fun res!177707 () Bool)

(assert (=> b!324217 (=> (not res!177707) (not e!200160))))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!324217 (= res!177707 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7858 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324218 () Bool)

(assert (=> b!324218 (= e!200161 e!200160)))

(declare-fun res!177708 () Bool)

(assert (=> b!324218 (=> (not res!177708) (not e!200160))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324218 (= res!177708 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156757))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!324218 (= lt!156757 (Intermediate!3000 false resIndex!58 resX!58))))

(declare-fun b!324219 () Bool)

(declare-fun res!177700 () Bool)

(assert (=> b!324219 (=> (not res!177700) (not e!200160))))

(assert (=> b!324219 (= res!177700 (and (= (select (arr!7858 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8210 a!3305))))))

(assert (= (and start!32472 res!177706) b!324211))

(assert (= (and b!324211 res!177703) b!324216))

(assert (= (and b!324216 res!177705) b!324212))

(assert (= (and b!324212 res!177701) b!324213))

(assert (= (and b!324213 res!177699) b!324210))

(assert (= (and b!324210 res!177702) b!324218))

(assert (= (and b!324218 res!177708) b!324219))

(assert (= (and b!324219 res!177700) b!324215))

(assert (= (and b!324215 res!177704) b!324217))

(assert (= (and b!324217 res!177707) b!324214))

(declare-fun m!331303 () Bool)

(assert (=> b!324213 m!331303))

(declare-fun m!331305 () Bool)

(assert (=> b!324218 m!331305))

(assert (=> b!324218 m!331305))

(declare-fun m!331307 () Bool)

(assert (=> b!324218 m!331307))

(declare-fun m!331309 () Bool)

(assert (=> b!324217 m!331309))

(declare-fun m!331311 () Bool)

(assert (=> start!32472 m!331311))

(declare-fun m!331313 () Bool)

(assert (=> start!32472 m!331313))

(declare-fun m!331315 () Bool)

(assert (=> b!324219 m!331315))

(declare-fun m!331317 () Bool)

(assert (=> b!324212 m!331317))

(declare-fun m!331319 () Bool)

(assert (=> b!324215 m!331319))

(declare-fun m!331321 () Bool)

(assert (=> b!324216 m!331321))

(declare-fun m!331323 () Bool)

(assert (=> b!324210 m!331323))

(declare-fun m!331325 () Bool)

(assert (=> b!324214 m!331325))

(push 1)

