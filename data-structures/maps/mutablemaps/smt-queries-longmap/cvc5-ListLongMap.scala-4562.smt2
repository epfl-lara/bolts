; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63676 () Bool)

(assert start!63676)

(declare-fun res!479590 () Bool)

(declare-fun e!402462 () Bool)

(assert (=> start!63676 (=> (not res!479590) (not e!402462))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63676 (= res!479590 (validMask!0 mask!3328))))

(assert (=> start!63676 e!402462))

(declare-datatypes ((array!40536 0))(
  ( (array!40537 (arr!19398 (Array (_ BitVec 32) (_ BitVec 64))) (size!19819 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40536)

(declare-fun array_inv!15172 (array!40536) Bool)

(assert (=> start!63676 (array_inv!15172 a!3186)))

(assert (=> start!63676 true))

(declare-fun b!716665 () Bool)

(declare-fun res!479591 () Bool)

(assert (=> b!716665 (=> (not res!479591) (not e!402462))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716665 (= res!479591 (validKeyInArray!0 k!2102))))

(declare-fun b!716666 () Bool)

(assert (=> b!716666 (= e!402462 (and (bvslt #b00000000000000000000000000000000 (size!19819 a!3186)) (bvsge (size!19819 a!3186) #b01111111111111111111111111111111)))))

(declare-fun b!716664 () Bool)

(declare-fun res!479589 () Bool)

(assert (=> b!716664 (=> (not res!479589) (not e!402462))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!716664 (= res!479589 (validKeyInArray!0 (select (arr!19398 a!3186) j!159)))))

(declare-fun b!716663 () Bool)

(declare-fun res!479592 () Bool)

(assert (=> b!716663 (=> (not res!479592) (not e!402462))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!716663 (= res!479592 (and (= (size!19819 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19819 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19819 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!63676 res!479590) b!716663))

(assert (= (and b!716663 res!479592) b!716664))

(assert (= (and b!716664 res!479589) b!716665))

(assert (= (and b!716665 res!479591) b!716666))

(declare-fun m!672777 () Bool)

(assert (=> start!63676 m!672777))

(declare-fun m!672779 () Bool)

(assert (=> start!63676 m!672779))

(declare-fun m!672781 () Bool)

(assert (=> b!716665 m!672781))

(declare-fun m!672783 () Bool)

(assert (=> b!716664 m!672783))

(assert (=> b!716664 m!672783))

(declare-fun m!672785 () Bool)

(assert (=> b!716664 m!672785))

(push 1)

(assert (not start!63676))

(assert (not b!716664))

(assert (not b!716665))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

