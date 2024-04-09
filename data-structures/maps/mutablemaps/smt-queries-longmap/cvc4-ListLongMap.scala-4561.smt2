; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63674 () Bool)

(assert start!63674)

(declare-fun b!716652 () Bool)

(declare-fun res!479580 () Bool)

(declare-fun e!402456 () Bool)

(assert (=> b!716652 (=> (not res!479580) (not e!402456))))

(declare-datatypes ((array!40534 0))(
  ( (array!40535 (arr!19397 (Array (_ BitVec 32) (_ BitVec 64))) (size!19818 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40534)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716652 (= res!479580 (validKeyInArray!0 (select (arr!19397 a!3186) j!159)))))

(declare-fun b!716654 () Bool)

(assert (=> b!716654 (= e!402456 (bvsge #b00000000000000000000000000000000 (size!19818 a!3186)))))

(declare-fun b!716653 () Bool)

(declare-fun res!479579 () Bool)

(assert (=> b!716653 (=> (not res!479579) (not e!402456))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!716653 (= res!479579 (validKeyInArray!0 k!2102))))

(declare-fun res!479577 () Bool)

(assert (=> start!63674 (=> (not res!479577) (not e!402456))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63674 (= res!479577 (validMask!0 mask!3328))))

(assert (=> start!63674 e!402456))

(declare-fun array_inv!15171 (array!40534) Bool)

(assert (=> start!63674 (array_inv!15171 a!3186)))

(assert (=> start!63674 true))

(declare-fun b!716651 () Bool)

(declare-fun res!479578 () Bool)

(assert (=> b!716651 (=> (not res!479578) (not e!402456))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!716651 (= res!479578 (and (= (size!19818 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19818 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19818 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!63674 res!479577) b!716651))

(assert (= (and b!716651 res!479578) b!716652))

(assert (= (and b!716652 res!479580) b!716653))

(assert (= (and b!716653 res!479579) b!716654))

(declare-fun m!672767 () Bool)

(assert (=> b!716652 m!672767))

(assert (=> b!716652 m!672767))

(declare-fun m!672769 () Bool)

(assert (=> b!716652 m!672769))

(declare-fun m!672771 () Bool)

(assert (=> b!716653 m!672771))

(declare-fun m!672773 () Bool)

(assert (=> start!63674 m!672773))

(declare-fun m!672775 () Bool)

(assert (=> start!63674 m!672775))

(push 1)

(assert (not start!63674))

(assert (not b!716652))

(assert (not b!716653))

(check-sat)

(pop 1)

(push 1)

(check-sat)

