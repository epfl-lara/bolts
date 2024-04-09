; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27108 () Bool)

(assert start!27108)

(declare-fun b!279981 () Bool)

(declare-fun res!143089 () Bool)

(declare-fun e!178424 () Bool)

(assert (=> b!279981 (=> (not res!143089) (not e!178424))))

(declare-datatypes ((array!13915 0))(
  ( (array!13916 (arr!6599 (Array (_ BitVec 32) (_ BitVec 64))) (size!6951 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13915)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!279981 (= res!143089 (and (= (size!6951 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6951 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6951 a!3325))))))

(declare-fun b!279982 () Bool)

(declare-fun res!143092 () Bool)

(declare-fun e!178425 () Bool)

(assert (=> b!279982 (=> (not res!143092) (not e!178425))))

(assert (=> b!279982 (= res!143092 (not (= startIndex!26 i!1267)))))

(declare-fun b!279983 () Bool)

(declare-fun res!143095 () Bool)

(assert (=> b!279983 (=> (not res!143095) (not e!178425))))

(declare-datatypes ((List!4428 0))(
  ( (Nil!4425) (Cons!4424 (h!5094 (_ BitVec 64)) (t!9518 List!4428)) )
))
(declare-fun contains!1978 (List!4428 (_ BitVec 64)) Bool)

(assert (=> b!279983 (= res!143095 (not (contains!1978 Nil!4425 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!279984 () Bool)

(declare-fun res!143100 () Bool)

(assert (=> b!279984 (=> (not res!143100) (not e!178425))))

(declare-fun noDuplicate!162 (List!4428) Bool)

(assert (=> b!279984 (= res!143100 (noDuplicate!162 Nil!4425))))

(declare-fun b!279985 () Bool)

(declare-fun res!143088 () Bool)

(assert (=> b!279985 (=> (not res!143088) (not e!178424))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13915 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!279985 (= res!143088 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!279986 () Bool)

(assert (=> b!279986 (= e!178424 e!178425)))

(declare-fun res!143093 () Bool)

(assert (=> b!279986 (=> (not res!143093) (not e!178425))))

(declare-datatypes ((SeekEntryResult!1768 0))(
  ( (MissingZero!1768 (index!9242 (_ BitVec 32))) (Found!1768 (index!9243 (_ BitVec 32))) (Intermediate!1768 (undefined!2580 Bool) (index!9244 (_ BitVec 32)) (x!27454 (_ BitVec 32))) (Undefined!1768) (MissingVacant!1768 (index!9245 (_ BitVec 32))) )
))
(declare-fun lt!138784 () SeekEntryResult!1768)

(assert (=> b!279986 (= res!143093 (or (= lt!138784 (MissingZero!1768 i!1267)) (= lt!138784 (MissingVacant!1768 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13915 (_ BitVec 32)) SeekEntryResult!1768)

(assert (=> b!279986 (= lt!138784 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!279987 () Bool)

(declare-fun res!143090 () Bool)

(assert (=> b!279987 (=> (not res!143090) (not e!178425))))

(assert (=> b!279987 (= res!143090 (not (contains!1978 Nil!4425 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!279988 () Bool)

(assert (=> b!279988 (= e!178425 false)))

(declare-fun lt!138785 () Bool)

(assert (=> b!279988 (= lt!138785 (contains!1978 Nil!4425 k0!2581))))

(declare-fun res!143096 () Bool)

(assert (=> start!27108 (=> (not res!143096) (not e!178424))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27108 (= res!143096 (validMask!0 mask!3868))))

(assert (=> start!27108 e!178424))

(declare-fun array_inv!4553 (array!13915) Bool)

(assert (=> start!27108 (array_inv!4553 a!3325)))

(assert (=> start!27108 true))

(declare-fun b!279989 () Bool)

(declare-fun res!143091 () Bool)

(assert (=> b!279989 (=> (not res!143091) (not e!178424))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!279989 (= res!143091 (validKeyInArray!0 k0!2581))))

(declare-fun b!279990 () Bool)

(declare-fun res!143094 () Bool)

(assert (=> b!279990 (=> (not res!143094) (not e!178424))))

(declare-fun arrayNoDuplicates!0 (array!13915 (_ BitVec 32) List!4428) Bool)

(assert (=> b!279990 (= res!143094 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4425))))

(declare-fun b!279991 () Bool)

(declare-fun res!143098 () Bool)

(assert (=> b!279991 (=> (not res!143098) (not e!178425))))

(assert (=> b!279991 (= res!143098 (validKeyInArray!0 (select (arr!6599 a!3325) startIndex!26)))))

(declare-fun b!279992 () Bool)

(declare-fun res!143099 () Bool)

(assert (=> b!279992 (=> (not res!143099) (not e!178425))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13915 (_ BitVec 32)) Bool)

(assert (=> b!279992 (= res!143099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!279993 () Bool)

(declare-fun res!143097 () Bool)

(assert (=> b!279993 (=> (not res!143097) (not e!178425))))

(assert (=> b!279993 (= res!143097 (and (bvslt (size!6951 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6951 a!3325))))))

(assert (= (and start!27108 res!143096) b!279981))

(assert (= (and b!279981 res!143089) b!279989))

(assert (= (and b!279989 res!143091) b!279990))

(assert (= (and b!279990 res!143094) b!279985))

(assert (= (and b!279985 res!143088) b!279986))

(assert (= (and b!279986 res!143093) b!279992))

(assert (= (and b!279992 res!143099) b!279982))

(assert (= (and b!279982 res!143092) b!279991))

(assert (= (and b!279991 res!143098) b!279993))

(assert (= (and b!279993 res!143097) b!279984))

(assert (= (and b!279984 res!143100) b!279983))

(assert (= (and b!279983 res!143095) b!279987))

(assert (= (and b!279987 res!143090) b!279988))

(declare-fun m!294591 () Bool)

(assert (=> b!279991 m!294591))

(assert (=> b!279991 m!294591))

(declare-fun m!294593 () Bool)

(assert (=> b!279991 m!294593))

(declare-fun m!294595 () Bool)

(assert (=> start!27108 m!294595))

(declare-fun m!294597 () Bool)

(assert (=> start!27108 m!294597))

(declare-fun m!294599 () Bool)

(assert (=> b!279983 m!294599))

(declare-fun m!294601 () Bool)

(assert (=> b!279992 m!294601))

(declare-fun m!294603 () Bool)

(assert (=> b!279986 m!294603))

(declare-fun m!294605 () Bool)

(assert (=> b!279984 m!294605))

(declare-fun m!294607 () Bool)

(assert (=> b!279987 m!294607))

(declare-fun m!294609 () Bool)

(assert (=> b!279989 m!294609))

(declare-fun m!294611 () Bool)

(assert (=> b!279990 m!294611))

(declare-fun m!294613 () Bool)

(assert (=> b!279988 m!294613))

(declare-fun m!294615 () Bool)

(assert (=> b!279985 m!294615))

(check-sat (not b!279992) (not b!279985) (not b!279983) (not b!279991) (not start!27108) (not b!279986) (not b!279984) (not b!279989) (not b!279987) (not b!279990) (not b!279988))
(check-sat)
