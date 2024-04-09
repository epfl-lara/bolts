; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116388 () Bool)

(assert start!116388)

(declare-fun b!1373223 () Bool)

(declare-fun res!916591 () Bool)

(declare-fun e!777916 () Bool)

(assert (=> b!1373223 (=> (not res!916591) (not e!777916))))

(declare-datatypes ((array!93089 0))(
  ( (array!93090 (arr!44949 (Array (_ BitVec 32) (_ BitVec 64))) (size!45500 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93089)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373223 (= res!916591 (not (validKeyInArray!0 (select (arr!44949 a!3861) from!3239))))))

(declare-fun b!1373225 () Bool)

(declare-fun res!916592 () Bool)

(declare-fun e!777914 () Bool)

(assert (=> b!1373225 (=> (not res!916592) (not e!777914))))

(declare-datatypes ((List!32197 0))(
  ( (Nil!32194) (Cons!32193 (h!33402 (_ BitVec 64)) (t!46898 List!32197)) )
))
(declare-fun acc!866 () List!32197)

(declare-fun noDuplicate!2614 (List!32197) Bool)

(assert (=> b!1373225 (= res!916592 (noDuplicate!2614 acc!866))))

(declare-fun b!1373226 () Bool)

(declare-fun res!916596 () Bool)

(assert (=> b!1373226 (=> (not res!916596) (not e!777914))))

(declare-fun newAcc!98 () List!32197)

(declare-fun contains!9735 (List!32197 (_ BitVec 64)) Bool)

(assert (=> b!1373226 (= res!916596 (not (contains!9735 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373227 () Bool)

(declare-fun res!916590 () Bool)

(assert (=> b!1373227 (=> (not res!916590) (not e!777916))))

(declare-fun arrayNoDuplicates!0 (array!93089 (_ BitVec 32) List!32197) Bool)

(assert (=> b!1373227 (= res!916590 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1373228 () Bool)

(declare-fun res!916589 () Bool)

(assert (=> b!1373228 (=> (not res!916589) (not e!777916))))

(assert (=> b!1373228 (= res!916589 (bvslt from!3239 (size!45500 a!3861)))))

(declare-fun b!1373229 () Bool)

(declare-fun res!916588 () Bool)

(assert (=> b!1373229 (=> (not res!916588) (not e!777914))))

(declare-fun subseq!1126 (List!32197 List!32197) Bool)

(assert (=> b!1373229 (= res!916588 (subseq!1126 newAcc!98 acc!866))))

(declare-fun b!1373230 () Bool)

(declare-fun res!916598 () Bool)

(assert (=> b!1373230 (=> (not res!916598) (not e!777916))))

(assert (=> b!1373230 (= res!916598 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1373231 () Bool)

(assert (=> b!1373231 (= e!777914 e!777916)))

(declare-fun res!916594 () Bool)

(assert (=> b!1373231 (=> (not res!916594) (not e!777916))))

(assert (=> b!1373231 (= res!916594 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45333 0))(
  ( (Unit!45334) )
))
(declare-fun lt!602966 () Unit!45333)

(declare-fun noDuplicateSubseq!313 (List!32197 List!32197) Unit!45333)

(assert (=> b!1373231 (= lt!602966 (noDuplicateSubseq!313 newAcc!98 acc!866))))

(declare-fun b!1373232 () Bool)

(declare-fun res!916595 () Bool)

(assert (=> b!1373232 (=> (not res!916595) (not e!777914))))

(assert (=> b!1373232 (= res!916595 (not (contains!9735 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1373224 () Bool)

(declare-fun res!916593 () Bool)

(assert (=> b!1373224 (=> (not res!916593) (not e!777914))))

(assert (=> b!1373224 (= res!916593 (not (contains!9735 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!916597 () Bool)

(assert (=> start!116388 (=> (not res!916597) (not e!777914))))

(assert (=> start!116388 (= res!916597 (and (bvslt (size!45500 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45500 a!3861))))))

(assert (=> start!116388 e!777914))

(declare-fun array_inv!33894 (array!93089) Bool)

(assert (=> start!116388 (array_inv!33894 a!3861)))

(assert (=> start!116388 true))

(declare-fun b!1373233 () Bool)

(assert (=> b!1373233 (= e!777916 (bvsge (bvsub (size!45500 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) (bvsub (size!45500 a!3861) from!3239)))))

(declare-fun b!1373234 () Bool)

(declare-fun res!916599 () Bool)

(assert (=> b!1373234 (=> (not res!916599) (not e!777914))))

(assert (=> b!1373234 (= res!916599 (not (contains!9735 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!116388 res!916597) b!1373225))

(assert (= (and b!1373225 res!916592) b!1373232))

(assert (= (and b!1373232 res!916595) b!1373224))

(assert (= (and b!1373224 res!916593) b!1373226))

(assert (= (and b!1373226 res!916596) b!1373234))

(assert (= (and b!1373234 res!916599) b!1373229))

(assert (= (and b!1373229 res!916588) b!1373231))

(assert (= (and b!1373231 res!916594) b!1373228))

(assert (= (and b!1373228 res!916589) b!1373223))

(assert (= (and b!1373223 res!916591) b!1373230))

(assert (= (and b!1373230 res!916598) b!1373227))

(assert (= (and b!1373227 res!916590) b!1373233))

(declare-fun m!1256533 () Bool)

(assert (=> b!1373234 m!1256533))

(declare-fun m!1256535 () Bool)

(assert (=> b!1373229 m!1256535))

(declare-fun m!1256537 () Bool)

(assert (=> start!116388 m!1256537))

(declare-fun m!1256539 () Bool)

(assert (=> b!1373223 m!1256539))

(assert (=> b!1373223 m!1256539))

(declare-fun m!1256541 () Bool)

(assert (=> b!1373223 m!1256541))

(declare-fun m!1256543 () Bool)

(assert (=> b!1373224 m!1256543))

(declare-fun m!1256545 () Bool)

(assert (=> b!1373226 m!1256545))

(declare-fun m!1256547 () Bool)

(assert (=> b!1373225 m!1256547))

(declare-fun m!1256549 () Bool)

(assert (=> b!1373227 m!1256549))

(declare-fun m!1256551 () Bool)

(assert (=> b!1373231 m!1256551))

(declare-fun m!1256553 () Bool)

(assert (=> b!1373231 m!1256553))

(declare-fun m!1256555 () Bool)

(assert (=> b!1373232 m!1256555))

(push 1)

(assert (not b!1373229))

(assert (not b!1373226))

(assert (not b!1373227))

(assert (not start!116388))

(assert (not b!1373234))

(assert (not b!1373231))

(assert (not b!1373224))

(assert (not b!1373223))

(assert (not b!1373232))

(assert (not b!1373225))

(check-sat)

(pop 1)

(push 1)

(check-sat)

