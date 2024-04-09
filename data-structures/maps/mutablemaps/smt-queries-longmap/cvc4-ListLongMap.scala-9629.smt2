; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113952 () Bool)

(assert start!113952)

(declare-fun b!1350915 () Bool)

(declare-fun res!896496 () Bool)

(declare-fun e!768399 () Bool)

(assert (=> b!1350915 (=> (not res!896496) (not e!768399))))

(declare-datatypes ((List!31693 0))(
  ( (Nil!31690) (Cons!31689 (h!32898 (_ BitVec 64)) (t!46358 List!31693)) )
))
(declare-fun acc!759 () List!31693)

(declare-fun contains!9258 (List!31693 (_ BitVec 64)) Bool)

(assert (=> b!1350915 (= res!896496 (not (contains!9258 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350916 () Bool)

(declare-fun res!896507 () Bool)

(declare-fun e!768398 () Bool)

(assert (=> b!1350916 (=> res!896507 e!768398)))

(declare-fun lt!597050 () List!31693)

(assert (=> b!1350916 (= res!896507 (contains!9258 lt!597050 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350918 () Bool)

(declare-fun res!896506 () Bool)

(assert (=> b!1350918 (=> (not res!896506) (not e!768399))))

(declare-fun noDuplicate!2137 (List!31693) Bool)

(assert (=> b!1350918 (= res!896506 (noDuplicate!2137 acc!759))))

(declare-fun b!1350919 () Bool)

(declare-fun res!896494 () Bool)

(assert (=> b!1350919 (=> (not res!896494) (not e!768399))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1350919 (= res!896494 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1350920 () Bool)

(declare-fun res!896502 () Bool)

(assert (=> b!1350920 (=> (not res!896502) (not e!768399))))

(assert (=> b!1350920 (= res!896502 (not (contains!9258 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350921 () Bool)

(declare-fun res!896498 () Bool)

(assert (=> b!1350921 (=> (not res!896498) (not e!768399))))

(declare-datatypes ((array!92057 0))(
  ( (array!92058 (arr!44472 (Array (_ BitVec 32) (_ BitVec 64))) (size!45023 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92057)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1350921 (= res!896498 (validKeyInArray!0 (select (arr!44472 a!3742) from!3120)))))

(declare-fun b!1350922 () Bool)

(declare-fun res!896495 () Bool)

(assert (=> b!1350922 (=> (not res!896495) (not e!768399))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1350922 (= res!896495 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45023 a!3742))))))

(declare-fun b!1350923 () Bool)

(assert (=> b!1350923 (= e!768398 true)))

(declare-fun lt!597048 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92057 (_ BitVec 32) List!31693) Bool)

(assert (=> b!1350923 (= lt!597048 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597050))))

(declare-datatypes ((Unit!44196 0))(
  ( (Unit!44197) )
))
(declare-fun lt!597049 () Unit!44196)

(declare-fun noDuplicateSubseq!118 (List!31693 List!31693) Unit!44196)

(assert (=> b!1350923 (= lt!597049 (noDuplicateSubseq!118 acc!759 lt!597050))))

(declare-fun b!1350917 () Bool)

(declare-fun res!896497 () Bool)

(assert (=> b!1350917 (=> (not res!896497) (not e!768399))))

(assert (=> b!1350917 (= res!896497 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31690))))

(declare-fun res!896508 () Bool)

(assert (=> start!113952 (=> (not res!896508) (not e!768399))))

(assert (=> start!113952 (= res!896508 (and (bvslt (size!45023 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45023 a!3742))))))

(assert (=> start!113952 e!768399))

(assert (=> start!113952 true))

(declare-fun array_inv!33417 (array!92057) Bool)

(assert (=> start!113952 (array_inv!33417 a!3742)))

(declare-fun b!1350924 () Bool)

(declare-fun res!896500 () Bool)

(assert (=> b!1350924 (=> res!896500 e!768398)))

(assert (=> b!1350924 (= res!896500 (not (noDuplicate!2137 lt!597050)))))

(declare-fun b!1350925 () Bool)

(declare-fun res!896499 () Bool)

(assert (=> b!1350925 (=> res!896499 e!768398)))

(declare-fun subseq!667 (List!31693 List!31693) Bool)

(assert (=> b!1350925 (= res!896499 (not (subseq!667 acc!759 lt!597050)))))

(declare-fun b!1350926 () Bool)

(declare-fun res!896504 () Bool)

(assert (=> b!1350926 (=> (not res!896504) (not e!768399))))

(assert (=> b!1350926 (= res!896504 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45023 a!3742)))))

(declare-fun b!1350927 () Bool)

(assert (=> b!1350927 (= e!768399 (not e!768398))))

(declare-fun res!896505 () Bool)

(assert (=> b!1350927 (=> res!896505 e!768398)))

(assert (=> b!1350927 (= res!896505 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!684 (List!31693 (_ BitVec 64)) List!31693)

(assert (=> b!1350927 (= lt!597050 ($colon$colon!684 acc!759 (select (arr!44472 a!3742) from!3120)))))

(assert (=> b!1350927 (subseq!667 acc!759 acc!759)))

(declare-fun lt!597047 () Unit!44196)

(declare-fun lemmaListSubSeqRefl!0 (List!31693) Unit!44196)

(assert (=> b!1350927 (= lt!597047 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1350928 () Bool)

(declare-fun res!896501 () Bool)

(assert (=> b!1350928 (=> (not res!896501) (not e!768399))))

(assert (=> b!1350928 (= res!896501 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1350929 () Bool)

(declare-fun res!896503 () Bool)

(assert (=> b!1350929 (=> res!896503 e!768398)))

(assert (=> b!1350929 (= res!896503 (contains!9258 lt!597050 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!113952 res!896508) b!1350918))

(assert (= (and b!1350918 res!896506) b!1350920))

(assert (= (and b!1350920 res!896502) b!1350915))

(assert (= (and b!1350915 res!896496) b!1350917))

(assert (= (and b!1350917 res!896497) b!1350928))

(assert (= (and b!1350928 res!896501) b!1350922))

(assert (= (and b!1350922 res!896495) b!1350919))

(assert (= (and b!1350919 res!896494) b!1350926))

(assert (= (and b!1350926 res!896504) b!1350921))

(assert (= (and b!1350921 res!896498) b!1350927))

(assert (= (and b!1350927 (not res!896505)) b!1350924))

(assert (= (and b!1350924 (not res!896500)) b!1350916))

(assert (= (and b!1350916 (not res!896507)) b!1350929))

(assert (= (and b!1350929 (not res!896503)) b!1350925))

(assert (= (and b!1350925 (not res!896499)) b!1350923))

(declare-fun m!1238065 () Bool)

(assert (=> b!1350928 m!1238065))

(declare-fun m!1238067 () Bool)

(assert (=> b!1350921 m!1238067))

(assert (=> b!1350921 m!1238067))

(declare-fun m!1238069 () Bool)

(assert (=> b!1350921 m!1238069))

(declare-fun m!1238071 () Bool)

(assert (=> b!1350929 m!1238071))

(declare-fun m!1238073 () Bool)

(assert (=> b!1350916 m!1238073))

(declare-fun m!1238075 () Bool)

(assert (=> b!1350923 m!1238075))

(declare-fun m!1238077 () Bool)

(assert (=> b!1350923 m!1238077))

(declare-fun m!1238079 () Bool)

(assert (=> start!113952 m!1238079))

(declare-fun m!1238081 () Bool)

(assert (=> b!1350917 m!1238081))

(assert (=> b!1350927 m!1238067))

(assert (=> b!1350927 m!1238067))

(declare-fun m!1238083 () Bool)

(assert (=> b!1350927 m!1238083))

(declare-fun m!1238085 () Bool)

(assert (=> b!1350927 m!1238085))

(declare-fun m!1238087 () Bool)

(assert (=> b!1350927 m!1238087))

(declare-fun m!1238089 () Bool)

(assert (=> b!1350919 m!1238089))

(declare-fun m!1238091 () Bool)

(assert (=> b!1350925 m!1238091))

(declare-fun m!1238093 () Bool)

(assert (=> b!1350918 m!1238093))

(declare-fun m!1238095 () Bool)

(assert (=> b!1350920 m!1238095))

(declare-fun m!1238097 () Bool)

(assert (=> b!1350924 m!1238097))

(declare-fun m!1238099 () Bool)

(assert (=> b!1350915 m!1238099))

(push 1)

(assert (not b!1350929))

(assert (not b!1350923))

(assert (not b!1350925))

(assert (not b!1350924))

(assert (not b!1350920))

(assert (not b!1350928))

(assert (not b!1350917))

(assert (not b!1350921))

(assert (not b!1350927))

(assert (not b!1350918))

(assert (not b!1350916))

(assert (not b!1350915))

(assert (not start!113952))

(assert (not b!1350919))

