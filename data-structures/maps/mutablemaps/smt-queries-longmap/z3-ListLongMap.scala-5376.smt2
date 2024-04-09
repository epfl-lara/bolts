; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71880 () Bool)

(assert start!71880)

(declare-fun b!834929 () Bool)

(declare-fun e!465851 () Bool)

(assert (=> b!834929 (= e!465851 false)))

(declare-datatypes ((array!46734 0))(
  ( (array!46735 (arr!22397 (Array (_ BitVec 32) (_ BitVec 64))) (size!22818 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46734)

(declare-fun lt!379593 () (_ BitVec 32))

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46734 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834929 (= lt!379593 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k0!2968 () (_ BitVec 64))

(declare-fun lt!379592 () (_ BitVec 32))

(assert (=> b!834929 (= lt!379592 (arrayCountValidKeys!0 (array!46735 (store (arr!22397 a!4227) i!1466 k0!2968) (size!22818 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun res!567973 () Bool)

(assert (=> start!71880 (=> (not res!567973) (not e!465851))))

(assert (=> start!71880 (= res!567973 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22818 a!4227))))))

(assert (=> start!71880 e!465851))

(assert (=> start!71880 true))

(declare-fun array_inv!17820 (array!46734) Bool)

(assert (=> start!71880 (array_inv!17820 a!4227)))

(declare-fun b!834928 () Bool)

(declare-fun res!567975 () Bool)

(assert (=> b!834928 (=> (not res!567975) (not e!465851))))

(assert (=> b!834928 (= res!567975 (and (bvslt (size!22818 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22818 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834927 () Bool)

(declare-fun res!567974 () Bool)

(assert (=> b!834927 (=> (not res!567974) (not e!465851))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834927 (= res!567974 (validKeyInArray!0 k0!2968))))

(declare-fun b!834926 () Bool)

(declare-fun res!567976 () Bool)

(assert (=> b!834926 (=> (not res!567976) (not e!465851))))

(assert (=> b!834926 (= res!567976 (not (validKeyInArray!0 (select (arr!22397 a!4227) i!1466))))))

(assert (= (and start!71880 res!567973) b!834926))

(assert (= (and b!834926 res!567976) b!834927))

(assert (= (and b!834927 res!567974) b!834928))

(assert (= (and b!834928 res!567975) b!834929))

(declare-fun m!780201 () Bool)

(assert (=> b!834929 m!780201))

(declare-fun m!780203 () Bool)

(assert (=> b!834929 m!780203))

(declare-fun m!780205 () Bool)

(assert (=> b!834929 m!780205))

(declare-fun m!780207 () Bool)

(assert (=> start!71880 m!780207))

(declare-fun m!780209 () Bool)

(assert (=> b!834927 m!780209))

(declare-fun m!780211 () Bool)

(assert (=> b!834926 m!780211))

(assert (=> b!834926 m!780211))

(declare-fun m!780213 () Bool)

(assert (=> b!834926 m!780213))

(check-sat (not b!834927) (not b!834926) (not start!71880) (not b!834929))
