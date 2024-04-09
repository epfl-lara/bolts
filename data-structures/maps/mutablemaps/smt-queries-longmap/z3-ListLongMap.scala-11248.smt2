; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131190 () Bool)

(assert start!131190)

(declare-fun b!1538504 () Bool)

(declare-fun res!1055625 () Bool)

(declare-fun e!855992 () Bool)

(assert (=> b!1538504 (=> (not res!1055625) (not e!855992))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102182 0))(
  ( (array!102183 (arr!49301 (Array (_ BitVec 32) (_ BitVec 64))) (size!49852 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102182)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1538504 (= res!1055625 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49852 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49852 a!2792)) (= (select (arr!49301 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538505 () Bool)

(declare-fun res!1055621 () Bool)

(assert (=> b!1538505 (=> (not res!1055621) (not e!855992))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538505 (= res!1055621 (and (= (size!49852 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49852 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49852 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538506 () Bool)

(declare-fun res!1055624 () Bool)

(assert (=> b!1538506 (=> (not res!1055624) (not e!855992))))

(declare-datatypes ((List!35955 0))(
  ( (Nil!35952) (Cons!35951 (h!37397 (_ BitVec 64)) (t!50656 List!35955)) )
))
(declare-fun arrayNoDuplicates!0 (array!102182 (_ BitVec 32) List!35955) Bool)

(assert (=> b!1538506 (= res!1055624 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35952))))

(declare-fun b!1538507 () Bool)

(declare-fun res!1055626 () Bool)

(assert (=> b!1538507 (=> (not res!1055626) (not e!855992))))

(declare-datatypes ((SeekEntryResult!13450 0))(
  ( (MissingZero!13450 (index!56194 (_ BitVec 32))) (Found!13450 (index!56195 (_ BitVec 32))) (Intermediate!13450 (undefined!14262 Bool) (index!56196 (_ BitVec 32)) (x!137930 (_ BitVec 32))) (Undefined!13450) (MissingVacant!13450 (index!56197 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102182 (_ BitVec 32)) SeekEntryResult!13450)

(assert (=> b!1538507 (= res!1055626 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49301 a!2792) j!64) a!2792 mask!2480) (Found!13450 j!64)))))

(declare-fun res!1055620 () Bool)

(assert (=> start!131190 (=> (not res!1055620) (not e!855992))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131190 (= res!1055620 (validMask!0 mask!2480))))

(assert (=> start!131190 e!855992))

(assert (=> start!131190 true))

(declare-fun array_inv!38246 (array!102182) Bool)

(assert (=> start!131190 (array_inv!38246 a!2792)))

(declare-fun b!1538508 () Bool)

(declare-fun res!1055622 () Bool)

(assert (=> b!1538508 (=> (not res!1055622) (not e!855992))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538508 (= res!1055622 (validKeyInArray!0 (select (arr!49301 a!2792) j!64)))))

(declare-fun b!1538509 () Bool)

(declare-fun res!1055627 () Bool)

(assert (=> b!1538509 (=> (not res!1055627) (not e!855992))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102182 (_ BitVec 32)) Bool)

(assert (=> b!1538509 (= res!1055627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538510 () Bool)

(declare-fun res!1055623 () Bool)

(assert (=> b!1538510 (=> (not res!1055623) (not e!855992))))

(assert (=> b!1538510 (= res!1055623 (not (= (select (arr!49301 a!2792) index!463) (select (arr!49301 a!2792) j!64))))))

(declare-fun b!1538511 () Bool)

(assert (=> b!1538511 (= e!855992 false)))

(declare-fun lt!664843 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538511 (= lt!664843 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538512 () Bool)

(declare-fun res!1055628 () Bool)

(assert (=> b!1538512 (=> (not res!1055628) (not e!855992))))

(assert (=> b!1538512 (= res!1055628 (validKeyInArray!0 (select (arr!49301 a!2792) i!951)))))

(assert (= (and start!131190 res!1055620) b!1538505))

(assert (= (and b!1538505 res!1055621) b!1538512))

(assert (= (and b!1538512 res!1055628) b!1538508))

(assert (= (and b!1538508 res!1055622) b!1538509))

(assert (= (and b!1538509 res!1055627) b!1538506))

(assert (= (and b!1538506 res!1055624) b!1538504))

(assert (= (and b!1538504 res!1055625) b!1538507))

(assert (= (and b!1538507 res!1055626) b!1538510))

(assert (= (and b!1538510 res!1055623) b!1538511))

(declare-fun m!1420965 () Bool)

(assert (=> b!1538509 m!1420965))

(declare-fun m!1420967 () Bool)

(assert (=> b!1538512 m!1420967))

(assert (=> b!1538512 m!1420967))

(declare-fun m!1420969 () Bool)

(assert (=> b!1538512 m!1420969))

(declare-fun m!1420971 () Bool)

(assert (=> start!131190 m!1420971))

(declare-fun m!1420973 () Bool)

(assert (=> start!131190 m!1420973))

(declare-fun m!1420975 () Bool)

(assert (=> b!1538507 m!1420975))

(assert (=> b!1538507 m!1420975))

(declare-fun m!1420977 () Bool)

(assert (=> b!1538507 m!1420977))

(declare-fun m!1420979 () Bool)

(assert (=> b!1538504 m!1420979))

(assert (=> b!1538508 m!1420975))

(assert (=> b!1538508 m!1420975))

(declare-fun m!1420981 () Bool)

(assert (=> b!1538508 m!1420981))

(declare-fun m!1420983 () Bool)

(assert (=> b!1538506 m!1420983))

(declare-fun m!1420985 () Bool)

(assert (=> b!1538510 m!1420985))

(assert (=> b!1538510 m!1420975))

(declare-fun m!1420987 () Bool)

(assert (=> b!1538511 m!1420987))

(check-sat (not b!1538506) (not b!1538511) (not b!1538512) (not b!1538507) (not b!1538509) (not start!131190) (not b!1538508))
