; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103988 () Bool)

(assert start!103988)

(declare-fun b!1244170 () Bool)

(declare-fun res!829990 () Bool)

(declare-fun e!705233 () Bool)

(assert (=> b!1244170 (=> (not res!829990) (not e!705233))))

(declare-datatypes ((array!80026 0))(
  ( (array!80027 (arr!38602 (Array (_ BitVec 32) (_ BitVec 64))) (size!39139 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80026)

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((List!27583 0))(
  ( (Nil!27580) (Cons!27579 (h!28788 (_ BitVec 64)) (t!41059 List!27583)) )
))
(declare-fun arrayNoDuplicates!0 (array!80026 (_ BitVec 32) List!27583) Bool)

(assert (=> b!1244170 (= res!829990 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27580))))

(declare-fun b!1244172 () Bool)

(declare-datatypes ((Unit!41296 0))(
  ( (Unit!41297) )
))
(declare-fun e!705230 () Unit!41296)

(declare-fun Unit!41298 () Unit!41296)

(assert (=> b!1244172 (= e!705230 Unit!41298)))

(declare-fun b!1244173 () Bool)

(declare-fun e!705232 () Bool)

(assert (=> b!1244173 (= e!705232 false)))

(declare-fun lt!562608 () Bool)

(assert (=> b!1244173 (= lt!562608 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27580))))

(declare-fun b!1244174 () Bool)

(assert (=> b!1244174 (= e!705233 e!705232)))

(declare-fun res!829991 () Bool)

(assert (=> b!1244174 (=> (not res!829991) (not e!705232))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1244174 (= res!829991 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-fun lt!562607 () Unit!41296)

(assert (=> b!1244174 (= lt!562607 e!705230)))

(declare-fun c!121777 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1244174 (= c!121777 (validKeyInArray!0 (select (arr!38602 a!3892) from!3270)))))

(declare-fun b!1244175 () Bool)

(declare-fun res!829993 () Bool)

(assert (=> b!1244175 (=> (not res!829993) (not e!705233))))

(assert (=> b!1244175 (= res!829993 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39139 a!3892)) (not (= newFrom!287 (size!39139 a!3892)))))))

(declare-fun res!829992 () Bool)

(assert (=> start!103988 (=> (not res!829992) (not e!705233))))

(assert (=> start!103988 (= res!829992 (and (bvslt (size!39139 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39139 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39139 a!3892))))))

(assert (=> start!103988 e!705233))

(declare-fun array_inv!29378 (array!80026) Bool)

(assert (=> start!103988 (array_inv!29378 a!3892)))

(assert (=> start!103988 true))

(declare-fun b!1244171 () Bool)

(declare-fun lt!562609 () Unit!41296)

(assert (=> b!1244171 (= e!705230 lt!562609)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80026 List!27583 List!27583 (_ BitVec 32)) Unit!41296)

(assert (=> b!1244171 (= lt!562609 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27579 (select (arr!38602 a!3892) from!3270) Nil!27580) Nil!27580 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1244171 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27580)))

(assert (= (and start!103988 res!829992) b!1244170))

(assert (= (and b!1244170 res!829990) b!1244175))

(assert (= (and b!1244175 res!829993) b!1244174))

(assert (= (and b!1244174 c!121777) b!1244171))

(assert (= (and b!1244174 (not c!121777)) b!1244172))

(assert (= (and b!1244174 res!829991) b!1244173))

(declare-fun m!1146525 () Bool)

(assert (=> b!1244174 m!1146525))

(assert (=> b!1244174 m!1146525))

(declare-fun m!1146527 () Bool)

(assert (=> b!1244174 m!1146527))

(declare-fun m!1146529 () Bool)

(assert (=> b!1244170 m!1146529))

(declare-fun m!1146531 () Bool)

(assert (=> b!1244173 m!1146531))

(assert (=> b!1244171 m!1146525))

(declare-fun m!1146533 () Bool)

(assert (=> b!1244171 m!1146533))

(assert (=> b!1244171 m!1146531))

(declare-fun m!1146535 () Bool)

(assert (=> start!103988 m!1146535))

(check-sat (not b!1244173) (not start!103988) (not b!1244170) (not b!1244174) (not b!1244171))
(check-sat)
