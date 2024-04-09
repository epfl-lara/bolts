; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116512 () Bool)

(assert start!116512)

(declare-fun b!1373937 () Bool)

(declare-fun res!917243 () Bool)

(declare-fun e!778372 () Bool)

(assert (=> b!1373937 (=> (not res!917243) (not e!778372))))

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373937 (= res!917243 (not (validKeyInArray!0 k0!2959)))))

(declare-fun b!1373939 () Bool)

(assert (=> b!1373939 (= e!778372 false)))

(declare-datatypes ((array!93135 0))(
  ( (array!93136 (arr!44969 (Array (_ BitVec 32) (_ BitVec 64))) (size!45520 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93135)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun lt!603139 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93135 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1373939 (= lt!603139 (arrayCountValidKeys!0 (array!93136 (store (arr!44969 a!4142) i!1457 k0!2959) (size!45520 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603140 () (_ BitVec 32))

(assert (=> b!1373939 (= lt!603140 (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1373938 () Bool)

(declare-fun res!917242 () Bool)

(assert (=> b!1373938 (=> (not res!917242) (not e!778372))))

(assert (=> b!1373938 (= res!917242 (and (bvslt (size!45520 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45520 a!4142))))))

(declare-fun res!917241 () Bool)

(assert (=> start!116512 (=> (not res!917241) (not e!778372))))

(assert (=> start!116512 (= res!917241 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45520 a!4142))))))

(assert (=> start!116512 e!778372))

(assert (=> start!116512 true))

(declare-fun array_inv!33914 (array!93135) Bool)

(assert (=> start!116512 (array_inv!33914 a!4142)))

(declare-fun b!1373936 () Bool)

(declare-fun res!917244 () Bool)

(assert (=> b!1373936 (=> (not res!917244) (not e!778372))))

(assert (=> b!1373936 (= res!917244 (validKeyInArray!0 (select (arr!44969 a!4142) i!1457)))))

(assert (= (and start!116512 res!917241) b!1373936))

(assert (= (and b!1373936 res!917244) b!1373937))

(assert (= (and b!1373937 res!917243) b!1373938))

(assert (= (and b!1373938 res!917242) b!1373939))

(declare-fun m!1257183 () Bool)

(assert (=> b!1373937 m!1257183))

(declare-fun m!1257185 () Bool)

(assert (=> b!1373939 m!1257185))

(declare-fun m!1257187 () Bool)

(assert (=> b!1373939 m!1257187))

(declare-fun m!1257189 () Bool)

(assert (=> b!1373939 m!1257189))

(declare-fun m!1257191 () Bool)

(assert (=> start!116512 m!1257191))

(declare-fun m!1257193 () Bool)

(assert (=> b!1373936 m!1257193))

(assert (=> b!1373936 m!1257193))

(declare-fun m!1257195 () Bool)

(assert (=> b!1373936 m!1257195))

(check-sat (not b!1373936) (not b!1373937) (not b!1373939) (not start!116512))
