; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71780 () Bool)

(assert start!71780)

(declare-fun res!567124 () Bool)

(declare-fun e!465289 () Bool)

(assert (=> start!71780 (=> (not res!567124) (not e!465289))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46634 0))(
  ( (array!46635 (arr!22347 (Array (_ BitVec 32) (_ BitVec 64))) (size!22768 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46634)

(assert (=> start!71780 (= res!567124 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22768 a!4227))))))

(assert (=> start!71780 e!465289))

(assert (=> start!71780 true))

(declare-fun array_inv!17770 (array!46634) Bool)

(assert (=> start!71780 (array_inv!17770 a!4227)))

(declare-fun b!833913 () Bool)

(declare-fun res!567122 () Bool)

(assert (=> b!833913 (=> (not res!567122) (not e!465289))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!833913 (= res!567122 (not (validKeyInArray!0 (select (arr!22347 a!4227) i!1466))))))

(declare-fun b!833914 () Bool)

(declare-fun res!567123 () Bool)

(assert (=> b!833914 (=> (not res!567123) (not e!465289))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!833914 (= res!567123 (validKeyInArray!0 k!2968))))

(declare-fun b!833915 () Bool)

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!833915 (= e!465289 (and (bvslt (size!22768 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22768 a!4227)) (bvsgt to!390 i!1466) (bvslt (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000)))))

(assert (= (and start!71780 res!567124) b!833913))

(assert (= (and b!833913 res!567122) b!833914))

(assert (= (and b!833914 res!567123) b!833915))

(declare-fun m!778931 () Bool)

(assert (=> start!71780 m!778931))

(declare-fun m!778933 () Bool)

(assert (=> b!833913 m!778933))

(assert (=> b!833913 m!778933))

(declare-fun m!778935 () Bool)

(assert (=> b!833913 m!778935))

(declare-fun m!778937 () Bool)

(assert (=> b!833914 m!778937))

(push 1)

(assert (not start!71780))

(assert (not b!833913))

(assert (not b!833914))

(check-sat)

(pop 1)

(push 1)

(check-sat)

