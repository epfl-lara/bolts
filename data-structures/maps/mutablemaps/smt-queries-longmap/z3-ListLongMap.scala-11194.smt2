; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130830 () Bool)

(assert start!130830)

(declare-fun b!1533850 () Bool)

(declare-fun res!1051076 () Bool)

(declare-fun e!854326 () Bool)

(assert (=> b!1533850 (=> (not res!1051076) (not e!854326))))

(declare-datatypes ((array!101855 0))(
  ( (array!101856 (arr!49139 (Array (_ BitVec 32) (_ BitVec 64))) (size!49690 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101855)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533850 (= res!1051076 (validKeyInArray!0 (select (arr!49139 a!2792) j!64)))))

(declare-fun res!1051077 () Bool)

(assert (=> start!130830 (=> (not res!1051077) (not e!854326))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130830 (= res!1051077 (validMask!0 mask!2480))))

(assert (=> start!130830 e!854326))

(assert (=> start!130830 true))

(declare-fun array_inv!38084 (array!101855) Bool)

(assert (=> start!130830 (array_inv!38084 a!2792)))

(declare-fun b!1533851 () Bool)

(declare-fun res!1051080 () Bool)

(assert (=> b!1533851 (=> (not res!1051080) (not e!854326))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533851 (= res!1051080 (and (= (size!49690 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49690 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49690 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533852 () Bool)

(declare-fun res!1051078 () Bool)

(assert (=> b!1533852 (=> (not res!1051078) (not e!854326))))

(assert (=> b!1533852 (= res!1051078 (validKeyInArray!0 (select (arr!49139 a!2792) i!951)))))

(declare-fun b!1533853 () Bool)

(declare-fun res!1051075 () Bool)

(assert (=> b!1533853 (=> (not res!1051075) (not e!854326))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1533853 (= res!1051075 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49690 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49690 a!2792)) (= (select (arr!49139 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533854 () Bool)

(declare-fun res!1051079 () Bool)

(assert (=> b!1533854 (=> (not res!1051079) (not e!854326))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101855 (_ BitVec 32)) Bool)

(assert (=> b!1533854 (= res!1051079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533855 () Bool)

(assert (=> b!1533855 (= e!854326 false)))

(declare-datatypes ((SeekEntryResult!13294 0))(
  ( (MissingZero!13294 (index!55570 (_ BitVec 32))) (Found!13294 (index!55571 (_ BitVec 32))) (Intermediate!13294 (undefined!14106 Bool) (index!55572 (_ BitVec 32)) (x!137339 (_ BitVec 32))) (Undefined!13294) (MissingVacant!13294 (index!55573 (_ BitVec 32))) )
))
(declare-fun lt!663748 () SeekEntryResult!13294)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101855 (_ BitVec 32)) SeekEntryResult!13294)

(assert (=> b!1533855 (= lt!663748 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49139 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1533856 () Bool)

(declare-fun res!1051074 () Bool)

(assert (=> b!1533856 (=> (not res!1051074) (not e!854326))))

(declare-datatypes ((List!35793 0))(
  ( (Nil!35790) (Cons!35789 (h!37235 (_ BitVec 64)) (t!50494 List!35793)) )
))
(declare-fun arrayNoDuplicates!0 (array!101855 (_ BitVec 32) List!35793) Bool)

(assert (=> b!1533856 (= res!1051074 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35790))))

(assert (= (and start!130830 res!1051077) b!1533851))

(assert (= (and b!1533851 res!1051080) b!1533852))

(assert (= (and b!1533852 res!1051078) b!1533850))

(assert (= (and b!1533850 res!1051076) b!1533854))

(assert (= (and b!1533854 res!1051079) b!1533856))

(assert (= (and b!1533856 res!1051074) b!1533853))

(assert (= (and b!1533853 res!1051075) b!1533855))

(declare-fun m!1416581 () Bool)

(assert (=> start!130830 m!1416581))

(declare-fun m!1416583 () Bool)

(assert (=> start!130830 m!1416583))

(declare-fun m!1416585 () Bool)

(assert (=> b!1533850 m!1416585))

(assert (=> b!1533850 m!1416585))

(declare-fun m!1416587 () Bool)

(assert (=> b!1533850 m!1416587))

(declare-fun m!1416589 () Bool)

(assert (=> b!1533854 m!1416589))

(declare-fun m!1416591 () Bool)

(assert (=> b!1533853 m!1416591))

(declare-fun m!1416593 () Bool)

(assert (=> b!1533856 m!1416593))

(declare-fun m!1416595 () Bool)

(assert (=> b!1533852 m!1416595))

(assert (=> b!1533852 m!1416595))

(declare-fun m!1416597 () Bool)

(assert (=> b!1533852 m!1416597))

(assert (=> b!1533855 m!1416585))

(assert (=> b!1533855 m!1416585))

(declare-fun m!1416599 () Bool)

(assert (=> b!1533855 m!1416599))

(check-sat (not b!1533850) (not b!1533854) (not b!1533855) (not b!1533852) (not start!130830) (not b!1533856))
