; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48500 () Bool)

(assert start!48500)

(declare-fun b!532364 () Bool)

(declare-fun res!327861 () Bool)

(declare-fun e!309950 () Bool)

(assert (=> b!532364 (=> (not res!327861) (not e!309950))))

(declare-datatypes ((array!33719 0))(
  ( (array!33720 (arr!16196 (Array (_ BitVec 32) (_ BitVec 64))) (size!16560 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33719)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!532364 (= res!327861 (validKeyInArray!0 (select (arr!16196 a!3154) j!147)))))

(declare-fun b!532365 () Bool)

(declare-fun res!327862 () Bool)

(declare-fun e!309951 () Bool)

(assert (=> b!532365 (=> (not res!327862) (not e!309951))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4661 0))(
  ( (MissingZero!4661 (index!20868 (_ BitVec 32))) (Found!4661 (index!20869 (_ BitVec 32))) (Intermediate!4661 (undefined!5473 Bool) (index!20870 (_ BitVec 32)) (x!49865 (_ BitVec 32))) (Undefined!4661) (MissingVacant!4661 (index!20871 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33719 (_ BitVec 32)) SeekEntryResult!4661)

(assert (=> b!532365 (= res!327862 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16196 a!3154) j!147) a!3154 mask!3216) (Intermediate!4661 false resIndex!32 resX!32)))))

(declare-fun b!532366 () Bool)

(declare-fun res!327865 () Bool)

(assert (=> b!532366 (=> (not res!327865) (not e!309950))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!532366 (= res!327865 (validKeyInArray!0 k!1998))))

(declare-fun b!532367 () Bool)

(declare-fun res!327863 () Bool)

(assert (=> b!532367 (=> (not res!327863) (not e!309951))))

(assert (=> b!532367 (= res!327863 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16560 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16560 a!3154)) (= (select (arr!16196 a!3154) resIndex!32) (select (arr!16196 a!3154) j!147))))))

(declare-fun b!532368 () Bool)

(assert (=> b!532368 (= e!309950 e!309951)))

(declare-fun res!327860 () Bool)

(assert (=> b!532368 (=> (not res!327860) (not e!309951))))

(declare-fun lt!245197 () SeekEntryResult!4661)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!532368 (= res!327860 (or (= lt!245197 (MissingZero!4661 i!1153)) (= lt!245197 (MissingVacant!4661 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33719 (_ BitVec 32)) SeekEntryResult!4661)

(assert (=> b!532368 (= lt!245197 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun res!327867 () Bool)

(assert (=> start!48500 (=> (not res!327867) (not e!309950))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48500 (= res!327867 (validMask!0 mask!3216))))

(assert (=> start!48500 e!309950))

(assert (=> start!48500 true))

(declare-fun array_inv!11970 (array!33719) Bool)

(assert (=> start!48500 (array_inv!11970 a!3154)))

(declare-fun b!532369 () Bool)

(declare-fun res!327868 () Bool)

(assert (=> b!532369 (=> (not res!327868) (not e!309950))))

(assert (=> b!532369 (= res!327868 (and (= (size!16560 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16560 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16560 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!532370 () Bool)

(declare-fun res!327869 () Bool)

(assert (=> b!532370 (=> (not res!327869) (not e!309951))))

(declare-datatypes ((List!10368 0))(
  ( (Nil!10365) (Cons!10364 (h!11304 (_ BitVec 64)) (t!16604 List!10368)) )
))
(declare-fun arrayNoDuplicates!0 (array!33719 (_ BitVec 32) List!10368) Bool)

(assert (=> b!532370 (= res!327869 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10365))))

(declare-fun b!532371 () Bool)

(assert (=> b!532371 (= e!309951 (bvslt mask!3216 #b00000000000000000000000000000000))))

(declare-fun lt!245198 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532371 (= lt!245198 (toIndex!0 (select (arr!16196 a!3154) j!147) mask!3216))))

(declare-fun b!532372 () Bool)

(declare-fun res!327864 () Bool)

(assert (=> b!532372 (=> (not res!327864) (not e!309950))))

(declare-fun arrayContainsKey!0 (array!33719 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!532372 (= res!327864 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!532373 () Bool)

(declare-fun res!327866 () Bool)

(assert (=> b!532373 (=> (not res!327866) (not e!309951))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33719 (_ BitVec 32)) Bool)

(assert (=> b!532373 (= res!327866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48500 res!327867) b!532369))

(assert (= (and b!532369 res!327868) b!532364))

(assert (= (and b!532364 res!327861) b!532366))

(assert (= (and b!532366 res!327865) b!532372))

(assert (= (and b!532372 res!327864) b!532368))

(assert (= (and b!532368 res!327860) b!532373))

(assert (= (and b!532373 res!327866) b!532370))

(assert (= (and b!532370 res!327869) b!532367))

(assert (= (and b!532367 res!327863) b!532365))

(assert (= (and b!532365 res!327862) b!532371))

(declare-fun m!512527 () Bool)

(assert (=> b!532371 m!512527))

(assert (=> b!532371 m!512527))

(declare-fun m!512529 () Bool)

(assert (=> b!532371 m!512529))

(declare-fun m!512531 () Bool)

(assert (=> b!532372 m!512531))

(assert (=> b!532364 m!512527))

(assert (=> b!532364 m!512527))

(declare-fun m!512533 () Bool)

(assert (=> b!532364 m!512533))

(declare-fun m!512535 () Bool)

(assert (=> b!532366 m!512535))

(declare-fun m!512537 () Bool)

(assert (=> b!532370 m!512537))

(assert (=> b!532365 m!512527))

(assert (=> b!532365 m!512527))

(declare-fun m!512539 () Bool)

(assert (=> b!532365 m!512539))

(declare-fun m!512541 () Bool)

(assert (=> start!48500 m!512541))

(declare-fun m!512543 () Bool)

(assert (=> start!48500 m!512543))

(declare-fun m!512545 () Bool)

(assert (=> b!532368 m!512545))

(declare-fun m!512547 () Bool)

(assert (=> b!532373 m!512547))

(declare-fun m!512549 () Bool)

(assert (=> b!532367 m!512549))

(assert (=> b!532367 m!512527))

(push 1)

(assert (not b!532365))

(assert (not b!532364))

(assert (not b!532373))

(assert (not b!532370))

(assert (not b!532368))

(assert (not b!532371))

(assert (not b!532372))

(assert (not b!532366))

(assert (not start!48500))

(check-sat)

