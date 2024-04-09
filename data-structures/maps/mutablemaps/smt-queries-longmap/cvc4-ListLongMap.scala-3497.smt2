; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48572 () Bool)

(assert start!48572)

(declare-fun b!532868 () Bool)

(declare-fun res!328226 () Bool)

(declare-fun e!310184 () Bool)

(assert (=> b!532868 (=> (not res!328226) (not e!310184))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33740 0))(
  ( (array!33741 (arr!16205 (Array (_ BitVec 32) (_ BitVec 64))) (size!16569 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33740)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!532868 (= res!328226 (and (= (size!16569 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16569 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16569 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!532869 () Bool)

(declare-fun res!328223 () Bool)

(declare-fun e!310185 () Bool)

(assert (=> b!532869 (=> (not res!328223) (not e!310185))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!532869 (= res!328223 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16569 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16569 a!3154)) (= (select (arr!16205 a!3154) resIndex!32) (select (arr!16205 a!3154) j!147))))))

(declare-fun res!328225 () Bool)

(assert (=> start!48572 (=> (not res!328225) (not e!310184))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48572 (= res!328225 (validMask!0 mask!3216))))

(assert (=> start!48572 e!310184))

(assert (=> start!48572 true))

(declare-fun array_inv!11979 (array!33740) Bool)

(assert (=> start!48572 (array_inv!11979 a!3154)))

(declare-fun b!532870 () Bool)

(assert (=> b!532870 (= e!310184 e!310185)))

(declare-fun res!328231 () Bool)

(assert (=> b!532870 (=> (not res!328231) (not e!310185))))

(declare-datatypes ((SeekEntryResult!4670 0))(
  ( (MissingZero!4670 (index!20904 (_ BitVec 32))) (Found!4670 (index!20905 (_ BitVec 32))) (Intermediate!4670 (undefined!5482 Bool) (index!20906 (_ BitVec 32)) (x!49904 (_ BitVec 32))) (Undefined!4670) (MissingVacant!4670 (index!20907 (_ BitVec 32))) )
))
(declare-fun lt!245342 () SeekEntryResult!4670)

(assert (=> b!532870 (= res!328231 (or (= lt!245342 (MissingZero!4670 i!1153)) (= lt!245342 (MissingVacant!4670 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33740 (_ BitVec 32)) SeekEntryResult!4670)

(assert (=> b!532870 (= lt!245342 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!532871 () Bool)

(declare-fun res!328229 () Bool)

(assert (=> b!532871 (=> (not res!328229) (not e!310185))))

(declare-datatypes ((List!10377 0))(
  ( (Nil!10374) (Cons!10373 (h!11316 (_ BitVec 64)) (t!16613 List!10377)) )
))
(declare-fun arrayNoDuplicates!0 (array!33740 (_ BitVec 32) List!10377) Bool)

(assert (=> b!532871 (= res!328229 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10374))))

(declare-fun b!532872 () Bool)

(declare-fun res!328232 () Bool)

(assert (=> b!532872 (=> (not res!328232) (not e!310184))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!532872 (= res!328232 (validKeyInArray!0 (select (arr!16205 a!3154) j!147)))))

(declare-fun b!532873 () Bool)

(assert (=> b!532873 (= e!310185 false)))

(declare-fun lt!245341 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532873 (= lt!245341 (toIndex!0 (select (arr!16205 a!3154) j!147) mask!3216))))

(declare-fun b!532874 () Bool)

(declare-fun res!328224 () Bool)

(assert (=> b!532874 (=> (not res!328224) (not e!310185))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33740 (_ BitVec 32)) SeekEntryResult!4670)

(assert (=> b!532874 (= res!328224 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16205 a!3154) j!147) a!3154 mask!3216) (Intermediate!4670 false resIndex!32 resX!32)))))

(declare-fun b!532875 () Bool)

(declare-fun res!328228 () Bool)

(assert (=> b!532875 (=> (not res!328228) (not e!310184))))

(assert (=> b!532875 (= res!328228 (validKeyInArray!0 k!1998))))

(declare-fun b!532876 () Bool)

(declare-fun res!328230 () Bool)

(assert (=> b!532876 (=> (not res!328230) (not e!310185))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33740 (_ BitVec 32)) Bool)

(assert (=> b!532876 (= res!328230 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!532877 () Bool)

(declare-fun res!328227 () Bool)

(assert (=> b!532877 (=> (not res!328227) (not e!310184))))

(declare-fun arrayContainsKey!0 (array!33740 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!532877 (= res!328227 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48572 res!328225) b!532868))

(assert (= (and b!532868 res!328226) b!532872))

(assert (= (and b!532872 res!328232) b!532875))

(assert (= (and b!532875 res!328228) b!532877))

(assert (= (and b!532877 res!328227) b!532870))

(assert (= (and b!532870 res!328231) b!532876))

(assert (= (and b!532876 res!328230) b!532871))

(assert (= (and b!532871 res!328229) b!532869))

(assert (= (and b!532869 res!328223) b!532874))

(assert (= (and b!532874 res!328224) b!532873))

(declare-fun m!512863 () Bool)

(assert (=> start!48572 m!512863))

(declare-fun m!512865 () Bool)

(assert (=> start!48572 m!512865))

(declare-fun m!512867 () Bool)

(assert (=> b!532869 m!512867))

(declare-fun m!512869 () Bool)

(assert (=> b!532869 m!512869))

(assert (=> b!532872 m!512869))

(assert (=> b!532872 m!512869))

(declare-fun m!512871 () Bool)

(assert (=> b!532872 m!512871))

(declare-fun m!512873 () Bool)

(assert (=> b!532875 m!512873))

(assert (=> b!532873 m!512869))

(assert (=> b!532873 m!512869))

(declare-fun m!512875 () Bool)

(assert (=> b!532873 m!512875))

(assert (=> b!532874 m!512869))

(assert (=> b!532874 m!512869))

(declare-fun m!512877 () Bool)

(assert (=> b!532874 m!512877))

(declare-fun m!512879 () Bool)

(assert (=> b!532870 m!512879))

(declare-fun m!512881 () Bool)

(assert (=> b!532877 m!512881))

(declare-fun m!512883 () Bool)

(assert (=> b!532871 m!512883))

(declare-fun m!512885 () Bool)

(assert (=> b!532876 m!512885))

(push 1)

(assert (not b!532873))

(assert (not b!532870))

(assert (not b!532871))

(assert (not start!48572))

(assert (not b!532876))

(assert (not b!532875))

(assert (not b!532872))

(assert (not b!532877))

