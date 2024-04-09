; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122258 () Bool)

(assert start!122258)

(declare-fun res!953516 () Bool)

(declare-fun e!802331 () Bool)

(assert (=> start!122258 (=> (not res!953516) (not e!802331))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122258 (= res!953516 (validMask!0 mask!2608))))

(assert (=> start!122258 e!802331))

(assert (=> start!122258 true))

(declare-datatypes ((array!96760 0))(
  ( (array!96761 (arr!46704 (Array (_ BitVec 32) (_ BitVec 64))) (size!47255 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96760)

(declare-fun array_inv!35649 (array!96760) Bool)

(assert (=> start!122258 (array_inv!35649 a!2831)))

(declare-fun b!1417674 () Bool)

(declare-fun res!953513 () Bool)

(assert (=> b!1417674 (=> (not res!953513) (not e!802331))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1417674 (= res!953513 (and (= (size!47255 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47255 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47255 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1417675 () Bool)

(declare-fun res!953514 () Bool)

(assert (=> b!1417675 (=> (not res!953514) (not e!802331))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96760 (_ BitVec 32)) Bool)

(assert (=> b!1417675 (= res!953514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1417676 () Bool)

(declare-fun res!953515 () Bool)

(assert (=> b!1417676 (=> (not res!953515) (not e!802331))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417676 (= res!953515 (validKeyInArray!0 (select (arr!46704 a!2831) j!81)))))

(declare-fun b!1417677 () Bool)

(declare-fun res!953517 () Bool)

(assert (=> b!1417677 (=> (not res!953517) (not e!802331))))

(assert (=> b!1417677 (= res!953517 (validKeyInArray!0 (select (arr!46704 a!2831) i!982)))))

(declare-fun b!1417678 () Bool)

(assert (=> b!1417678 (= e!802331 (bvsgt #b00000000000000000000000000000000 (size!47255 a!2831)))))

(assert (= (and start!122258 res!953516) b!1417674))

(assert (= (and b!1417674 res!953513) b!1417677))

(assert (= (and b!1417677 res!953517) b!1417676))

(assert (= (and b!1417676 res!953515) b!1417675))

(assert (= (and b!1417675 res!953514) b!1417678))

(declare-fun m!1308513 () Bool)

(assert (=> start!122258 m!1308513))

(declare-fun m!1308515 () Bool)

(assert (=> start!122258 m!1308515))

(declare-fun m!1308517 () Bool)

(assert (=> b!1417675 m!1308517))

(declare-fun m!1308519 () Bool)

(assert (=> b!1417676 m!1308519))

(assert (=> b!1417676 m!1308519))

(declare-fun m!1308521 () Bool)

(assert (=> b!1417676 m!1308521))

(declare-fun m!1308523 () Bool)

(assert (=> b!1417677 m!1308523))

(assert (=> b!1417677 m!1308523))

(declare-fun m!1308525 () Bool)

(assert (=> b!1417677 m!1308525))

(push 1)

(assert (not b!1417675))

(assert (not b!1417676))

(assert (not start!122258))

(assert (not b!1417677))

(check-sat)

(pop 1)

