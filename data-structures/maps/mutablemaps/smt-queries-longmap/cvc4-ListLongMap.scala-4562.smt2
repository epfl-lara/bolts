; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63680 () Bool)

(assert start!63680)

(declare-fun b!716688 () Bool)

(declare-fun res!479615 () Bool)

(declare-fun e!402474 () Bool)

(assert (=> b!716688 (=> (not res!479615) (not e!402474))))

(declare-datatypes ((array!40540 0))(
  ( (array!40541 (arr!19400 (Array (_ BitVec 32) (_ BitVec 64))) (size!19821 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40540)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716688 (= res!479615 (validKeyInArray!0 (select (arr!19400 a!3186) j!159)))))

(declare-fun b!716689 () Bool)

(declare-fun res!479614 () Bool)

(assert (=> b!716689 (=> (not res!479614) (not e!402474))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!716689 (= res!479614 (validKeyInArray!0 k!2102))))

(declare-fun res!479616 () Bool)

(assert (=> start!63680 (=> (not res!479616) (not e!402474))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63680 (= res!479616 (validMask!0 mask!3328))))

(assert (=> start!63680 e!402474))

(declare-fun array_inv!15174 (array!40540) Bool)

(assert (=> start!63680 (array_inv!15174 a!3186)))

(assert (=> start!63680 true))

(declare-fun b!716690 () Bool)

(assert (=> b!716690 (= e!402474 (and (bvslt #b00000000000000000000000000000000 (size!19821 a!3186)) (bvsge (size!19821 a!3186) #b01111111111111111111111111111111)))))

(declare-fun b!716687 () Bool)

(declare-fun res!479613 () Bool)

(assert (=> b!716687 (=> (not res!479613) (not e!402474))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!716687 (= res!479613 (and (= (size!19821 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19821 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19821 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!63680 res!479616) b!716687))

(assert (= (and b!716687 res!479613) b!716688))

(assert (= (and b!716688 res!479615) b!716689))

(assert (= (and b!716689 res!479614) b!716690))

(declare-fun m!672797 () Bool)

(assert (=> b!716688 m!672797))

(assert (=> b!716688 m!672797))

(declare-fun m!672799 () Bool)

(assert (=> b!716688 m!672799))

(declare-fun m!672801 () Bool)

(assert (=> b!716689 m!672801))

(declare-fun m!672803 () Bool)

(assert (=> start!63680 m!672803))

(declare-fun m!672805 () Bool)

(assert (=> start!63680 m!672805))

(push 1)

(assert (not b!716688))

(assert (not b!716689))

(assert (not start!63680))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

