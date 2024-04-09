; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32514 () Bool)

(assert start!32514)

(declare-fun b!324840 () Bool)

(declare-fun e!200348 () Bool)

(assert (=> b!324840 (= e!200348 false)))

(declare-fun lt!156884 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324840 (= lt!156884 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324841 () Bool)

(declare-fun res!178338 () Bool)

(declare-fun e!200350 () Bool)

(assert (=> b!324841 (=> (not res!178338) (not e!200350))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324841 (= res!178338 (validKeyInArray!0 k!2497))))

(declare-fun b!324842 () Bool)

(declare-fun res!178334 () Bool)

(assert (=> b!324842 (=> (not res!178334) (not e!200348))))

(declare-datatypes ((array!16649 0))(
  ( (array!16650 (arr!7879 (Array (_ BitVec 32) (_ BitVec 64))) (size!8231 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16649)

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!324842 (= res!178334 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7879 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324843 () Bool)

(declare-fun res!178337 () Bool)

(assert (=> b!324843 (=> (not res!178337) (not e!200348))))

(declare-datatypes ((SeekEntryResult!3021 0))(
  ( (MissingZero!3021 (index!14260 (_ BitVec 32))) (Found!3021 (index!14261 (_ BitVec 32))) (Intermediate!3021 (undefined!3833 Bool) (index!14262 (_ BitVec 32)) (x!32468 (_ BitVec 32))) (Undefined!3021) (MissingVacant!3021 (index!14263 (_ BitVec 32))) )
))
(declare-fun lt!156883 () SeekEntryResult!3021)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16649 (_ BitVec 32)) SeekEntryResult!3021)

(assert (=> b!324843 (= res!178337 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156883))))

(declare-fun b!324844 () Bool)

(declare-fun res!178331 () Bool)

(assert (=> b!324844 (=> (not res!178331) (not e!200350))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324844 (= res!178331 (and (= (size!8231 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8231 a!3305))))))

(declare-fun b!324845 () Bool)

(assert (=> b!324845 (= e!200350 e!200348)))

(declare-fun res!178335 () Bool)

(assert (=> b!324845 (=> (not res!178335) (not e!200348))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324845 (= res!178335 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156883))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!324845 (= lt!156883 (Intermediate!3021 false resIndex!58 resX!58))))

(declare-fun res!178329 () Bool)

(assert (=> start!32514 (=> (not res!178329) (not e!200350))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32514 (= res!178329 (validMask!0 mask!3777))))

(assert (=> start!32514 e!200350))

(declare-fun array_inv!5833 (array!16649) Bool)

(assert (=> start!32514 (array_inv!5833 a!3305)))

(assert (=> start!32514 true))

(declare-fun b!324846 () Bool)

(declare-fun res!178333 () Bool)

(assert (=> b!324846 (=> (not res!178333) (not e!200350))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16649 (_ BitVec 32)) Bool)

(assert (=> b!324846 (= res!178333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324847 () Bool)

(declare-fun res!178336 () Bool)

(assert (=> b!324847 (=> (not res!178336) (not e!200350))))

(declare-fun arrayContainsKey!0 (array!16649 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324847 (= res!178336 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324848 () Bool)

(declare-fun res!178332 () Bool)

(assert (=> b!324848 (=> (not res!178332) (not e!200348))))

(assert (=> b!324848 (= res!178332 (and (= (select (arr!7879 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8231 a!3305))))))

(declare-fun b!324849 () Bool)

(declare-fun res!178330 () Bool)

(assert (=> b!324849 (=> (not res!178330) (not e!200350))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16649 (_ BitVec 32)) SeekEntryResult!3021)

(assert (=> b!324849 (= res!178330 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3021 i!1250)))))

(assert (= (and start!32514 res!178329) b!324844))

(assert (= (and b!324844 res!178331) b!324841))

(assert (= (and b!324841 res!178338) b!324847))

(assert (= (and b!324847 res!178336) b!324849))

(assert (= (and b!324849 res!178330) b!324846))

(assert (= (and b!324846 res!178333) b!324845))

(assert (= (and b!324845 res!178335) b!324848))

(assert (= (and b!324848 res!178332) b!324843))

(assert (= (and b!324843 res!178337) b!324842))

(assert (= (and b!324842 res!178334) b!324840))

(declare-fun m!331807 () Bool)

(assert (=> b!324841 m!331807))

(declare-fun m!331809 () Bool)

(assert (=> b!324843 m!331809))

(declare-fun m!331811 () Bool)

(assert (=> b!324840 m!331811))

(declare-fun m!331813 () Bool)

(assert (=> start!32514 m!331813))

(declare-fun m!331815 () Bool)

(assert (=> start!32514 m!331815))

(declare-fun m!331817 () Bool)

(assert (=> b!324847 m!331817))

(declare-fun m!331819 () Bool)

(assert (=> b!324848 m!331819))

(declare-fun m!331821 () Bool)

(assert (=> b!324849 m!331821))

(declare-fun m!331823 () Bool)

(assert (=> b!324846 m!331823))

(declare-fun m!331825 () Bool)

(assert (=> b!324842 m!331825))

(declare-fun m!331827 () Bool)

(assert (=> b!324845 m!331827))

(assert (=> b!324845 m!331827))

(declare-fun m!331829 () Bool)

(assert (=> b!324845 m!331829))

(push 1)

