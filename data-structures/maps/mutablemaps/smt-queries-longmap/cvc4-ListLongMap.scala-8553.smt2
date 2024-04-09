; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104486 () Bool)

(assert start!104486)

(declare-fun res!831863 () Bool)

(declare-fun e!706943 () Bool)

(assert (=> start!104486 (=> (not res!831863) (not e!706943))))

(declare-datatypes ((array!80223 0))(
  ( (array!80224 (arr!38684 (Array (_ BitVec 32) (_ BitVec 64))) (size!39221 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80223)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104486 (= res!831863 (and (bvslt (size!39221 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39221 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39221 a!3892))))))

(assert (=> start!104486 e!706943))

(declare-fun array_inv!29460 (array!80223) Bool)

(assert (=> start!104486 (array_inv!29460 a!3892)))

(assert (=> start!104486 true))

(declare-fun b!1246431 () Bool)

(declare-datatypes ((Unit!41368 0))(
  ( (Unit!41369) )
))
(declare-fun e!706944 () Unit!41368)

(declare-fun lt!563053 () Unit!41368)

(assert (=> b!1246431 (= e!706944 lt!563053)))

(declare-datatypes ((List!27665 0))(
  ( (Nil!27662) (Cons!27661 (h!28870 (_ BitVec 64)) (t!41141 List!27665)) )
))
(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80223 List!27665 List!27665 (_ BitVec 32)) Unit!41368)

(assert (=> b!1246431 (= lt!563053 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27661 (select (arr!38684 a!3892) from!3270) Nil!27662) Nil!27662 (bvadd #b00000000000000000000000000000001 from!3270)))))

(declare-fun arrayNoDuplicates!0 (array!80223 (_ BitVec 32) List!27665) Bool)

(assert (=> b!1246431 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27662)))

(declare-fun b!1246432 () Bool)

(assert (=> b!1246432 (= e!706943 false)))

(declare-fun lt!563054 () Unit!41368)

(assert (=> b!1246432 (= lt!563054 e!706944)))

(declare-fun c!121971 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246432 (= c!121971 (validKeyInArray!0 (select (arr!38684 a!3892) from!3270)))))

(declare-fun b!1246433 () Bool)

(declare-fun res!831865 () Bool)

(assert (=> b!1246433 (=> (not res!831865) (not e!706943))))

(assert (=> b!1246433 (= res!831865 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39221 a!3892)) (not (= newFrom!287 (size!39221 a!3892)))))))

(declare-fun b!1246434 () Bool)

(declare-fun Unit!41370 () Unit!41368)

(assert (=> b!1246434 (= e!706944 Unit!41370)))

(declare-fun b!1246435 () Bool)

(declare-fun res!831864 () Bool)

(assert (=> b!1246435 (=> (not res!831864) (not e!706943))))

(assert (=> b!1246435 (= res!831864 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27662))))

(assert (= (and start!104486 res!831863) b!1246435))

(assert (= (and b!1246435 res!831864) b!1246433))

(assert (= (and b!1246433 res!831865) b!1246432))

(assert (= (and b!1246432 c!121971) b!1246431))

(assert (= (and b!1246432 (not c!121971)) b!1246434))

(declare-fun m!1148291 () Bool)

(assert (=> start!104486 m!1148291))

(declare-fun m!1148293 () Bool)

(assert (=> b!1246431 m!1148293))

(declare-fun m!1148295 () Bool)

(assert (=> b!1246431 m!1148295))

(declare-fun m!1148297 () Bool)

(assert (=> b!1246431 m!1148297))

(assert (=> b!1246432 m!1148293))

(assert (=> b!1246432 m!1148293))

(declare-fun m!1148299 () Bool)

(assert (=> b!1246432 m!1148299))

(declare-fun m!1148301 () Bool)

(assert (=> b!1246435 m!1148301))

(push 1)

(assert (not b!1246431))

(assert (not start!104486))

(assert (not b!1246435))

(assert (not b!1246432))

(check-sat)

(pop 1)

(push 1)

(check-sat)

