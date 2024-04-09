; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116784 () Bool)

(assert start!116784)

(declare-fun b!1375791 () Bool)

(declare-fun e!779429 () Bool)

(declare-fun e!779430 () Bool)

(assert (=> b!1375791 (= e!779429 e!779430)))

(declare-fun res!918863 () Bool)

(assert (=> b!1375791 (=> (not res!918863) (not e!779430))))

(declare-fun to!206 () (_ BitVec 32))

(declare-fun i!1445 () (_ BitVec 32))

(declare-datatypes ((array!93371 0))(
  ( (array!93372 (arr!45084 (Array (_ BitVec 32) (_ BitVec 64))) (size!45635 (_ BitVec 32))) )
))
(declare-fun a!4032 () array!93371)

(assert (=> b!1375791 (= res!918863 (and (bvsge (bvadd #b00000000000000000000000000000001 to!206) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!206) (size!45635 a!4032)) (bvsgt (bvadd #b00000000000000000000000000000001 to!206) i!1445)))))

(declare-datatypes ((Unit!45531 0))(
  ( (Unit!45532) )
))
(declare-fun lt!604857 () Unit!45531)

(declare-fun e!779431 () Unit!45531)

(assert (=> b!1375791 (= lt!604857 e!779431)))

(declare-fun c!127907 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1375791 (= c!127907 (validKeyInArray!0 (select (arr!45084 a!4032) to!206)))))

(declare-fun b!1375792 () Bool)

(assert (=> b!1375792 (= e!779430 false)))

(declare-fun lt!604855 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93371 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1375792 (= lt!604855 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun lt!604854 () (_ BitVec 32))

(declare-fun lt!604859 () array!93371)

(assert (=> b!1375792 (= lt!604854 (arrayCountValidKeys!0 lt!604859 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375793 () Bool)

(declare-fun lt!604856 () Unit!45531)

(assert (=> b!1375793 (= e!779431 lt!604856)))

(declare-fun lt!604860 () Unit!45531)

(declare-fun lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 (array!93371 (_ BitVec 32) (_ BitVec 32)) Unit!45531)

(assert (=> b!1375793 (= lt!604860 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65778 () (_ BitVec 32))

(declare-fun lt!604858 () (_ BitVec 32))

(assert (=> b!1375793 (= call!65778 lt!604858)))

(assert (=> b!1375793 (= lt!604856 (lemmaNotValidKeyDoesNotIncreaseNumOfKeys!0 lt!604859 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(declare-fun call!65777 () (_ BitVec 32))

(declare-fun lt!604861 () (_ BitVec 32))

(assert (=> b!1375793 (= call!65777 lt!604861)))

(declare-fun b!1375794 () Bool)

(declare-fun res!918864 () Bool)

(declare-fun e!779432 () Bool)

(assert (=> b!1375794 (=> (not res!918864) (not e!779432))))

(assert (=> b!1375794 (= res!918864 (validKeyInArray!0 (select (arr!45084 a!4032) i!1445)))))

(declare-fun b!1375795 () Bool)

(declare-fun res!918862 () Bool)

(assert (=> b!1375795 (=> (not res!918862) (not e!779432))))

(assert (=> b!1375795 (= res!918862 (and (bvslt (size!45635 a!4032) #b01111111111111111111111111111111) (bvsge to!206 #b00000000000000000000000000000000) (bvsle to!206 (size!45635 a!4032)) (bvsgt to!206 i!1445)))))

(declare-fun bm!65774 () Bool)

(assert (=> bm!65774 (= call!65778 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun b!1375796 () Bool)

(declare-fun res!918865 () Bool)

(assert (=> b!1375796 (=> (not res!918865) (not e!779432))))

(declare-fun k!2947 () (_ BitVec 64))

(assert (=> b!1375796 (= res!918865 (not (validKeyInArray!0 k!2947)))))

(declare-fun b!1375797 () Bool)

(declare-fun lt!604853 () Unit!45531)

(assert (=> b!1375797 (= e!779431 lt!604853)))

(declare-fun lt!604852 () Unit!45531)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!93371 (_ BitVec 32) (_ BitVec 32)) Unit!45531)

(assert (=> b!1375797 (= lt!604852 (lemmaValidKeyIncreasesNumOfKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375797 (= call!65778 (bvadd #b00000000000000000000000000000001 lt!604858))))

(assert (=> b!1375797 (= lt!604853 (lemmaValidKeyIncreasesNumOfKeys!0 lt!604859 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375797 (= call!65777 (bvadd #b00000000000000000000000000000001 lt!604861))))

(declare-fun b!1375798 () Bool)

(assert (=> b!1375798 (= e!779432 e!779429)))

(declare-fun res!918867 () Bool)

(assert (=> b!1375798 (=> (not res!918867) (not e!779429))))

(assert (=> b!1375798 (= res!918867 (and (= lt!604861 lt!604858) (not (= to!206 (size!45635 a!4032)))))))

(assert (=> b!1375798 (= lt!604858 (arrayCountValidKeys!0 a!4032 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375798 (= lt!604861 (arrayCountValidKeys!0 lt!604859 (bvadd #b00000000000000000000000000000001 i!1445) to!206))))

(assert (=> b!1375798 (= lt!604859 (array!93372 (store (arr!45084 a!4032) i!1445 k!2947) (size!45635 a!4032)))))

(declare-fun bm!65775 () Bool)

(assert (=> bm!65775 (= call!65777 (arrayCountValidKeys!0 lt!604859 (bvadd #b00000000000000000000000000000001 i!1445) (bvadd #b00000000000000000000000000000001 to!206)))))

(declare-fun res!918866 () Bool)

(assert (=> start!116784 (=> (not res!918866) (not e!779432))))

(assert (=> start!116784 (= res!918866 (and (bvsge i!1445 #b00000000000000000000000000000000) (bvslt i!1445 (size!45635 a!4032))))))

(assert (=> start!116784 e!779432))

(assert (=> start!116784 true))

(declare-fun array_inv!34029 (array!93371) Bool)

(assert (=> start!116784 (array_inv!34029 a!4032)))

(assert (= (and start!116784 res!918866) b!1375794))

(assert (= (and b!1375794 res!918864) b!1375796))

(assert (= (and b!1375796 res!918865) b!1375795))

(assert (= (and b!1375795 res!918862) b!1375798))

(assert (= (and b!1375798 res!918867) b!1375791))

(assert (= (and b!1375791 c!127907) b!1375797))

(assert (= (and b!1375791 (not c!127907)) b!1375793))

(assert (= (or b!1375797 b!1375793) bm!65774))

(assert (= (or b!1375797 b!1375793) bm!65775))

(assert (= (and b!1375791 res!918863) b!1375792))

(declare-fun m!1259789 () Bool)

(assert (=> b!1375792 m!1259789))

(declare-fun m!1259791 () Bool)

(assert (=> b!1375792 m!1259791))

(assert (=> bm!65775 m!1259791))

(declare-fun m!1259793 () Bool)

(assert (=> b!1375793 m!1259793))

(declare-fun m!1259795 () Bool)

(assert (=> b!1375793 m!1259795))

(declare-fun m!1259797 () Bool)

(assert (=> b!1375796 m!1259797))

(declare-fun m!1259799 () Bool)

(assert (=> start!116784 m!1259799))

(declare-fun m!1259801 () Bool)

(assert (=> b!1375794 m!1259801))

(assert (=> b!1375794 m!1259801))

(declare-fun m!1259803 () Bool)

(assert (=> b!1375794 m!1259803))

(declare-fun m!1259805 () Bool)

(assert (=> b!1375798 m!1259805))

(declare-fun m!1259807 () Bool)

(assert (=> b!1375798 m!1259807))

(declare-fun m!1259809 () Bool)

(assert (=> b!1375798 m!1259809))

(assert (=> bm!65774 m!1259789))

(declare-fun m!1259811 () Bool)

(assert (=> b!1375791 m!1259811))

(assert (=> b!1375791 m!1259811))

(declare-fun m!1259813 () Bool)

(assert (=> b!1375791 m!1259813))

(declare-fun m!1259815 () Bool)

(assert (=> b!1375797 m!1259815))

(declare-fun m!1259817 () Bool)

(assert (=> b!1375797 m!1259817))

(push 1)

(assert (not b!1375793))

(assert (not b!1375798))

(assert (not bm!65775))

(assert (not b!1375791))

(assert (not b!1375792))

(assert (not b!1375797))

(assert (not b!1375796))

