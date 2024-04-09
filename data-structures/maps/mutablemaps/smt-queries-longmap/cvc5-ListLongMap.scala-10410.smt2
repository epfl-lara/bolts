; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122662 () Bool)

(assert start!122662)

(declare-fun b!1420214 () Bool)

(declare-fun e!803332 () Bool)

(assert (=> b!1420214 (= e!803332 false)))

(declare-datatypes ((SeekEntryResult!11093 0))(
  ( (MissingZero!11093 (index!46763 (_ BitVec 32))) (Found!11093 (index!46764 (_ BitVec 32))) (Intermediate!11093 (undefined!11905 Bool) (index!46765 (_ BitVec 32)) (x!128434 (_ BitVec 32))) (Undefined!11093) (MissingVacant!11093 (index!46766 (_ BitVec 32))) )
))
(declare-fun lt!625840 () SeekEntryResult!11093)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96945 0))(
  ( (array!96946 (arr!46786 (Array (_ BitVec 32) (_ BitVec 64))) (size!47337 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96945)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96945 (_ BitVec 32)) SeekEntryResult!11093)

(assert (=> b!1420214 (= lt!625840 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46786 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1420215 () Bool)

(declare-fun res!955757 () Bool)

(assert (=> b!1420215 (=> (not res!955757) (not e!803332))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420215 (= res!955757 (validKeyInArray!0 (select (arr!46786 a!2831) j!81)))))

(declare-fun b!1420216 () Bool)

(declare-fun res!955763 () Bool)

(assert (=> b!1420216 (=> (not res!955763) (not e!803332))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420216 (= res!955763 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46786 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46786 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96946 (store (arr!46786 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47337 a!2831)) mask!2608) (Intermediate!11093 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun res!955759 () Bool)

(assert (=> start!122662 (=> (not res!955759) (not e!803332))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122662 (= res!955759 (validMask!0 mask!2608))))

(assert (=> start!122662 e!803332))

(assert (=> start!122662 true))

(declare-fun array_inv!35731 (array!96945) Bool)

(assert (=> start!122662 (array_inv!35731 a!2831)))

(declare-fun b!1420217 () Bool)

(declare-fun res!955761 () Bool)

(assert (=> b!1420217 (=> (not res!955761) (not e!803332))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1420217 (= res!955761 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47337 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47337 a!2831))))))

(declare-fun b!1420218 () Bool)

(declare-fun res!955758 () Bool)

(assert (=> b!1420218 (=> (not res!955758) (not e!803332))))

(assert (=> b!1420218 (= res!955758 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46786 a!2831) j!81) mask!2608) (select (arr!46786 a!2831) j!81) a!2831 mask!2608) (Intermediate!11093 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1420219 () Bool)

(declare-fun res!955756 () Bool)

(assert (=> b!1420219 (=> (not res!955756) (not e!803332))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96945 (_ BitVec 32)) Bool)

(assert (=> b!1420219 (= res!955756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420220 () Bool)

(declare-fun res!955760 () Bool)

(assert (=> b!1420220 (=> (not res!955760) (not e!803332))))

(assert (=> b!1420220 (= res!955760 (validKeyInArray!0 (select (arr!46786 a!2831) i!982)))))

(declare-fun b!1420221 () Bool)

(declare-fun res!955764 () Bool)

(assert (=> b!1420221 (=> (not res!955764) (not e!803332))))

(declare-datatypes ((List!33476 0))(
  ( (Nil!33473) (Cons!33472 (h!34774 (_ BitVec 64)) (t!48177 List!33476)) )
))
(declare-fun arrayNoDuplicates!0 (array!96945 (_ BitVec 32) List!33476) Bool)

(assert (=> b!1420221 (= res!955764 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33473))))

(declare-fun b!1420222 () Bool)

(declare-fun res!955762 () Bool)

(assert (=> b!1420222 (=> (not res!955762) (not e!803332))))

(assert (=> b!1420222 (= res!955762 (and (= (size!47337 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47337 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47337 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122662 res!955759) b!1420222))

(assert (= (and b!1420222 res!955762) b!1420220))

(assert (= (and b!1420220 res!955760) b!1420215))

(assert (= (and b!1420215 res!955757) b!1420219))

(assert (= (and b!1420219 res!955756) b!1420221))

(assert (= (and b!1420221 res!955764) b!1420217))

(assert (= (and b!1420217 res!955761) b!1420218))

(assert (= (and b!1420218 res!955758) b!1420216))

(assert (= (and b!1420216 res!955763) b!1420214))

(declare-fun m!1310777 () Bool)

(assert (=> b!1420220 m!1310777))

(assert (=> b!1420220 m!1310777))

(declare-fun m!1310779 () Bool)

(assert (=> b!1420220 m!1310779))

(declare-fun m!1310781 () Bool)

(assert (=> b!1420219 m!1310781))

(declare-fun m!1310783 () Bool)

(assert (=> start!122662 m!1310783))

(declare-fun m!1310785 () Bool)

(assert (=> start!122662 m!1310785))

(declare-fun m!1310787 () Bool)

(assert (=> b!1420216 m!1310787))

(declare-fun m!1310789 () Bool)

(assert (=> b!1420216 m!1310789))

(assert (=> b!1420216 m!1310789))

(declare-fun m!1310791 () Bool)

(assert (=> b!1420216 m!1310791))

(assert (=> b!1420216 m!1310791))

(assert (=> b!1420216 m!1310789))

(declare-fun m!1310793 () Bool)

(assert (=> b!1420216 m!1310793))

(declare-fun m!1310795 () Bool)

(assert (=> b!1420221 m!1310795))

(declare-fun m!1310797 () Bool)

(assert (=> b!1420214 m!1310797))

(assert (=> b!1420214 m!1310797))

(declare-fun m!1310799 () Bool)

(assert (=> b!1420214 m!1310799))

(assert (=> b!1420218 m!1310797))

(assert (=> b!1420218 m!1310797))

(declare-fun m!1310801 () Bool)

(assert (=> b!1420218 m!1310801))

(assert (=> b!1420218 m!1310801))

(assert (=> b!1420218 m!1310797))

(declare-fun m!1310803 () Bool)

(assert (=> b!1420218 m!1310803))

(assert (=> b!1420215 m!1310797))

(assert (=> b!1420215 m!1310797))

(declare-fun m!1310805 () Bool)

(assert (=> b!1420215 m!1310805))

(push 1)

(assert (not start!122662))

(assert (not b!1420215))

(assert (not b!1420219))

(assert (not b!1420214))

(assert (not b!1420216))

(assert (not b!1420218))

(assert (not b!1420221))

(assert (not b!1420220))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

