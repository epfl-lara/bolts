; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130914 () Bool)

(assert start!130914)

(declare-fun res!1052162 () Bool)

(declare-fun e!854637 () Bool)

(assert (=> start!130914 (=> (not res!1052162) (not e!854637))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130914 (= res!1052162 (validMask!0 mask!2480))))

(assert (=> start!130914 e!854637))

(assert (=> start!130914 true))

(declare-datatypes ((array!101939 0))(
  ( (array!101940 (arr!49181 (Array (_ BitVec 32) (_ BitVec 64))) (size!49732 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101939)

(declare-fun array_inv!38126 (array!101939) Bool)

(assert (=> start!130914 (array_inv!38126 a!2792)))

(declare-fun b!1534936 () Bool)

(declare-fun res!1052161 () Bool)

(assert (=> b!1534936 (=> (not res!1052161) (not e!854637))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101939 (_ BitVec 32)) Bool)

(assert (=> b!1534936 (= res!1052161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534937 () Bool)

(declare-fun res!1052169 () Bool)

(assert (=> b!1534937 (=> (not res!1052169) (not e!854637))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1534937 (= res!1052169 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49732 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49732 a!2792)) (= (select (arr!49181 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534938 () Bool)

(declare-fun res!1052163 () Bool)

(assert (=> b!1534938 (=> (not res!1052163) (not e!854637))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1534938 (= res!1052163 (not (= (select (arr!49181 a!2792) index!463) (select (arr!49181 a!2792) j!64))))))

(declare-fun b!1534939 () Bool)

(declare-fun e!854639 () Bool)

(assert (=> b!1534939 (= e!854637 e!854639)))

(declare-fun res!1052165 () Bool)

(assert (=> b!1534939 (=> (not res!1052165) (not e!854639))))

(declare-fun lt!663907 () (_ BitVec 32))

(assert (=> b!1534939 (= res!1052165 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663907 #b00000000000000000000000000000000) (bvslt lt!663907 (size!49732 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534939 (= lt!663907 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1534940 () Bool)

(assert (=> b!1534940 (= e!854639 false)))

(declare-datatypes ((SeekEntryResult!13336 0))(
  ( (MissingZero!13336 (index!55738 (_ BitVec 32))) (Found!13336 (index!55739 (_ BitVec 32))) (Intermediate!13336 (undefined!14148 Bool) (index!55740 (_ BitVec 32)) (x!137493 (_ BitVec 32))) (Undefined!13336) (MissingVacant!13336 (index!55741 (_ BitVec 32))) )
))
(declare-fun lt!663906 () SeekEntryResult!13336)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101939 (_ BitVec 32)) SeekEntryResult!13336)

(assert (=> b!1534940 (= lt!663906 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663907 vacantIndex!5 (select (arr!49181 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534941 () Bool)

(declare-fun res!1052168 () Bool)

(assert (=> b!1534941 (=> (not res!1052168) (not e!854637))))

(assert (=> b!1534941 (= res!1052168 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49181 a!2792) j!64) a!2792 mask!2480) (Found!13336 j!64)))))

(declare-fun b!1534942 () Bool)

(declare-fun res!1052160 () Bool)

(assert (=> b!1534942 (=> (not res!1052160) (not e!854637))))

(declare-datatypes ((List!35835 0))(
  ( (Nil!35832) (Cons!35831 (h!37277 (_ BitVec 64)) (t!50536 List!35835)) )
))
(declare-fun arrayNoDuplicates!0 (array!101939 (_ BitVec 32) List!35835) Bool)

(assert (=> b!1534942 (= res!1052160 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35832))))

(declare-fun b!1534943 () Bool)

(declare-fun res!1052166 () Bool)

(assert (=> b!1534943 (=> (not res!1052166) (not e!854637))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534943 (= res!1052166 (and (= (size!49732 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49732 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49732 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534944 () Bool)

(declare-fun res!1052164 () Bool)

(assert (=> b!1534944 (=> (not res!1052164) (not e!854637))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534944 (= res!1052164 (validKeyInArray!0 (select (arr!49181 a!2792) i!951)))))

(declare-fun b!1534945 () Bool)

(declare-fun res!1052167 () Bool)

(assert (=> b!1534945 (=> (not res!1052167) (not e!854637))))

(assert (=> b!1534945 (= res!1052167 (validKeyInArray!0 (select (arr!49181 a!2792) j!64)))))

(assert (= (and start!130914 res!1052162) b!1534943))

(assert (= (and b!1534943 res!1052166) b!1534944))

(assert (= (and b!1534944 res!1052164) b!1534945))

(assert (= (and b!1534945 res!1052167) b!1534936))

(assert (= (and b!1534936 res!1052161) b!1534942))

(assert (= (and b!1534942 res!1052160) b!1534937))

(assert (= (and b!1534937 res!1052169) b!1534941))

(assert (= (and b!1534941 res!1052168) b!1534938))

(assert (= (and b!1534938 res!1052163) b!1534939))

(assert (= (and b!1534939 res!1052165) b!1534940))

(declare-fun m!1417553 () Bool)

(assert (=> b!1534945 m!1417553))

(assert (=> b!1534945 m!1417553))

(declare-fun m!1417555 () Bool)

(assert (=> b!1534945 m!1417555))

(declare-fun m!1417557 () Bool)

(assert (=> b!1534942 m!1417557))

(declare-fun m!1417559 () Bool)

(assert (=> b!1534939 m!1417559))

(declare-fun m!1417561 () Bool)

(assert (=> b!1534937 m!1417561))

(declare-fun m!1417563 () Bool)

(assert (=> b!1534944 m!1417563))

(assert (=> b!1534944 m!1417563))

(declare-fun m!1417565 () Bool)

(assert (=> b!1534944 m!1417565))

(declare-fun m!1417567 () Bool)

(assert (=> b!1534938 m!1417567))

(assert (=> b!1534938 m!1417553))

(declare-fun m!1417569 () Bool)

(assert (=> b!1534936 m!1417569))

(assert (=> b!1534940 m!1417553))

(assert (=> b!1534940 m!1417553))

(declare-fun m!1417571 () Bool)

(assert (=> b!1534940 m!1417571))

(assert (=> b!1534941 m!1417553))

(assert (=> b!1534941 m!1417553))

(declare-fun m!1417573 () Bool)

(assert (=> b!1534941 m!1417573))

(declare-fun m!1417575 () Bool)

(assert (=> start!130914 m!1417575))

(declare-fun m!1417577 () Bool)

(assert (=> start!130914 m!1417577))

(check-sat (not b!1534942) (not b!1534944) (not b!1534941) (not b!1534940) (not start!130914) (not b!1534939) (not b!1534936) (not b!1534945))
(check-sat)
