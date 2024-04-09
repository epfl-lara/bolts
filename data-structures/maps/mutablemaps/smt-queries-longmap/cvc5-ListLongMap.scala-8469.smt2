; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103146 () Bool)

(assert start!103146)

(declare-fun b!1237991 () Bool)

(declare-fun res!825849 () Bool)

(declare-fun e!701708 () Bool)

(assert (=> b!1237991 (=> (not res!825849) (not e!701708))))

(declare-datatypes ((array!79781 0))(
  ( (array!79782 (arr!38490 (Array (_ BitVec 32) (_ BitVec 64))) (size!39027 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79781)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1237991 (= res!825849 (validKeyInArray!0 (select (arr!38490 a!3835) from!3213)))))

(declare-fun b!1237992 () Bool)

(declare-fun e!701707 () Bool)

(assert (=> b!1237992 (= e!701708 (not e!701707))))

(declare-fun res!825844 () Bool)

(assert (=> b!1237992 (=> res!825844 e!701707)))

(assert (=> b!1237992 (= res!825844 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-datatypes ((List!27441 0))(
  ( (Nil!27438) (Cons!27437 (h!28646 (_ BitVec 64)) (t!40911 List!27441)) )
))
(declare-fun acc!846 () List!27441)

(declare-fun lt!561130 () List!27441)

(declare-fun subseq!593 (List!27441 List!27441) Bool)

(assert (=> b!1237992 (subseq!593 acc!846 lt!561130)))

(declare-datatypes ((Unit!41034 0))(
  ( (Unit!41035) )
))
(declare-fun lt!561131 () Unit!41034)

(declare-fun subseqTail!80 (List!27441 List!27441) Unit!41034)

(assert (=> b!1237992 (= lt!561131 (subseqTail!80 lt!561130 lt!561130))))

(assert (=> b!1237992 (subseq!593 lt!561130 lt!561130)))

(declare-fun lt!561133 () Unit!41034)

(declare-fun lemmaListSubSeqRefl!0 (List!27441) Unit!41034)

(assert (=> b!1237992 (= lt!561133 (lemmaListSubSeqRefl!0 lt!561130))))

(assert (=> b!1237992 (= lt!561130 (Cons!27437 (select (arr!38490 a!3835) from!3213) acc!846))))

(declare-fun b!1237993 () Bool)

(declare-fun res!825848 () Bool)

(assert (=> b!1237993 (=> (not res!825848) (not e!701708))))

(assert (=> b!1237993 (= res!825848 (not (= from!3213 (bvsub (size!39027 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1237994 () Bool)

(declare-fun res!825840 () Bool)

(assert (=> b!1237994 (=> (not res!825840) (not e!701708))))

(declare-fun noDuplicate!1963 (List!27441) Bool)

(assert (=> b!1237994 (= res!825840 (noDuplicate!1963 acc!846))))

(declare-fun res!825850 () Bool)

(assert (=> start!103146 (=> (not res!825850) (not e!701708))))

(assert (=> start!103146 (= res!825850 (and (bvslt (size!39027 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39027 a!3835))))))

(assert (=> start!103146 e!701708))

(declare-fun array_inv!29266 (array!79781) Bool)

(assert (=> start!103146 (array_inv!29266 a!3835)))

(assert (=> start!103146 true))

(declare-fun b!1237995 () Bool)

(declare-fun res!825842 () Bool)

(assert (=> b!1237995 (=> (not res!825842) (not e!701708))))

(declare-fun contains!7356 (List!27441 (_ BitVec 64)) Bool)

(assert (=> b!1237995 (= res!825842 (not (contains!7356 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237996 () Bool)

(assert (=> b!1237996 (= e!701707 true)))

(declare-fun lt!561132 () Bool)

(assert (=> b!1237996 (= lt!561132 (contains!7356 lt!561130 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1237997 () Bool)

(declare-fun res!825843 () Bool)

(assert (=> b!1237997 (=> (not res!825843) (not e!701708))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1237997 (= res!825843 (contains!7356 acc!846 k!2925))))

(declare-fun b!1237998 () Bool)

(declare-fun res!825847 () Bool)

(assert (=> b!1237998 (=> res!825847 e!701707)))

(assert (=> b!1237998 (= res!825847 (not (noDuplicate!1963 lt!561130)))))

(declare-fun b!1237999 () Bool)

(declare-fun res!825846 () Bool)

(assert (=> b!1237999 (=> res!825846 e!701707)))

(assert (=> b!1237999 (= res!825846 (contains!7356 lt!561130 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238000 () Bool)

(declare-fun res!825841 () Bool)

(assert (=> b!1238000 (=> (not res!825841) (not e!701708))))

(assert (=> b!1238000 (= res!825841 (not (contains!7356 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238001 () Bool)

(declare-fun res!825845 () Bool)

(assert (=> b!1238001 (=> (not res!825845) (not e!701708))))

(declare-fun arrayNoDuplicates!0 (array!79781 (_ BitVec 32) List!27441) Bool)

(assert (=> b!1238001 (= res!825845 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(assert (= (and start!103146 res!825850) b!1237994))

(assert (= (and b!1237994 res!825840) b!1237995))

(assert (= (and b!1237995 res!825842) b!1238000))

(assert (= (and b!1238000 res!825841) b!1238001))

(assert (= (and b!1238001 res!825845) b!1237997))

(assert (= (and b!1237997 res!825843) b!1237993))

(assert (= (and b!1237993 res!825848) b!1237991))

(assert (= (and b!1237991 res!825849) b!1237992))

(assert (= (and b!1237992 (not res!825844)) b!1237998))

(assert (= (and b!1237998 (not res!825847)) b!1237999))

(assert (= (and b!1237999 (not res!825846)) b!1237996))

(declare-fun m!1141601 () Bool)

(assert (=> b!1237995 m!1141601))

(declare-fun m!1141603 () Bool)

(assert (=> b!1237992 m!1141603))

(declare-fun m!1141605 () Bool)

(assert (=> b!1237992 m!1141605))

(declare-fun m!1141607 () Bool)

(assert (=> b!1237992 m!1141607))

(declare-fun m!1141609 () Bool)

(assert (=> b!1237992 m!1141609))

(declare-fun m!1141611 () Bool)

(assert (=> b!1237992 m!1141611))

(declare-fun m!1141613 () Bool)

(assert (=> b!1237998 m!1141613))

(declare-fun m!1141615 () Bool)

(assert (=> b!1237994 m!1141615))

(declare-fun m!1141617 () Bool)

(assert (=> b!1238001 m!1141617))

(declare-fun m!1141619 () Bool)

(assert (=> b!1237996 m!1141619))

(declare-fun m!1141621 () Bool)

(assert (=> b!1237997 m!1141621))

(declare-fun m!1141623 () Bool)

(assert (=> b!1238000 m!1141623))

(declare-fun m!1141625 () Bool)

(assert (=> start!103146 m!1141625))

(declare-fun m!1141627 () Bool)

(assert (=> b!1237999 m!1141627))

(assert (=> b!1237991 m!1141611))

(assert (=> b!1237991 m!1141611))

(declare-fun m!1141629 () Bool)

(assert (=> b!1237991 m!1141629))

(push 1)

(assert (not b!1237995))

(assert (not b!1237997))

(assert (not start!103146))

(assert (not b!1237998))

(assert (not b!1237994))

(assert (not b!1237996))

(assert (not b!1238000))

(assert (not b!1237992))

(assert (not b!1238001))

(assert (not b!1237999))

(assert (not b!1237991))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

