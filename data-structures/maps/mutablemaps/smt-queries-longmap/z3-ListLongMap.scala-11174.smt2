; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130710 () Bool)

(assert start!130710)

(declare-fun b!1532625 () Bool)

(declare-fun res!1049849 () Bool)

(declare-fun e!853967 () Bool)

(assert (=> b!1532625 (=> (not res!1049849) (not e!853967))))

(declare-datatypes ((array!101735 0))(
  ( (array!101736 (arr!49079 (Array (_ BitVec 32) (_ BitVec 64))) (size!49630 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101735)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532625 (= res!1049849 (validKeyInArray!0 (select (arr!49079 a!2792) j!64)))))

(declare-fun b!1532626 () Bool)

(declare-fun res!1049853 () Bool)

(assert (=> b!1532626 (=> (not res!1049853) (not e!853967))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532626 (= res!1049853 (validKeyInArray!0 (select (arr!49079 a!2792) i!951)))))

(declare-fun b!1532627 () Bool)

(declare-fun res!1049852 () Bool)

(assert (=> b!1532627 (=> (not res!1049852) (not e!853967))))

(declare-fun mask!2480 () (_ BitVec 32))

(assert (=> b!1532627 (= res!1049852 (and (= (size!49630 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49630 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49630 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1049850 () Bool)

(assert (=> start!130710 (=> (not res!1049850) (not e!853967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130710 (= res!1049850 (validMask!0 mask!2480))))

(assert (=> start!130710 e!853967))

(assert (=> start!130710 true))

(declare-fun array_inv!38024 (array!101735) Bool)

(assert (=> start!130710 (array_inv!38024 a!2792)))

(declare-fun b!1532628 () Bool)

(declare-fun res!1049851 () Bool)

(assert (=> b!1532628 (=> (not res!1049851) (not e!853967))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101735 (_ BitVec 32)) Bool)

(assert (=> b!1532628 (= res!1049851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532629 () Bool)

(assert (=> b!1532629 (= e!853967 false)))

(declare-fun lt!663658 () Bool)

(declare-datatypes ((List!35733 0))(
  ( (Nil!35730) (Cons!35729 (h!37175 (_ BitVec 64)) (t!50434 List!35733)) )
))
(declare-fun arrayNoDuplicates!0 (array!101735 (_ BitVec 32) List!35733) Bool)

(assert (=> b!1532629 (= lt!663658 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35730))))

(assert (= (and start!130710 res!1049850) b!1532627))

(assert (= (and b!1532627 res!1049852) b!1532626))

(assert (= (and b!1532626 res!1049853) b!1532625))

(assert (= (and b!1532625 res!1049849) b!1532628))

(assert (= (and b!1532628 res!1049851) b!1532629))

(declare-fun m!1415377 () Bool)

(assert (=> b!1532628 m!1415377))

(declare-fun m!1415379 () Bool)

(assert (=> b!1532625 m!1415379))

(assert (=> b!1532625 m!1415379))

(declare-fun m!1415381 () Bool)

(assert (=> b!1532625 m!1415381))

(declare-fun m!1415383 () Bool)

(assert (=> b!1532629 m!1415383))

(declare-fun m!1415385 () Bool)

(assert (=> start!130710 m!1415385))

(declare-fun m!1415387 () Bool)

(assert (=> start!130710 m!1415387))

(declare-fun m!1415389 () Bool)

(assert (=> b!1532626 m!1415389))

(assert (=> b!1532626 m!1415389))

(declare-fun m!1415391 () Bool)

(assert (=> b!1532626 m!1415391))

(check-sat (not b!1532629) (not start!130710) (not b!1532628) (not b!1532625) (not b!1532626))
