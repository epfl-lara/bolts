; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32262 () Bool)

(assert start!32262)

(declare-fun b!321076 () Bool)

(declare-fun res!175359 () Bool)

(declare-fun e!199011 () Bool)

(assert (=> b!321076 (=> (not res!175359) (not e!199011))))

(declare-datatypes ((array!16448 0))(
  ( (array!16449 (arr!7780 (Array (_ BitVec 32) (_ BitVec 64))) (size!8132 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16448)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2922 0))(
  ( (MissingZero!2922 (index!13864 (_ BitVec 32))) (Found!2922 (index!13865 (_ BitVec 32))) (Intermediate!2922 (undefined!3734 Bool) (index!13866 (_ BitVec 32)) (x!32096 (_ BitVec 32))) (Undefined!2922) (MissingVacant!2922 (index!13867 (_ BitVec 32))) )
))
(declare-fun lt!156137 () SeekEntryResult!2922)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16448 (_ BitVec 32)) SeekEntryResult!2922)

(assert (=> b!321076 (= res!175359 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156137))))

(declare-fun b!321077 () Bool)

(declare-fun res!175355 () Bool)

(declare-fun e!199012 () Bool)

(assert (=> b!321077 (=> (not res!175355) (not e!199012))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321077 (= res!175355 (validKeyInArray!0 k!2497))))

(declare-fun b!321078 () Bool)

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!321078 (= e!199011 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7780 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7780 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7780 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3777 #b00000000000000000000000000000000)))))

(declare-fun b!321079 () Bool)

(assert (=> b!321079 (= e!199012 e!199011)))

(declare-fun res!175356 () Bool)

(assert (=> b!321079 (=> (not res!175356) (not e!199011))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321079 (= res!175356 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156137))))

(assert (=> b!321079 (= lt!156137 (Intermediate!2922 false resIndex!58 resX!58))))

(declare-fun res!175362 () Bool)

(assert (=> start!32262 (=> (not res!175362) (not e!199012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32262 (= res!175362 (validMask!0 mask!3777))))

(assert (=> start!32262 e!199012))

(declare-fun array_inv!5734 (array!16448) Bool)

(assert (=> start!32262 (array_inv!5734 a!3305)))

(assert (=> start!32262 true))

(declare-fun b!321080 () Bool)

(declare-fun res!175360 () Bool)

(assert (=> b!321080 (=> (not res!175360) (not e!199012))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!321080 (= res!175360 (and (= (size!8132 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8132 a!3305))))))

(declare-fun b!321081 () Bool)

(declare-fun res!175358 () Bool)

(assert (=> b!321081 (=> (not res!175358) (not e!199011))))

(assert (=> b!321081 (= res!175358 (and (= (select (arr!7780 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8132 a!3305))))))

(declare-fun b!321082 () Bool)

(declare-fun res!175357 () Bool)

(assert (=> b!321082 (=> (not res!175357) (not e!199012))))

(declare-fun arrayContainsKey!0 (array!16448 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321082 (= res!175357 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321083 () Bool)

(declare-fun res!175354 () Bool)

(assert (=> b!321083 (=> (not res!175354) (not e!199012))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16448 (_ BitVec 32)) Bool)

(assert (=> b!321083 (= res!175354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321084 () Bool)

(declare-fun res!175361 () Bool)

(assert (=> b!321084 (=> (not res!175361) (not e!199012))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16448 (_ BitVec 32)) SeekEntryResult!2922)

(assert (=> b!321084 (= res!175361 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2922 i!1250)))))

(assert (= (and start!32262 res!175362) b!321080))

(assert (= (and b!321080 res!175360) b!321077))

(assert (= (and b!321077 res!175355) b!321082))

(assert (= (and b!321082 res!175357) b!321084))

(assert (= (and b!321084 res!175361) b!321083))

(assert (= (and b!321083 res!175354) b!321079))

(assert (= (and b!321079 res!175356) b!321081))

(assert (= (and b!321081 res!175358) b!321076))

(assert (= (and b!321076 res!175359) b!321078))

(declare-fun m!329293 () Bool)

(assert (=> b!321084 m!329293))

(declare-fun m!329295 () Bool)

(assert (=> b!321081 m!329295))

(declare-fun m!329297 () Bool)

(assert (=> b!321079 m!329297))

(assert (=> b!321079 m!329297))

(declare-fun m!329299 () Bool)

(assert (=> b!321079 m!329299))

(declare-fun m!329301 () Bool)

(assert (=> start!32262 m!329301))

(declare-fun m!329303 () Bool)

(assert (=> start!32262 m!329303))

(declare-fun m!329305 () Bool)

(assert (=> b!321076 m!329305))

(declare-fun m!329307 () Bool)

(assert (=> b!321083 m!329307))

(declare-fun m!329309 () Bool)

(assert (=> b!321078 m!329309))

(declare-fun m!329311 () Bool)

(assert (=> b!321082 m!329311))

(declare-fun m!329313 () Bool)

(assert (=> b!321077 m!329313))

(push 1)

(assert (not b!321079))

