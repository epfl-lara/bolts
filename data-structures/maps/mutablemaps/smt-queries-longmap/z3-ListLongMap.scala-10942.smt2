; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128034 () Bool)

(assert start!128034)

(declare-fun b!1503575 () Bool)

(declare-fun res!1024527 () Bool)

(declare-fun e!840661 () Bool)

(assert (=> b!1503575 (=> (not res!1024527) (not e!840661))))

(declare-datatypes ((array!100262 0))(
  ( (array!100263 (arr!48383 (Array (_ BitVec 32) (_ BitVec 64))) (size!48934 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100262)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503575 (= res!1024527 (not (= (select (arr!48383 a!2850) index!625) (select (arr!48383 a!2850) j!87))))))

(declare-fun b!1503576 () Bool)

(declare-fun res!1024526 () Bool)

(assert (=> b!1503576 (=> (not res!1024526) (not e!840661))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503576 (= res!1024526 (validKeyInArray!0 (select (arr!48383 a!2850) j!87)))))

(declare-fun b!1503577 () Bool)

(declare-fun res!1024528 () Bool)

(assert (=> b!1503577 (=> (not res!1024528) (not e!840661))))

(declare-datatypes ((List!35055 0))(
  ( (Nil!35052) (Cons!35051 (h!36449 (_ BitVec 64)) (t!49756 List!35055)) )
))
(declare-fun arrayNoDuplicates!0 (array!100262 (_ BitVec 32) List!35055) Bool)

(assert (=> b!1503577 (= res!1024528 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35052))))

(declare-fun b!1503578 () Bool)

(declare-fun res!1024530 () Bool)

(assert (=> b!1503578 (=> (not res!1024530) (not e!840661))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1503578 (= res!1024530 (validKeyInArray!0 (select (arr!48383 a!2850) i!996)))))

(declare-fun b!1503579 () Bool)

(declare-fun res!1024529 () Bool)

(assert (=> b!1503579 (=> (not res!1024529) (not e!840661))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12600 0))(
  ( (MissingZero!12600 (index!52791 (_ BitVec 32))) (Found!12600 (index!52792 (_ BitVec 32))) (Intermediate!12600 (undefined!13412 Bool) (index!52793 (_ BitVec 32)) (x!134485 (_ BitVec 32))) (Undefined!12600) (MissingVacant!12600 (index!52794 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100262 (_ BitVec 32)) SeekEntryResult!12600)

(assert (=> b!1503579 (= res!1024529 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48383 a!2850) j!87) a!2850 mask!2661) (Found!12600 j!87)))))

(declare-fun b!1503580 () Bool)

(declare-fun res!1024532 () Bool)

(assert (=> b!1503580 (=> (not res!1024532) (not e!840661))))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503580 (= res!1024532 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48934 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48934 a!2850)) (= (select (arr!48383 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48383 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48934 a!2850))))))

(declare-fun b!1503581 () Bool)

(assert (=> b!1503581 (= e!840661 false)))

(declare-fun lt!653509 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503581 (= lt!653509 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1503582 () Bool)

(declare-fun res!1024533 () Bool)

(assert (=> b!1503582 (=> (not res!1024533) (not e!840661))))

(assert (=> b!1503582 (= res!1024533 (and (= (size!48934 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48934 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48934 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1503583 () Bool)

(declare-fun res!1024531 () Bool)

(assert (=> b!1503583 (=> (not res!1024531) (not e!840661))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100262 (_ BitVec 32)) Bool)

(assert (=> b!1503583 (= res!1024531 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1024525 () Bool)

(assert (=> start!128034 (=> (not res!1024525) (not e!840661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128034 (= res!1024525 (validMask!0 mask!2661))))

(assert (=> start!128034 e!840661))

(assert (=> start!128034 true))

(declare-fun array_inv!37328 (array!100262) Bool)

(assert (=> start!128034 (array_inv!37328 a!2850)))

(assert (= (and start!128034 res!1024525) b!1503582))

(assert (= (and b!1503582 res!1024533) b!1503578))

(assert (= (and b!1503578 res!1024530) b!1503576))

(assert (= (and b!1503576 res!1024526) b!1503583))

(assert (= (and b!1503583 res!1024531) b!1503577))

(assert (= (and b!1503577 res!1024528) b!1503580))

(assert (= (and b!1503580 res!1024532) b!1503579))

(assert (= (and b!1503579 res!1024529) b!1503575))

(assert (= (and b!1503575 res!1024527) b!1503581))

(declare-fun m!1386889 () Bool)

(assert (=> b!1503577 m!1386889))

(declare-fun m!1386891 () Bool)

(assert (=> b!1503576 m!1386891))

(assert (=> b!1503576 m!1386891))

(declare-fun m!1386893 () Bool)

(assert (=> b!1503576 m!1386893))

(declare-fun m!1386895 () Bool)

(assert (=> b!1503583 m!1386895))

(declare-fun m!1386897 () Bool)

(assert (=> b!1503580 m!1386897))

(declare-fun m!1386899 () Bool)

(assert (=> b!1503580 m!1386899))

(declare-fun m!1386901 () Bool)

(assert (=> b!1503580 m!1386901))

(declare-fun m!1386903 () Bool)

(assert (=> start!128034 m!1386903))

(declare-fun m!1386905 () Bool)

(assert (=> start!128034 m!1386905))

(assert (=> b!1503579 m!1386891))

(assert (=> b!1503579 m!1386891))

(declare-fun m!1386907 () Bool)

(assert (=> b!1503579 m!1386907))

(declare-fun m!1386909 () Bool)

(assert (=> b!1503578 m!1386909))

(assert (=> b!1503578 m!1386909))

(declare-fun m!1386911 () Bool)

(assert (=> b!1503578 m!1386911))

(declare-fun m!1386913 () Bool)

(assert (=> b!1503575 m!1386913))

(assert (=> b!1503575 m!1386891))

(declare-fun m!1386915 () Bool)

(assert (=> b!1503581 m!1386915))

(check-sat (not b!1503581) (not b!1503579) (not b!1503576) (not start!128034) (not b!1503578) (not b!1503577) (not b!1503583))
