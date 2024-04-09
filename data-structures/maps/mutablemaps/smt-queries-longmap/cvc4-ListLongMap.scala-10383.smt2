; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122264 () Bool)

(assert start!122264)

(declare-fun b!1417719 () Bool)

(declare-fun e!802349 () Bool)

(declare-datatypes ((array!96766 0))(
  ( (array!96767 (arr!46707 (Array (_ BitVec 32) (_ BitVec 64))) (size!47258 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96766)

(assert (=> b!1417719 (= e!802349 (and (bvsle #b00000000000000000000000000000000 (size!47258 a!2831)) (bvsge (size!47258 a!2831) #b01111111111111111111111111111111)))))

(declare-fun b!1417720 () Bool)

(declare-fun res!953560 () Bool)

(assert (=> b!1417720 (=> (not res!953560) (not e!802349))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96766 (_ BitVec 32)) Bool)

(assert (=> b!1417720 (= res!953560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1417721 () Bool)

(declare-fun res!953559 () Bool)

(assert (=> b!1417721 (=> (not res!953559) (not e!802349))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417721 (= res!953559 (validKeyInArray!0 (select (arr!46707 a!2831) i!982)))))

(declare-fun b!1417722 () Bool)

(declare-fun res!953562 () Bool)

(assert (=> b!1417722 (=> (not res!953562) (not e!802349))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1417722 (= res!953562 (validKeyInArray!0 (select (arr!46707 a!2831) j!81)))))

(declare-fun res!953558 () Bool)

(assert (=> start!122264 (=> (not res!953558) (not e!802349))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122264 (= res!953558 (validMask!0 mask!2608))))

(assert (=> start!122264 e!802349))

(assert (=> start!122264 true))

(declare-fun array_inv!35652 (array!96766) Bool)

(assert (=> start!122264 (array_inv!35652 a!2831)))

(declare-fun b!1417723 () Bool)

(declare-fun res!953561 () Bool)

(assert (=> b!1417723 (=> (not res!953561) (not e!802349))))

(assert (=> b!1417723 (= res!953561 (and (= (size!47258 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47258 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47258 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122264 res!953558) b!1417723))

(assert (= (and b!1417723 res!953561) b!1417721))

(assert (= (and b!1417721 res!953559) b!1417722))

(assert (= (and b!1417722 res!953562) b!1417720))

(assert (= (and b!1417720 res!953560) b!1417719))

(declare-fun m!1308555 () Bool)

(assert (=> b!1417720 m!1308555))

(declare-fun m!1308557 () Bool)

(assert (=> b!1417721 m!1308557))

(assert (=> b!1417721 m!1308557))

(declare-fun m!1308559 () Bool)

(assert (=> b!1417721 m!1308559))

(declare-fun m!1308561 () Bool)

(assert (=> b!1417722 m!1308561))

(assert (=> b!1417722 m!1308561))

(declare-fun m!1308563 () Bool)

(assert (=> b!1417722 m!1308563))

(declare-fun m!1308565 () Bool)

(assert (=> start!122264 m!1308565))

(declare-fun m!1308567 () Bool)

(assert (=> start!122264 m!1308567))

(push 1)

(assert (not b!1417720))

(assert (not b!1417722))

(assert (not b!1417721))

(assert (not start!122264))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!152651 () Bool)

(declare-fun res!953578 () Bool)

(declare-fun e!802371 () Bool)

(assert (=> d!152651 (=> res!953578 e!802371)))

(assert (=> d!152651 (= res!953578 (bvsge #b00000000000000000000000000000000 (size!47258 a!2831)))))

(assert (=> d!152651 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!802371)))

(declare-fun b!1417752 () Bool)

(declare-fun e!802373 () Bool)

(declare-fun call!67229 () Bool)

(assert (=> b!1417752 (= e!802373 call!67229)))

(declare-fun b!1417753 () Bool)

(declare-fun e!802372 () Bool)

(assert (=> b!1417753 (= e!802372 call!67229)))

(declare-fun b!1417754 () Bool)

(assert (=> b!1417754 (= e!802373 e!802372)))

