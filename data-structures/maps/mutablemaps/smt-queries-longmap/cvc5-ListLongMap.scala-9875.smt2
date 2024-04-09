; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116978 () Bool)

(assert start!116978)

(declare-fun res!920402 () Bool)

(declare-fun e!780373 () Bool)

(assert (=> start!116978 (=> (not res!920402) (not e!780373))))

(declare-fun to!375 () (_ BitVec 32))

(declare-fun from!3579 () (_ BitVec 32))

(declare-datatypes ((array!93565 0))(
  ( (array!93566 (arr!45181 (Array (_ BitVec 32) (_ BitVec 64))) (size!45732 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93565)

(assert (=> start!116978 (= res!920402 (and (bvslt (size!45732 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45732 a!4212))))))

(assert (=> start!116978 e!780373))

(declare-fun array_inv!34126 (array!93565) Bool)

(assert (=> start!116978 (array_inv!34126 a!4212)))

(assert (=> start!116978 true))

(declare-fun b!1377567 () Bool)

(declare-fun res!920403 () Bool)

(assert (=> b!1377567 (=> (not res!920403) (not e!780373))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377567 (= res!920403 (not (validKeyInArray!0 (select (arr!45181 a!4212) to!375))))))

(declare-fun b!1377568 () Bool)

(assert (=> b!1377568 (= e!780373 (or (bvslt (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsgt to!375 (bvadd #b00000000000000000000000000000001 to!375))))))

(assert (= (and start!116978 res!920402) b!1377567))

(assert (= (and b!1377567 res!920403) b!1377568))

(declare-fun m!1262019 () Bool)

(assert (=> start!116978 m!1262019))

(declare-fun m!1262021 () Bool)

(assert (=> b!1377567 m!1262021))

(assert (=> b!1377567 m!1262021))

(declare-fun m!1262023 () Bool)

(assert (=> b!1377567 m!1262023))

(push 1)

(assert (not b!1377567))

(assert (not start!116978))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

