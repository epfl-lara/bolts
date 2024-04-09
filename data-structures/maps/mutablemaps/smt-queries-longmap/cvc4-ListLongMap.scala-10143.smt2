; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119666 () Bool)

(assert start!119666)

(declare-fun b!1393365 () Bool)

(declare-fun res!932882 () Bool)

(declare-fun e!789008 () Bool)

(assert (=> b!1393365 (=> (not res!932882) (not e!789008))))

(declare-datatypes ((array!95266 0))(
  ( (array!95267 (arr!45987 (Array (_ BitVec 32) (_ BitVec 64))) (size!46538 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95266)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393365 (= res!932882 (validKeyInArray!0 (select (arr!45987 a!2901) j!112)))))

(declare-fun res!932883 () Bool)

(assert (=> start!119666 (=> (not res!932883) (not e!789008))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119666 (= res!932883 (validMask!0 mask!2840))))

(assert (=> start!119666 e!789008))

(assert (=> start!119666 true))

(declare-fun array_inv!34932 (array!95266) Bool)

(assert (=> start!119666 (array_inv!34932 a!2901)))

(declare-fun b!1393366 () Bool)

(declare-fun e!789007 () Bool)

(assert (=> b!1393366 (= e!789008 (not e!789007))))

(declare-fun res!932884 () Bool)

(assert (=> b!1393366 (=> res!932884 e!789007)))

(declare-datatypes ((SeekEntryResult!10326 0))(
  ( (MissingZero!10326 (index!43674 (_ BitVec 32))) (Found!10326 (index!43675 (_ BitVec 32))) (Intermediate!10326 (undefined!11138 Bool) (index!43676 (_ BitVec 32)) (x!125357 (_ BitVec 32))) (Undefined!10326) (MissingVacant!10326 (index!43677 (_ BitVec 32))) )
))
(declare-fun lt!611934 () SeekEntryResult!10326)

(assert (=> b!1393366 (= res!932884 (or (not (is-Intermediate!10326 lt!611934)) (undefined!11138 lt!611934)))))

(declare-fun e!789005 () Bool)

(assert (=> b!1393366 e!789005))

(declare-fun res!932887 () Bool)

(assert (=> b!1393366 (=> (not res!932887) (not e!789005))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95266 (_ BitVec 32)) Bool)

(assert (=> b!1393366 (= res!932887 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46606 0))(
  ( (Unit!46607) )
))
(declare-fun lt!611933 () Unit!46606)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95266 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46606)

(assert (=> b!1393366 (= lt!611933 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95266 (_ BitVec 32)) SeekEntryResult!10326)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393366 (= lt!611934 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45987 a!2901) j!112) mask!2840) (select (arr!45987 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393367 () Bool)

(declare-fun res!932886 () Bool)

(assert (=> b!1393367 (=> (not res!932886) (not e!789008))))

(assert (=> b!1393367 (= res!932886 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393368 () Bool)

(declare-fun res!932889 () Bool)

(assert (=> b!1393368 (=> (not res!932889) (not e!789008))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1393368 (= res!932889 (validKeyInArray!0 (select (arr!45987 a!2901) i!1037)))))

(declare-fun b!1393369 () Bool)

(assert (=> b!1393369 (= e!789007 true)))

(declare-fun lt!611935 () SeekEntryResult!10326)

(assert (=> b!1393369 (= lt!611935 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45987 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45987 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95267 (store (arr!45987 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46538 a!2901)) mask!2840))))

(declare-fun b!1393370 () Bool)

(declare-fun res!932888 () Bool)

(assert (=> b!1393370 (=> (not res!932888) (not e!789008))))

(declare-datatypes ((List!32686 0))(
  ( (Nil!32683) (Cons!32682 (h!33915 (_ BitVec 64)) (t!47387 List!32686)) )
))
(declare-fun arrayNoDuplicates!0 (array!95266 (_ BitVec 32) List!32686) Bool)

(assert (=> b!1393370 (= res!932888 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32683))))

(declare-fun b!1393371 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95266 (_ BitVec 32)) SeekEntryResult!10326)

(assert (=> b!1393371 (= e!789005 (= (seekEntryOrOpen!0 (select (arr!45987 a!2901) j!112) a!2901 mask!2840) (Found!10326 j!112)))))

(declare-fun b!1393372 () Bool)

(declare-fun res!932885 () Bool)

(assert (=> b!1393372 (=> (not res!932885) (not e!789008))))

(assert (=> b!1393372 (= res!932885 (and (= (size!46538 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46538 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46538 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119666 res!932883) b!1393372))

(assert (= (and b!1393372 res!932885) b!1393368))

(assert (= (and b!1393368 res!932889) b!1393365))

(assert (= (and b!1393365 res!932882) b!1393367))

(assert (= (and b!1393367 res!932886) b!1393370))

(assert (= (and b!1393370 res!932888) b!1393366))

(assert (= (and b!1393366 res!932887) b!1393371))

(assert (= (and b!1393366 (not res!932884)) b!1393369))

(declare-fun m!1279339 () Bool)

(assert (=> b!1393367 m!1279339))

(declare-fun m!1279341 () Bool)

(assert (=> b!1393368 m!1279341))

(assert (=> b!1393368 m!1279341))

(declare-fun m!1279343 () Bool)

(assert (=> b!1393368 m!1279343))

(declare-fun m!1279345 () Bool)

(assert (=> b!1393370 m!1279345))

(declare-fun m!1279347 () Bool)

(assert (=> b!1393365 m!1279347))

(assert (=> b!1393365 m!1279347))

(declare-fun m!1279349 () Bool)

(assert (=> b!1393365 m!1279349))

(assert (=> b!1393371 m!1279347))

(assert (=> b!1393371 m!1279347))

(declare-fun m!1279351 () Bool)

(assert (=> b!1393371 m!1279351))

(assert (=> b!1393366 m!1279347))

(declare-fun m!1279353 () Bool)

(assert (=> b!1393366 m!1279353))

(assert (=> b!1393366 m!1279347))

(declare-fun m!1279355 () Bool)

(assert (=> b!1393366 m!1279355))

(assert (=> b!1393366 m!1279353))

(assert (=> b!1393366 m!1279347))

(declare-fun m!1279357 () Bool)

(assert (=> b!1393366 m!1279357))

(declare-fun m!1279359 () Bool)

(assert (=> b!1393366 m!1279359))

(declare-fun m!1279361 () Bool)

(assert (=> start!119666 m!1279361))

(declare-fun m!1279363 () Bool)

(assert (=> start!119666 m!1279363))

(declare-fun m!1279365 () Bool)

(assert (=> b!1393369 m!1279365))

(declare-fun m!1279367 () Bool)

(assert (=> b!1393369 m!1279367))

(assert (=> b!1393369 m!1279367))

(declare-fun m!1279369 () Bool)

(assert (=> b!1393369 m!1279369))

(assert (=> b!1393369 m!1279369))

(assert (=> b!1393369 m!1279367))

(declare-fun m!1279371 () Bool)

(assert (=> b!1393369 m!1279371))

(push 1)

(assert (not b!1393367))

(assert (not b!1393368))

(assert (not b!1393371))

(assert (not b!1393365))

(assert (not b!1393370))

(assert (not b!1393366))

(assert (not b!1393369))

(assert (not start!119666))

(check-sat)

(pop 1)

