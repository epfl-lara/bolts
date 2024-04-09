; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119036 () Bool)

(assert start!119036)

(declare-fun res!929256 () Bool)

(declare-fun e!786805 () Bool)

(assert (=> start!119036 (=> (not res!929256) (not e!786805))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119036 (= res!929256 (validMask!0 mask!2840))))

(assert (=> start!119036 e!786805))

(assert (=> start!119036 true))

(declare-datatypes ((array!94951 0))(
  ( (array!94952 (arr!45840 (Array (_ BitVec 32) (_ BitVec 64))) (size!46391 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94951)

(declare-fun array_inv!34785 (array!94951) Bool)

(assert (=> start!119036 (array_inv!34785 a!2901)))

(declare-fun b!1388915 () Bool)

(declare-fun res!929258 () Bool)

(assert (=> b!1388915 (=> (not res!929258) (not e!786805))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388915 (= res!929258 (validKeyInArray!0 (select (arr!45840 a!2901) j!112)))))

(declare-fun b!1388916 () Bool)

(assert (=> b!1388916 (= e!786805 (and (bvsge mask!2840 #b00000000000000000000000000000000) (bvsgt mask!2840 #b00111111111111111111111111111111)))))

(declare-fun b!1388917 () Bool)

(declare-fun res!929255 () Bool)

(assert (=> b!1388917 (=> (not res!929255) (not e!786805))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1388917 (= res!929255 (validKeyInArray!0 (select (arr!45840 a!2901) i!1037)))))

(declare-fun b!1388918 () Bool)

(declare-fun res!929254 () Bool)

(assert (=> b!1388918 (=> (not res!929254) (not e!786805))))

(assert (=> b!1388918 (= res!929254 (and (= (size!46391 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46391 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46391 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1388919 () Bool)

(declare-fun res!929257 () Bool)

(assert (=> b!1388919 (=> (not res!929257) (not e!786805))))

(declare-datatypes ((List!32539 0))(
  ( (Nil!32536) (Cons!32535 (h!33750 (_ BitVec 64)) (t!47240 List!32539)) )
))
(declare-fun arrayNoDuplicates!0 (array!94951 (_ BitVec 32) List!32539) Bool)

(assert (=> b!1388919 (= res!929257 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32536))))

(declare-fun b!1388920 () Bool)

(declare-fun res!929259 () Bool)

(assert (=> b!1388920 (=> (not res!929259) (not e!786805))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94951 (_ BitVec 32)) Bool)

(assert (=> b!1388920 (= res!929259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119036 res!929256) b!1388918))

(assert (= (and b!1388918 res!929254) b!1388917))

(assert (= (and b!1388917 res!929255) b!1388915))

(assert (= (and b!1388915 res!929258) b!1388920))

(assert (= (and b!1388920 res!929259) b!1388919))

(assert (= (and b!1388919 res!929257) b!1388916))

(declare-fun m!1274683 () Bool)

(assert (=> b!1388917 m!1274683))

(assert (=> b!1388917 m!1274683))

(declare-fun m!1274685 () Bool)

(assert (=> b!1388917 m!1274685))

(declare-fun m!1274687 () Bool)

(assert (=> b!1388915 m!1274687))

(assert (=> b!1388915 m!1274687))

(declare-fun m!1274689 () Bool)

(assert (=> b!1388915 m!1274689))

(declare-fun m!1274691 () Bool)

(assert (=> b!1388919 m!1274691))

(declare-fun m!1274693 () Bool)

(assert (=> start!119036 m!1274693))

(declare-fun m!1274695 () Bool)

(assert (=> start!119036 m!1274695))

(declare-fun m!1274697 () Bool)

(assert (=> b!1388920 m!1274697))

(push 1)

(assert (not b!1388915))

(assert (not b!1388917))

(assert (not b!1388919))

(assert (not b!1388920))

(assert (not start!119036))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!150007 () Bool)

(declare-fun res!929284 () Bool)

(declare-fun e!786834 () Bool)

(assert (=> d!150007 (=> res!929284 e!786834)))

(assert (=> d!150007 (= res!929284 (bvsge #b00000000000000000000000000000000 (size!46391 a!2901)))))

(assert (=> d!150007 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32536) e!786834)))

(declare-fun b!1388953 () Bool)

(declare-fun e!786836 () Bool)

(declare-fun e!786835 () Bool)

(assert (=> b!1388953 (= e!786836 e!786835)))

(declare-fun c!129283 () Bool)

(assert (=> b!1388953 (= c!129283 (validKeyInArray!0 (select (arr!45840 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66665 () Bool)

(declare-fun call!66668 () Bool)

(assert (=> bm!66665 (= call!66668 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129283 (Cons!32535 (select (arr!45840 a!2901) #b00000000000000000000000000000000) Nil!32536) Nil!32536)))))

(declare-fun b!1388954 () Bool)

(assert (=> b!1388954 (= e!786835 call!66668)))

(declare-fun b!1388955 () Bool)

(assert (=> b!1388955 (= e!786834 e!786836)))

(declare-fun res!929280 () Bool)

(assert (=> b!1388955 (=> (not res!929280) (not e!786836))))

(declare-fun e!786839 () Bool)

(assert (=> b!1388955 (= res!929280 (not e!786839))))

(declare-fun res!929283 () Bool)

(assert (=> b!1388955 (=> (not res!929283) (not e!786839))))

(assert (=> b!1388955 (= res!929283 (validKeyInArray!0 (select (arr!45840 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1388956 () Bool)

(declare-fun contains!9769 (List!32539 (_ BitVec 64)) Bool)

(assert (=> b!1388956 (= e!786839 (contains!9769 Nil!32536 (select (arr!45840 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1388957 () Bool)

(assert (=> b!1388957 (= e!786835 call!66668)))

(assert (= (and d!150007 (not res!929284)) b!1388955))

(assert (= (and b!1388955 res!929283) b!1388956))

(assert (= (and b!1388955 res!929280) b!1388953))

(assert (= (and b!1388953 c!129283) b!1388957))

(assert (= (and b!1388953 (not c!129283)) b!1388954))

(assert (= (or b!1388957 b!1388954) bm!66665))

(declare-fun m!1274711 () Bool)

(assert (=> b!1388953 m!1274711))

(assert (=> b!1388953 m!1274711))

(declare-fun m!1274713 () Bool)

(assert (=> b!1388953 m!1274713))

(assert (=> bm!66665 m!1274711))

(declare-fun m!1274715 () Bool)

(assert (=> bm!66665 m!1274715))

(assert (=> b!1388955 m!1274711))

(assert (=> b!1388955 m!1274711))

(assert (=> b!1388955 m!1274713))

(assert (=> b!1388956 m!1274711))

(assert (=> b!1388956 m!1274711))

(declare-fun m!1274717 () Bool)

(assert (=> b!1388956 m!1274717))

(assert (=> b!1388919 d!150007))

(declare-fun d!150011 () Bool)

(assert (=> d!150011 (= (validKeyInArray!0 (select (arr!45840 a!2901) i!1037)) (and (not (= (select (arr!45840 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45840 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388917 d!150011))

(declare-fun d!150013 () Bool)

(assert (=> d!150013 (= (validKeyInArray!0 (select (arr!45840 a!2901) j!112)) (and (not (= (select (arr!45840 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45840 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388915 d!150013))

(declare-fun b!1388983 () Bool)

(declare-fun e!786855 () Bool)

(declare-fun e!786856 () Bool)

(assert (=> b!1388983 (= e!786855 e!786856)))

(declare-fun c!129290 () Bool)

(assert (=> b!1388983 (= c!129290 (validKeyInArray!0 (select (arr!45840 a!2901) #b00000000000000000000000000000000)))))

