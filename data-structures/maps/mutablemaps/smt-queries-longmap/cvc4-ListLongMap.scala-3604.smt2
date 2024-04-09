; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49634 () Bool)

(assert start!49634)

(declare-fun b!545810 () Bool)

(declare-fun e!315471 () Bool)

(declare-fun e!315473 () Bool)

(assert (=> b!545810 (= e!315471 e!315473)))

(declare-fun res!339897 () Bool)

(assert (=> b!545810 (=> (not res!339897) (not e!315473))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-datatypes ((array!34403 0))(
  ( (array!34404 (arr!16526 (Array (_ BitVec 32) (_ BitVec 64))) (size!16890 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34403)

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun lt!249083 () (_ BitVec 32))

(assert (=> b!545810 (= res!339897 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!249083 #b00000000000000000000000000000000) (bvslt lt!249083 (size!16890 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545810 (= lt!249083 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!545811 () Bool)

(declare-fun res!339895 () Bool)

(declare-fun e!315475 () Bool)

(assert (=> b!545811 (=> (not res!339895) (not e!315475))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!545811 (= res!339895 (validKeyInArray!0 k!1998))))

(declare-fun b!545812 () Bool)

(declare-fun e!315470 () Bool)

(assert (=> b!545812 (= e!315470 e!315471)))

(declare-fun res!339889 () Bool)

(assert (=> b!545812 (=> (not res!339889) (not e!315471))))

(declare-datatypes ((SeekEntryResult!4991 0))(
  ( (MissingZero!4991 (index!22188 (_ BitVec 32))) (Found!4991 (index!22189 (_ BitVec 32))) (Intermediate!4991 (undefined!5803 Bool) (index!22190 (_ BitVec 32)) (x!51138 (_ BitVec 32))) (Undefined!4991) (MissingVacant!4991 (index!22191 (_ BitVec 32))) )
))
(declare-fun lt!249082 () SeekEntryResult!4991)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun lt!249084 () SeekEntryResult!4991)

(assert (=> b!545812 (= res!339889 (and (= lt!249082 lt!249084) (not (= (select (arr!16526 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16526 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16526 a!3154) index!1177) (select (arr!16526 a!3154) j!147)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34403 (_ BitVec 32)) SeekEntryResult!4991)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545812 (= lt!249082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16526 a!3154) j!147) mask!3216) (select (arr!16526 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!339890 () Bool)

(assert (=> start!49634 (=> (not res!339890) (not e!315475))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49634 (= res!339890 (validMask!0 mask!3216))))

(assert (=> start!49634 e!315475))

(assert (=> start!49634 true))

(declare-fun array_inv!12300 (array!34403) Bool)

(assert (=> start!49634 (array_inv!12300 a!3154)))

(declare-fun b!545813 () Bool)

(declare-fun e!315474 () Bool)

(assert (=> b!545813 (= e!315475 e!315474)))

(declare-fun res!339899 () Bool)

(assert (=> b!545813 (=> (not res!339899) (not e!315474))))

(declare-fun lt!249081 () SeekEntryResult!4991)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!545813 (= res!339899 (or (= lt!249081 (MissingZero!4991 i!1153)) (= lt!249081 (MissingVacant!4991 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34403 (_ BitVec 32)) SeekEntryResult!4991)

(assert (=> b!545813 (= lt!249081 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!545814 () Bool)

(declare-fun res!339892 () Bool)

(assert (=> b!545814 (=> (not res!339892) (not e!315475))))

(assert (=> b!545814 (= res!339892 (validKeyInArray!0 (select (arr!16526 a!3154) j!147)))))

(declare-fun b!545815 () Bool)

(declare-fun res!339896 () Bool)

(assert (=> b!545815 (=> (not res!339896) (not e!315474))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!545815 (= res!339896 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16890 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16890 a!3154)) (= (select (arr!16526 a!3154) resIndex!32) (select (arr!16526 a!3154) j!147))))))

(declare-fun b!545816 () Bool)

(declare-fun res!339893 () Bool)

(assert (=> b!545816 (=> (not res!339893) (not e!315475))))

(declare-fun arrayContainsKey!0 (array!34403 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!545816 (= res!339893 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!545817 () Bool)

(declare-fun res!339887 () Bool)

(assert (=> b!545817 (=> (not res!339887) (not e!315474))))

(declare-datatypes ((List!10698 0))(
  ( (Nil!10695) (Cons!10694 (h!11658 (_ BitVec 64)) (t!16934 List!10698)) )
))
(declare-fun arrayNoDuplicates!0 (array!34403 (_ BitVec 32) List!10698) Bool)

(assert (=> b!545817 (= res!339887 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10695))))

(declare-fun b!545818 () Bool)

(declare-fun e!315472 () Bool)

(assert (=> b!545818 (= e!315472 (not true))))

(declare-fun lt!249085 () SeekEntryResult!4991)

(assert (=> b!545818 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249083 (select (store (arr!16526 a!3154) i!1153 k!1998) j!147) (array!34404 (store (arr!16526 a!3154) i!1153 k!1998) (size!16890 a!3154)) mask!3216) lt!249085)))

(declare-datatypes ((Unit!16914 0))(
  ( (Unit!16915) )
))
(declare-fun lt!249080 () Unit!16914)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34403 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16914)

(assert (=> b!545818 (= lt!249080 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!249083 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!545819 () Bool)

(assert (=> b!545819 (= e!315473 e!315472)))

(declare-fun res!339894 () Bool)

(assert (=> b!545819 (=> (not res!339894) (not e!315472))))

(declare-fun lt!249086 () SeekEntryResult!4991)

(assert (=> b!545819 (= res!339894 (and (= lt!249086 lt!249085) (= lt!249082 lt!249086)))))

(assert (=> b!545819 (= lt!249086 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249083 (select (arr!16526 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545820 () Bool)

(assert (=> b!545820 (= e!315474 e!315470)))

(declare-fun res!339891 () Bool)

(assert (=> b!545820 (=> (not res!339891) (not e!315470))))

(assert (=> b!545820 (= res!339891 (= lt!249084 lt!249085))))

(assert (=> b!545820 (= lt!249085 (Intermediate!4991 false resIndex!32 resX!32))))

(assert (=> b!545820 (= lt!249084 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16526 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545821 () Bool)

(declare-fun res!339888 () Bool)

(assert (=> b!545821 (=> (not res!339888) (not e!315474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34403 (_ BitVec 32)) Bool)

(assert (=> b!545821 (= res!339888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!545822 () Bool)

(declare-fun res!339898 () Bool)

(assert (=> b!545822 (=> (not res!339898) (not e!315475))))

(assert (=> b!545822 (= res!339898 (and (= (size!16890 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16890 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16890 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!49634 res!339890) b!545822))

(assert (= (and b!545822 res!339898) b!545814))

(assert (= (and b!545814 res!339892) b!545811))

(assert (= (and b!545811 res!339895) b!545816))

(assert (= (and b!545816 res!339893) b!545813))

(assert (= (and b!545813 res!339899) b!545821))

(assert (= (and b!545821 res!339888) b!545817))

(assert (= (and b!545817 res!339887) b!545815))

(assert (= (and b!545815 res!339896) b!545820))

(assert (= (and b!545820 res!339891) b!545812))

(assert (= (and b!545812 res!339889) b!545810))

(assert (= (and b!545810 res!339897) b!545819))

(assert (= (and b!545819 res!339894) b!545818))

(declare-fun m!523395 () Bool)

(assert (=> b!545811 m!523395))

(declare-fun m!523397 () Bool)

(assert (=> b!545816 m!523397))

(declare-fun m!523399 () Bool)

(assert (=> b!545812 m!523399))

(declare-fun m!523401 () Bool)

(assert (=> b!545812 m!523401))

(assert (=> b!545812 m!523401))

(declare-fun m!523403 () Bool)

(assert (=> b!545812 m!523403))

(assert (=> b!545812 m!523403))

(assert (=> b!545812 m!523401))

(declare-fun m!523405 () Bool)

(assert (=> b!545812 m!523405))

(declare-fun m!523407 () Bool)

(assert (=> b!545813 m!523407))

(declare-fun m!523409 () Bool)

(assert (=> b!545815 m!523409))

(assert (=> b!545815 m!523401))

(declare-fun m!523411 () Bool)

(assert (=> b!545810 m!523411))

(declare-fun m!523413 () Bool)

(assert (=> b!545821 m!523413))

(assert (=> b!545820 m!523401))

(assert (=> b!545820 m!523401))

(declare-fun m!523415 () Bool)

(assert (=> b!545820 m!523415))

(declare-fun m!523417 () Bool)

(assert (=> b!545818 m!523417))

(declare-fun m!523419 () Bool)

(assert (=> b!545818 m!523419))

(assert (=> b!545818 m!523419))

(declare-fun m!523421 () Bool)

(assert (=> b!545818 m!523421))

(declare-fun m!523423 () Bool)

(assert (=> b!545818 m!523423))

(assert (=> b!545814 m!523401))

(assert (=> b!545814 m!523401))

(declare-fun m!523425 () Bool)

(assert (=> b!545814 m!523425))

(declare-fun m!523427 () Bool)

(assert (=> b!545817 m!523427))

(assert (=> b!545819 m!523401))

(assert (=> b!545819 m!523401))

(declare-fun m!523429 () Bool)

(assert (=> b!545819 m!523429))

(declare-fun m!523431 () Bool)

(assert (=> start!49634 m!523431))

(declare-fun m!523433 () Bool)

(assert (=> start!49634 m!523433))

(push 1)

(assert (not b!545818))

