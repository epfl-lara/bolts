; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100390 () Bool)

(assert start!100390)

(declare-fun mapIsEmpty!47438 () Bool)

(declare-fun mapRes!47438 () Bool)

(assert (=> mapIsEmpty!47438 mapRes!47438))

(declare-fun mapNonEmpty!47438 () Bool)

(declare-fun tp!90094 () Bool)

(declare-fun e!680367 () Bool)

(assert (=> mapNonEmpty!47438 (= mapRes!47438 (and tp!90094 e!680367))))

(declare-datatypes ((V!45659 0))(
  ( (V!45660 (val!15256 Int)) )
))
(declare-datatypes ((ValueCell!14490 0))(
  ( (ValueCellFull!14490 (v!17895 V!45659)) (EmptyCell!14490) )
))
(declare-fun mapRest!47438 () (Array (_ BitVec 32) ValueCell!14490))

(declare-fun mapKey!47438 () (_ BitVec 32))

(declare-datatypes ((array!77558 0))(
  ( (array!77559 (arr!37421 (Array (_ BitVec 32) ValueCell!14490)) (size!37958 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77558)

(declare-fun mapValue!47438 () ValueCell!14490)

(assert (=> mapNonEmpty!47438 (= (arr!37421 _values!996) (store mapRest!47438 mapKey!47438 mapValue!47438))))

(declare-fun b!1197580 () Bool)

(declare-fun e!680372 () Bool)

(declare-fun e!680371 () Bool)

(assert (=> b!1197580 (= e!680372 e!680371)))

(declare-fun res!797076 () Bool)

(assert (=> b!1197580 (=> (not res!797076) (not e!680371))))

(declare-datatypes ((array!77560 0))(
  ( (array!77561 (arr!37422 (Array (_ BitVec 32) (_ BitVec 64))) (size!37959 (_ BitVec 32))) )
))
(declare-fun lt!543276 () array!77560)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77560 (_ BitVec 32)) Bool)

(assert (=> b!1197580 (= res!797076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543276 mask!1564))))

(declare-fun _keys!1208 () array!77560)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1197580 (= lt!543276 (array!77561 (store (arr!37422 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37959 _keys!1208)))))

(declare-fun b!1197581 () Bool)

(declare-fun res!797078 () Bool)

(assert (=> b!1197581 (=> (not res!797078) (not e!680372))))

(assert (=> b!1197581 (= res!797078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1197582 () Bool)

(declare-fun res!797077 () Bool)

(assert (=> b!1197582 (=> (not res!797077) (not e!680372))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1197582 (= res!797077 (validKeyInArray!0 k0!934))))

(declare-fun b!1197583 () Bool)

(declare-fun res!797075 () Bool)

(assert (=> b!1197583 (=> (not res!797075) (not e!680372))))

(declare-datatypes ((List!26491 0))(
  ( (Nil!26488) (Cons!26487 (h!27696 (_ BitVec 64)) (t!39199 List!26491)) )
))
(declare-fun arrayNoDuplicates!0 (array!77560 (_ BitVec 32) List!26491) Bool)

(assert (=> b!1197583 (= res!797075 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26488))))

(declare-fun b!1197584 () Bool)

(declare-fun res!797070 () Bool)

(assert (=> b!1197584 (=> (not res!797070) (not e!680372))))

(assert (=> b!1197584 (= res!797070 (= (select (arr!37422 _keys!1208) i!673) k0!934))))

(declare-fun b!1197585 () Bool)

(declare-fun res!797074 () Bool)

(assert (=> b!1197585 (=> (not res!797074) (not e!680371))))

(assert (=> b!1197585 (= res!797074 (arrayNoDuplicates!0 lt!543276 #b00000000000000000000000000000000 Nil!26488))))

(declare-fun b!1197586 () Bool)

(declare-fun tp_is_empty!30399 () Bool)

(assert (=> b!1197586 (= e!680367 tp_is_empty!30399)))

(declare-fun b!1197587 () Bool)

(declare-fun e!680368 () Bool)

(assert (=> b!1197587 (= e!680368 tp_is_empty!30399)))

(declare-fun res!797072 () Bool)

(assert (=> start!100390 (=> (not res!797072) (not e!680372))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100390 (= res!797072 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37959 _keys!1208))))))

(assert (=> start!100390 e!680372))

(declare-fun array_inv!28424 (array!77560) Bool)

(assert (=> start!100390 (array_inv!28424 _keys!1208)))

(assert (=> start!100390 true))

(declare-fun e!680370 () Bool)

(declare-fun array_inv!28425 (array!77558) Bool)

(assert (=> start!100390 (and (array_inv!28425 _values!996) e!680370)))

(declare-fun b!1197588 () Bool)

(declare-fun res!797079 () Bool)

(assert (=> b!1197588 (=> (not res!797079) (not e!680372))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1197588 (= res!797079 (validMask!0 mask!1564))))

(declare-fun b!1197589 () Bool)

(assert (=> b!1197589 (= e!680370 (and e!680368 mapRes!47438))))

(declare-fun condMapEmpty!47438 () Bool)

(declare-fun mapDefault!47438 () ValueCell!14490)

(assert (=> b!1197589 (= condMapEmpty!47438 (= (arr!37421 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14490)) mapDefault!47438)))))

(declare-fun b!1197590 () Bool)

(declare-fun res!797073 () Bool)

(assert (=> b!1197590 (=> (not res!797073) (not e!680372))))

(assert (=> b!1197590 (= res!797073 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37959 _keys!1208))))))

(declare-fun b!1197591 () Bool)

(assert (=> b!1197591 (= e!680371 (not true))))

(declare-fun arrayContainsKey!0 (array!77560 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1197591 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39642 0))(
  ( (Unit!39643) )
))
(declare-fun lt!543275 () Unit!39642)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77560 (_ BitVec 64) (_ BitVec 32)) Unit!39642)

(assert (=> b!1197591 (= lt!543275 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1197592 () Bool)

(declare-fun res!797071 () Bool)

(assert (=> b!1197592 (=> (not res!797071) (not e!680372))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1197592 (= res!797071 (and (= (size!37958 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37959 _keys!1208) (size!37958 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!100390 res!797072) b!1197588))

(assert (= (and b!1197588 res!797079) b!1197592))

(assert (= (and b!1197592 res!797071) b!1197581))

(assert (= (and b!1197581 res!797078) b!1197583))

(assert (= (and b!1197583 res!797075) b!1197590))

(assert (= (and b!1197590 res!797073) b!1197582))

(assert (= (and b!1197582 res!797077) b!1197584))

(assert (= (and b!1197584 res!797070) b!1197580))

(assert (= (and b!1197580 res!797076) b!1197585))

(assert (= (and b!1197585 res!797074) b!1197591))

(assert (= (and b!1197589 condMapEmpty!47438) mapIsEmpty!47438))

(assert (= (and b!1197589 (not condMapEmpty!47438)) mapNonEmpty!47438))

(get-info :version)

(assert (= (and mapNonEmpty!47438 ((_ is ValueCellFull!14490) mapValue!47438)) b!1197586))

(assert (= (and b!1197589 ((_ is ValueCellFull!14490) mapDefault!47438)) b!1197587))

(assert (= start!100390 b!1197589))

(declare-fun m!1104623 () Bool)

(assert (=> b!1197581 m!1104623))

(declare-fun m!1104625 () Bool)

(assert (=> start!100390 m!1104625))

(declare-fun m!1104627 () Bool)

(assert (=> start!100390 m!1104627))

(declare-fun m!1104629 () Bool)

(assert (=> b!1197585 m!1104629))

(declare-fun m!1104631 () Bool)

(assert (=> mapNonEmpty!47438 m!1104631))

(declare-fun m!1104633 () Bool)

(assert (=> b!1197583 m!1104633))

(declare-fun m!1104635 () Bool)

(assert (=> b!1197582 m!1104635))

(declare-fun m!1104637 () Bool)

(assert (=> b!1197580 m!1104637))

(declare-fun m!1104639 () Bool)

(assert (=> b!1197580 m!1104639))

(declare-fun m!1104641 () Bool)

(assert (=> b!1197591 m!1104641))

(declare-fun m!1104643 () Bool)

(assert (=> b!1197591 m!1104643))

(declare-fun m!1104645 () Bool)

(assert (=> b!1197588 m!1104645))

(declare-fun m!1104647 () Bool)

(assert (=> b!1197584 m!1104647))

(check-sat tp_is_empty!30399 (not b!1197583) (not b!1197588) (not start!100390) (not b!1197580) (not b!1197582) (not mapNonEmpty!47438) (not b!1197585) (not b!1197591) (not b!1197581))
(check-sat)
