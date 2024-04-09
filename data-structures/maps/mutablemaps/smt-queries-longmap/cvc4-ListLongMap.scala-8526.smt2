; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103990 () Bool)

(assert start!103990)

(declare-fun b!1244188 () Bool)

(declare-datatypes ((Unit!41299 0))(
  ( (Unit!41300) )
))
(declare-fun e!705245 () Unit!41299)

(declare-fun Unit!41301 () Unit!41299)

(assert (=> b!1244188 (= e!705245 Unit!41301)))

(declare-fun b!1244189 () Bool)

(declare-fun lt!562618 () Unit!41299)

(assert (=> b!1244189 (= e!705245 lt!562618)))

(declare-datatypes ((array!80028 0))(
  ( (array!80029 (arr!38603 (Array (_ BitVec 32) (_ BitVec 64))) (size!39140 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80028)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27584 0))(
  ( (Nil!27581) (Cons!27580 (h!28789 (_ BitVec 64)) (t!41060 List!27584)) )
))
(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80028 List!27584 List!27584 (_ BitVec 32)) Unit!41299)

(assert (=> b!1244189 (= lt!562618 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27580 (select (arr!38603 a!3892) from!3270) Nil!27581) Nil!27581 (bvadd #b00000000000000000000000000000001 from!3270)))))

(declare-fun arrayNoDuplicates!0 (array!80028 (_ BitVec 32) List!27584) Bool)

(assert (=> b!1244189 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27581)))

(declare-fun b!1244190 () Bool)

(declare-fun e!705243 () Bool)

(assert (=> b!1244190 (= e!705243 false)))

(declare-fun lt!562617 () Bool)

(assert (=> b!1244190 (= lt!562617 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27581))))

(declare-fun b!1244191 () Bool)

(declare-fun e!705242 () Bool)

(assert (=> b!1244191 (= e!705242 e!705243)))

(declare-fun res!830005 () Bool)

(assert (=> b!1244191 (=> (not res!830005) (not e!705243))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1244191 (= res!830005 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!562616 () Unit!41299)

(assert (=> b!1244191 (= lt!562616 e!705245)))

(declare-fun c!121780 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244191 (= c!121780 (validKeyInArray!0 (select (arr!38603 a!3892) from!3270)))))

(declare-fun b!1244192 () Bool)

(declare-fun res!830004 () Bool)

(assert (=> b!1244192 (=> (not res!830004) (not e!705242))))

(assert (=> b!1244192 (= res!830004 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39140 a!3892)) (not (= newFrom!287 (size!39140 a!3892)))))))

(declare-fun res!830003 () Bool)

(assert (=> start!103990 (=> (not res!830003) (not e!705242))))

(assert (=> start!103990 (= res!830003 (and (bvslt (size!39140 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39140 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39140 a!3892))))))

(assert (=> start!103990 e!705242))

(declare-fun array_inv!29379 (array!80028) Bool)

(assert (=> start!103990 (array_inv!29379 a!3892)))

(assert (=> start!103990 true))

(declare-fun b!1244193 () Bool)

(declare-fun res!830002 () Bool)

(assert (=> b!1244193 (=> (not res!830002) (not e!705242))))

(assert (=> b!1244193 (= res!830002 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27581))))

(assert (= (and start!103990 res!830003) b!1244193))

(assert (= (and b!1244193 res!830002) b!1244192))

(assert (= (and b!1244192 res!830004) b!1244191))

(assert (= (and b!1244191 c!121780) b!1244189))

(assert (= (and b!1244191 (not c!121780)) b!1244188))

(assert (= (and b!1244191 res!830005) b!1244190))

(declare-fun m!1146537 () Bool)

(assert (=> b!1244191 m!1146537))

(assert (=> b!1244191 m!1146537))

(declare-fun m!1146539 () Bool)

(assert (=> b!1244191 m!1146539))

(declare-fun m!1146541 () Bool)

(assert (=> start!103990 m!1146541))

(declare-fun m!1146543 () Bool)

(assert (=> b!1244190 m!1146543))

(assert (=> b!1244189 m!1146537))

(declare-fun m!1146545 () Bool)

(assert (=> b!1244189 m!1146545))

(assert (=> b!1244189 m!1146543))

(declare-fun m!1146547 () Bool)

(assert (=> b!1244193 m!1146547))

(push 1)

(assert (not b!1244193))

(assert (not b!1244191))

(assert (not start!103990))

(assert (not b!1244190))

(assert (not b!1244189))

(check-sat)

