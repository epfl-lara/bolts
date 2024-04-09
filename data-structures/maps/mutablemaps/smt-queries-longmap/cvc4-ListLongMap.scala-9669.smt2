; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114192 () Bool)

(assert start!114192)

(declare-fun b!1355913 () Bool)

(declare-fun res!900866 () Bool)

(declare-fun e!769909 () Bool)

(assert (=> b!1355913 (=> (not res!900866) (not e!769909))))

(declare-datatypes ((List!31813 0))(
  ( (Nil!31810) (Cons!31809 (h!33018 (_ BitVec 64)) (t!46478 List!31813)) )
))
(declare-fun acc!759 () List!31813)

(declare-fun contains!9378 (List!31813 (_ BitVec 64)) Bool)

(assert (=> b!1355913 (= res!900866 (not (contains!9378 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355914 () Bool)

(declare-fun res!900868 () Bool)

(assert (=> b!1355914 (=> (not res!900868) (not e!769909))))

(declare-datatypes ((array!92297 0))(
  ( (array!92298 (arr!44592 (Array (_ BitVec 32) (_ BitVec 64))) (size!45143 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92297)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92297 (_ BitVec 32) List!31813) Bool)

(assert (=> b!1355914 (= res!900868 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!900872 () Bool)

(assert (=> start!114192 (=> (not res!900872) (not e!769909))))

(assert (=> start!114192 (= res!900872 (and (bvslt (size!45143 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45143 a!3742))))))

(assert (=> start!114192 e!769909))

(assert (=> start!114192 true))

(declare-fun array_inv!33537 (array!92297) Bool)

(assert (=> start!114192 (array_inv!33537 a!3742)))

(declare-fun b!1355915 () Bool)

(declare-fun res!900873 () Bool)

(assert (=> b!1355915 (=> (not res!900873) (not e!769909))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355915 (= res!900873 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355916 () Bool)

(declare-fun res!900867 () Bool)

(assert (=> b!1355916 (=> (not res!900867) (not e!769909))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355916 (= res!900867 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45143 a!3742))))))

(declare-fun b!1355917 () Bool)

(declare-fun res!900870 () Bool)

(assert (=> b!1355917 (=> (not res!900870) (not e!769909))))

(assert (=> b!1355917 (= res!900870 (not (contains!9378 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355918 () Bool)

(declare-fun e!769910 () Bool)

(assert (=> b!1355918 (= e!769909 e!769910)))

(declare-fun res!900864 () Bool)

(assert (=> b!1355918 (=> (not res!900864) (not e!769910))))

(declare-fun lt!598804 () Bool)

(assert (=> b!1355918 (= res!900864 (and (not (= from!3120 i!1404)) (not lt!598804) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44540 0))(
  ( (Unit!44541) )
))
(declare-fun lt!598801 () Unit!44540)

(declare-fun e!769912 () Unit!44540)

(assert (=> b!1355918 (= lt!598801 e!769912)))

(declare-fun c!126967 () Bool)

(assert (=> b!1355918 (= c!126967 lt!598804)))

(assert (=> b!1355918 (= lt!598804 (validKeyInArray!0 (select (arr!44592 a!3742) from!3120)))))

(declare-fun b!1355919 () Bool)

(declare-fun res!900869 () Bool)

(assert (=> b!1355919 (=> (not res!900869) (not e!769909))))

(assert (=> b!1355919 (= res!900869 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45143 a!3742)))))

(declare-fun b!1355920 () Bool)

(declare-fun res!900865 () Bool)

(assert (=> b!1355920 (=> (not res!900865) (not e!769909))))

(declare-fun noDuplicate!2257 (List!31813) Bool)

(assert (=> b!1355920 (= res!900865 (noDuplicate!2257 acc!759))))

(declare-fun b!1355921 () Bool)

(declare-fun Unit!44542 () Unit!44540)

(assert (=> b!1355921 (= e!769912 Unit!44542)))

(declare-fun b!1355922 () Bool)

(assert (=> b!1355922 (= e!769910 false)))

(declare-fun lt!598802 () Bool)

(assert (=> b!1355922 (= lt!598802 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355923 () Bool)

(declare-fun lt!598805 () Unit!44540)

(assert (=> b!1355923 (= e!769912 lt!598805)))

(declare-fun lt!598803 () Unit!44540)

(declare-fun lemmaListSubSeqRefl!0 (List!31813) Unit!44540)

(assert (=> b!1355923 (= lt!598803 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!787 (List!31813 List!31813) Bool)

(assert (=> b!1355923 (subseq!787 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92297 List!31813 List!31813 (_ BitVec 32)) Unit!44540)

(declare-fun $colon$colon!804 (List!31813 (_ BitVec 64)) List!31813)

(assert (=> b!1355923 (= lt!598805 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!804 acc!759 (select (arr!44592 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1355923 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355924 () Bool)

(declare-fun res!900871 () Bool)

(assert (=> b!1355924 (=> (not res!900871) (not e!769909))))

(assert (=> b!1355924 (= res!900871 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31810))))

(assert (= (and start!114192 res!900872) b!1355920))

(assert (= (and b!1355920 res!900865) b!1355917))

(assert (= (and b!1355917 res!900870) b!1355913))

(assert (= (and b!1355913 res!900866) b!1355924))

(assert (= (and b!1355924 res!900871) b!1355914))

(assert (= (and b!1355914 res!900868) b!1355916))

(assert (= (and b!1355916 res!900867) b!1355915))

(assert (= (and b!1355915 res!900873) b!1355919))

(assert (= (and b!1355919 res!900869) b!1355918))

(assert (= (and b!1355918 c!126967) b!1355923))

(assert (= (and b!1355918 (not c!126967)) b!1355921))

(assert (= (and b!1355918 res!900864) b!1355922))

(declare-fun m!1242009 () Bool)

(assert (=> b!1355915 m!1242009))

(declare-fun m!1242011 () Bool)

(assert (=> b!1355924 m!1242011))

(declare-fun m!1242013 () Bool)

(assert (=> b!1355913 m!1242013))

(declare-fun m!1242015 () Bool)

(assert (=> b!1355917 m!1242015))

(declare-fun m!1242017 () Bool)

(assert (=> b!1355922 m!1242017))

(declare-fun m!1242019 () Bool)

(assert (=> start!114192 m!1242019))

(declare-fun m!1242021 () Bool)

(assert (=> b!1355920 m!1242021))

(declare-fun m!1242023 () Bool)

(assert (=> b!1355914 m!1242023))

(declare-fun m!1242025 () Bool)

(assert (=> b!1355923 m!1242025))

(declare-fun m!1242027 () Bool)

(assert (=> b!1355923 m!1242027))

(declare-fun m!1242029 () Bool)

(assert (=> b!1355923 m!1242029))

(declare-fun m!1242031 () Bool)

(assert (=> b!1355923 m!1242031))

(assert (=> b!1355923 m!1242017))

(assert (=> b!1355923 m!1242027))

(assert (=> b!1355923 m!1242029))

(declare-fun m!1242033 () Bool)

(assert (=> b!1355923 m!1242033))

(assert (=> b!1355918 m!1242027))

(assert (=> b!1355918 m!1242027))

(declare-fun m!1242035 () Bool)

(assert (=> b!1355918 m!1242035))

(push 1)

(assert (not b!1355923))

