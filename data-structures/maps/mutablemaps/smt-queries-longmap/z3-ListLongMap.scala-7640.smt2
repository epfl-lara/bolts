; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96198 () Bool)

(assert start!96198)

(declare-fun b_free!22815 () Bool)

(declare-fun b_next!22815 () Bool)

(assert (=> start!96198 (= b_free!22815 (not b_next!22815))))

(declare-fun tp!80294 () Bool)

(declare-fun b_and!36323 () Bool)

(assert (=> start!96198 (= tp!80294 b_and!36323)))

(declare-fun b!1091629 () Bool)

(declare-fun res!728447 () Bool)

(declare-fun e!623488 () Bool)

(assert (=> b!1091629 (=> (not res!728447) (not e!623488))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70518 0))(
  ( (array!70519 (arr!33929 (Array (_ BitVec 32) (_ BitVec 64))) (size!34466 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70518)

(assert (=> b!1091629 (= res!728447 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34466 _keys!1070))))))

(declare-fun b!1091630 () Bool)

(declare-fun res!728443 () Bool)

(assert (=> b!1091630 (=> (not res!728443) (not e!623488))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1091630 (= res!728443 (validKeyInArray!0 k0!904))))

(declare-fun b!1091631 () Bool)

(declare-fun e!623487 () Bool)

(assert (=> b!1091631 (= e!623487 true)))

(declare-datatypes ((V!40883 0))(
  ( (V!40884 (val!13465 Int)) )
))
(declare-datatypes ((tuple2!17200 0))(
  ( (tuple2!17201 (_1!8610 (_ BitVec 64)) (_2!8610 V!40883)) )
))
(declare-datatypes ((List!23839 0))(
  ( (Nil!23836) (Cons!23835 (h!25044 tuple2!17200) (t!33719 List!23839)) )
))
(declare-datatypes ((ListLongMap!15181 0))(
  ( (ListLongMap!15182 (toList!7606 List!23839)) )
))
(declare-fun lt!487617 () ListLongMap!15181)

(declare-fun lt!487613 () ListLongMap!15181)

(declare-fun -!883 (ListLongMap!15181 (_ BitVec 64)) ListLongMap!15181)

(assert (=> b!1091631 (= (-!883 lt!487617 k0!904) lt!487613)))

(declare-fun minValue!831 () V!40883)

(declare-datatypes ((Unit!35881 0))(
  ( (Unit!35882) )
))
(declare-fun lt!487618 () Unit!35881)

(declare-fun lt!487622 () ListLongMap!15181)

(declare-fun addRemoveCommutativeForDiffKeys!111 (ListLongMap!15181 (_ BitVec 64) V!40883 (_ BitVec 64)) Unit!35881)

(assert (=> b!1091631 (= lt!487618 (addRemoveCommutativeForDiffKeys!111 lt!487622 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1091632 () Bool)

(declare-fun e!623486 () Bool)

(declare-fun e!623485 () Bool)

(declare-fun mapRes!41980 () Bool)

(assert (=> b!1091632 (= e!623486 (and e!623485 mapRes!41980))))

(declare-fun condMapEmpty!41980 () Bool)

(declare-datatypes ((ValueCell!12699 0))(
  ( (ValueCellFull!12699 (v!16087 V!40883)) (EmptyCell!12699) )
))
(declare-datatypes ((array!70520 0))(
  ( (array!70521 (arr!33930 (Array (_ BitVec 32) ValueCell!12699)) (size!34467 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70520)

(declare-fun mapDefault!41980 () ValueCell!12699)

(assert (=> b!1091632 (= condMapEmpty!41980 (= (arr!33930 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12699)) mapDefault!41980)))))

(declare-fun b!1091633 () Bool)

(declare-fun res!728450 () Bool)

(assert (=> b!1091633 (=> (not res!728450) (not e!623488))))

(assert (=> b!1091633 (= res!728450 (= (select (arr!33929 _keys!1070) i!650) k0!904))))

(declare-fun res!728444 () Bool)

(assert (=> start!96198 (=> (not res!728444) (not e!623488))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96198 (= res!728444 (validMask!0 mask!1414))))

(assert (=> start!96198 e!623488))

(assert (=> start!96198 tp!80294))

(assert (=> start!96198 true))

(declare-fun tp_is_empty!26817 () Bool)

(assert (=> start!96198 tp_is_empty!26817))

(declare-fun array_inv!26016 (array!70518) Bool)

(assert (=> start!96198 (array_inv!26016 _keys!1070)))

(declare-fun array_inv!26017 (array!70520) Bool)

(assert (=> start!96198 (and (array_inv!26017 _values!874) e!623486)))

(declare-fun b!1091634 () Bool)

(assert (=> b!1091634 (= e!623485 tp_is_empty!26817)))

(declare-fun b!1091635 () Bool)

(declare-fun e!623482 () Bool)

(assert (=> b!1091635 (= e!623482 e!623487)))

(declare-fun res!728449 () Bool)

(assert (=> b!1091635 (=> res!728449 e!623487)))

(assert (=> b!1091635 (= res!728449 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!487615 () ListLongMap!15181)

(assert (=> b!1091635 (= lt!487615 lt!487617)))

(declare-fun lt!487611 () tuple2!17200)

(declare-fun +!3310 (ListLongMap!15181 tuple2!17200) ListLongMap!15181)

(assert (=> b!1091635 (= lt!487617 (+!3310 lt!487622 lt!487611))))

(declare-fun lt!487620 () ListLongMap!15181)

(assert (=> b!1091635 (= lt!487620 lt!487613)))

(declare-fun lt!487616 () ListLongMap!15181)

(assert (=> b!1091635 (= lt!487613 (+!3310 lt!487616 lt!487611))))

(declare-fun lt!487610 () ListLongMap!15181)

(assert (=> b!1091635 (= lt!487620 (+!3310 lt!487610 lt!487611))))

(assert (=> b!1091635 (= lt!487611 (tuple2!17201 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1091636 () Bool)

(declare-fun e!623481 () Bool)

(assert (=> b!1091636 (= e!623481 tp_is_empty!26817)))

(declare-fun b!1091637 () Bool)

(declare-fun e!623484 () Bool)

(assert (=> b!1091637 (= e!623488 e!623484)))

(declare-fun res!728448 () Bool)

(assert (=> b!1091637 (=> (not res!728448) (not e!623484))))

(declare-fun lt!487621 () array!70518)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70518 (_ BitVec 32)) Bool)

(assert (=> b!1091637 (= res!728448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!487621 mask!1414))))

(assert (=> b!1091637 (= lt!487621 (array!70519 (store (arr!33929 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34466 _keys!1070)))))

(declare-fun mapIsEmpty!41980 () Bool)

(assert (=> mapIsEmpty!41980 mapRes!41980))

(declare-fun b!1091638 () Bool)

(declare-fun res!728441 () Bool)

(assert (=> b!1091638 (=> (not res!728441) (not e!623488))))

(declare-datatypes ((List!23840 0))(
  ( (Nil!23837) (Cons!23836 (h!25045 (_ BitVec 64)) (t!33720 List!23840)) )
))
(declare-fun arrayNoDuplicates!0 (array!70518 (_ BitVec 32) List!23840) Bool)

(assert (=> b!1091638 (= res!728441 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23837))))

(declare-fun b!1091639 () Bool)

(declare-fun res!728442 () Bool)

(assert (=> b!1091639 (=> (not res!728442) (not e!623488))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1091639 (= res!728442 (and (= (size!34467 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34466 _keys!1070) (size!34467 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1091640 () Bool)

(declare-fun res!728445 () Bool)

(assert (=> b!1091640 (=> (not res!728445) (not e!623484))))

(assert (=> b!1091640 (= res!728445 (arrayNoDuplicates!0 lt!487621 #b00000000000000000000000000000000 Nil!23837))))

(declare-fun mapNonEmpty!41980 () Bool)

(declare-fun tp!80295 () Bool)

(assert (=> mapNonEmpty!41980 (= mapRes!41980 (and tp!80295 e!623481))))

(declare-fun mapKey!41980 () (_ BitVec 32))

(declare-fun mapRest!41980 () (Array (_ BitVec 32) ValueCell!12699))

(declare-fun mapValue!41980 () ValueCell!12699)

(assert (=> mapNonEmpty!41980 (= (arr!33930 _values!874) (store mapRest!41980 mapKey!41980 mapValue!41980))))

(declare-fun b!1091641 () Bool)

(declare-fun res!728440 () Bool)

(assert (=> b!1091641 (=> (not res!728440) (not e!623488))))

(assert (=> b!1091641 (= res!728440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1091642 () Bool)

(assert (=> b!1091642 (= e!623484 (not e!623482))))

(declare-fun res!728446 () Bool)

(assert (=> b!1091642 (=> res!728446 e!623482)))

(assert (=> b!1091642 (= res!728446 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!40883)

(declare-fun getCurrentListMap!4342 (array!70518 array!70520 (_ BitVec 32) (_ BitVec 32) V!40883 V!40883 (_ BitVec 32) Int) ListLongMap!15181)

(assert (=> b!1091642 (= lt!487615 (getCurrentListMap!4342 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487619 () array!70520)

(assert (=> b!1091642 (= lt!487620 (getCurrentListMap!4342 lt!487621 lt!487619 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1091642 (and (= lt!487610 lt!487616) (= lt!487616 lt!487610))))

(assert (=> b!1091642 (= lt!487616 (-!883 lt!487622 k0!904))))

(declare-fun lt!487612 () Unit!35881)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!148 (array!70518 array!70520 (_ BitVec 32) (_ BitVec 32) V!40883 V!40883 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35881)

(assert (=> b!1091642 (= lt!487612 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!148 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4094 (array!70518 array!70520 (_ BitVec 32) (_ BitVec 32) V!40883 V!40883 (_ BitVec 32) Int) ListLongMap!15181)

(assert (=> b!1091642 (= lt!487610 (getCurrentListMapNoExtraKeys!4094 lt!487621 lt!487619 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2230 (Int (_ BitVec 64)) V!40883)

(assert (=> b!1091642 (= lt!487619 (array!70521 (store (arr!33930 _values!874) i!650 (ValueCellFull!12699 (dynLambda!2230 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34467 _values!874)))))

(assert (=> b!1091642 (= lt!487622 (getCurrentListMapNoExtraKeys!4094 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70518 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1091642 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!487614 () Unit!35881)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70518 (_ BitVec 64) (_ BitVec 32)) Unit!35881)

(assert (=> b!1091642 (= lt!487614 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(assert (= (and start!96198 res!728444) b!1091639))

(assert (= (and b!1091639 res!728442) b!1091641))

(assert (= (and b!1091641 res!728440) b!1091638))

(assert (= (and b!1091638 res!728441) b!1091629))

(assert (= (and b!1091629 res!728447) b!1091630))

(assert (= (and b!1091630 res!728443) b!1091633))

(assert (= (and b!1091633 res!728450) b!1091637))

(assert (= (and b!1091637 res!728448) b!1091640))

(assert (= (and b!1091640 res!728445) b!1091642))

(assert (= (and b!1091642 (not res!728446)) b!1091635))

(assert (= (and b!1091635 (not res!728449)) b!1091631))

(assert (= (and b!1091632 condMapEmpty!41980) mapIsEmpty!41980))

(assert (= (and b!1091632 (not condMapEmpty!41980)) mapNonEmpty!41980))

(get-info :version)

(assert (= (and mapNonEmpty!41980 ((_ is ValueCellFull!12699) mapValue!41980)) b!1091636))

(assert (= (and b!1091632 ((_ is ValueCellFull!12699) mapDefault!41980)) b!1091634))

(assert (= start!96198 b!1091632))

(declare-fun b_lambda!17515 () Bool)

(assert (=> (not b_lambda!17515) (not b!1091642)))

(declare-fun t!33718 () Bool)

(declare-fun tb!7701 () Bool)

(assert (=> (and start!96198 (= defaultEntry!882 defaultEntry!882) t!33718) tb!7701))

(declare-fun result!15913 () Bool)

(assert (=> tb!7701 (= result!15913 tp_is_empty!26817)))

(assert (=> b!1091642 t!33718))

(declare-fun b_and!36325 () Bool)

(assert (= b_and!36323 (and (=> t!33718 result!15913) b_and!36325)))

(declare-fun m!1011397 () Bool)

(assert (=> b!1091640 m!1011397))

(declare-fun m!1011399 () Bool)

(assert (=> mapNonEmpty!41980 m!1011399))

(declare-fun m!1011401 () Bool)

(assert (=> b!1091635 m!1011401))

(declare-fun m!1011403 () Bool)

(assert (=> b!1091635 m!1011403))

(declare-fun m!1011405 () Bool)

(assert (=> b!1091635 m!1011405))

(declare-fun m!1011407 () Bool)

(assert (=> b!1091633 m!1011407))

(declare-fun m!1011409 () Bool)

(assert (=> b!1091638 m!1011409))

(declare-fun m!1011411 () Bool)

(assert (=> b!1091637 m!1011411))

(declare-fun m!1011413 () Bool)

(assert (=> b!1091637 m!1011413))

(declare-fun m!1011415 () Bool)

(assert (=> b!1091642 m!1011415))

(declare-fun m!1011417 () Bool)

(assert (=> b!1091642 m!1011417))

(declare-fun m!1011419 () Bool)

(assert (=> b!1091642 m!1011419))

(declare-fun m!1011421 () Bool)

(assert (=> b!1091642 m!1011421))

(declare-fun m!1011423 () Bool)

(assert (=> b!1091642 m!1011423))

(declare-fun m!1011425 () Bool)

(assert (=> b!1091642 m!1011425))

(declare-fun m!1011427 () Bool)

(assert (=> b!1091642 m!1011427))

(declare-fun m!1011429 () Bool)

(assert (=> b!1091642 m!1011429))

(declare-fun m!1011431 () Bool)

(assert (=> b!1091642 m!1011431))

(declare-fun m!1011433 () Bool)

(assert (=> b!1091642 m!1011433))

(declare-fun m!1011435 () Bool)

(assert (=> b!1091631 m!1011435))

(declare-fun m!1011437 () Bool)

(assert (=> b!1091631 m!1011437))

(declare-fun m!1011439 () Bool)

(assert (=> b!1091630 m!1011439))

(declare-fun m!1011441 () Bool)

(assert (=> b!1091641 m!1011441))

(declare-fun m!1011443 () Bool)

(assert (=> start!96198 m!1011443))

(declare-fun m!1011445 () Bool)

(assert (=> start!96198 m!1011445))

(declare-fun m!1011447 () Bool)

(assert (=> start!96198 m!1011447))

(check-sat (not b!1091635) (not start!96198) (not b_next!22815) (not b!1091638) (not b!1091630) tp_is_empty!26817 (not b!1091631) (not b_lambda!17515) (not b!1091640) (not mapNonEmpty!41980) (not b!1091641) b_and!36325 (not b!1091642) (not b!1091637))
(check-sat b_and!36325 (not b_next!22815))
