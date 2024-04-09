; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95664 () Bool)

(assert start!95664)

(declare-fun b_free!22281 () Bool)

(declare-fun b_next!22281 () Bool)

(assert (=> start!95664 (= b_free!22281 (not b_next!22281))))

(declare-fun tp!78693 () Bool)

(declare-fun b_and!35277 () Bool)

(assert (=> start!95664 (= tp!78693 b_and!35277)))

(declare-fun res!720250 () Bool)

(declare-fun e!617723 () Bool)

(assert (=> start!95664 (=> (not res!720250) (not e!617723))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95664 (= res!720250 (validMask!0 mask!1414))))

(assert (=> start!95664 e!617723))

(assert (=> start!95664 tp!78693))

(assert (=> start!95664 true))

(declare-fun tp_is_empty!26283 () Bool)

(assert (=> start!95664 tp_is_empty!26283))

(declare-datatypes ((array!69472 0))(
  ( (array!69473 (arr!33406 (Array (_ BitVec 32) (_ BitVec 64))) (size!33943 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69472)

(declare-fun array_inv!25654 (array!69472) Bool)

(assert (=> start!95664 (array_inv!25654 _keys!1070)))

(declare-datatypes ((V!40171 0))(
  ( (V!40172 (val!13198 Int)) )
))
(declare-datatypes ((ValueCell!12432 0))(
  ( (ValueCellFull!12432 (v!15820 V!40171)) (EmptyCell!12432) )
))
(declare-datatypes ((array!69474 0))(
  ( (array!69475 (arr!33407 (Array (_ BitVec 32) ValueCell!12432)) (size!33944 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69474)

(declare-fun e!617725 () Bool)

(declare-fun array_inv!25655 (array!69474) Bool)

(assert (=> start!95664 (and (array_inv!25655 _values!874) e!617725)))

(declare-fun b!1080523 () Bool)

(declare-fun e!617720 () Bool)

(assert (=> b!1080523 (= e!617720 tp_is_empty!26283)))

(declare-fun b!1080524 () Bool)

(declare-fun res!720256 () Bool)

(assert (=> b!1080524 (=> (not res!720256) (not e!617723))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1080524 (= res!720256 (= (select (arr!33406 _keys!1070) i!650) k0!904))))

(declare-fun b!1080525 () Bool)

(declare-fun res!720252 () Bool)

(assert (=> b!1080525 (=> (not res!720252) (not e!617723))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1080525 (= res!720252 (and (= (size!33944 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33943 _keys!1070) (size!33944 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1080526 () Bool)

(declare-fun res!720255 () Bool)

(declare-fun e!617722 () Bool)

(assert (=> b!1080526 (=> (not res!720255) (not e!617722))))

(declare-fun lt!479029 () array!69472)

(declare-datatypes ((List!23409 0))(
  ( (Nil!23406) (Cons!23405 (h!24614 (_ BitVec 64)) (t!32775 List!23409)) )
))
(declare-fun arrayNoDuplicates!0 (array!69472 (_ BitVec 32) List!23409) Bool)

(assert (=> b!1080526 (= res!720255 (arrayNoDuplicates!0 lt!479029 #b00000000000000000000000000000000 Nil!23406))))

(declare-fun b!1080527 () Bool)

(declare-fun res!720251 () Bool)

(assert (=> b!1080527 (=> (not res!720251) (not e!617723))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080527 (= res!720251 (validKeyInArray!0 k0!904))))

(declare-fun b!1080528 () Bool)

(declare-fun e!617721 () Bool)

(assert (=> b!1080528 (= e!617721 tp_is_empty!26283)))

(declare-fun mapIsEmpty!41179 () Bool)

(declare-fun mapRes!41179 () Bool)

(assert (=> mapIsEmpty!41179 mapRes!41179))

(declare-fun b!1080529 () Bool)

(declare-fun res!720254 () Bool)

(assert (=> b!1080529 (=> (not res!720254) (not e!617723))))

(assert (=> b!1080529 (= res!720254 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33943 _keys!1070))))))

(declare-fun mapNonEmpty!41179 () Bool)

(declare-fun tp!78692 () Bool)

(assert (=> mapNonEmpty!41179 (= mapRes!41179 (and tp!78692 e!617720))))

(declare-fun mapValue!41179 () ValueCell!12432)

(declare-fun mapKey!41179 () (_ BitVec 32))

(declare-fun mapRest!41179 () (Array (_ BitVec 32) ValueCell!12432))

(assert (=> mapNonEmpty!41179 (= (arr!33407 _values!874) (store mapRest!41179 mapKey!41179 mapValue!41179))))

(declare-fun b!1080530 () Bool)

(assert (=> b!1080530 (= e!617725 (and e!617721 mapRes!41179))))

(declare-fun condMapEmpty!41179 () Bool)

(declare-fun mapDefault!41179 () ValueCell!12432)

(assert (=> b!1080530 (= condMapEmpty!41179 (= (arr!33407 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12432)) mapDefault!41179)))))

(declare-fun b!1080531 () Bool)

(declare-fun res!720257 () Bool)

(assert (=> b!1080531 (=> (not res!720257) (not e!617723))))

(assert (=> b!1080531 (= res!720257 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23406))))

(declare-fun b!1080532 () Bool)

(declare-fun res!720249 () Bool)

(assert (=> b!1080532 (=> (not res!720249) (not e!617723))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69472 (_ BitVec 32)) Bool)

(assert (=> b!1080532 (= res!720249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1080533 () Bool)

(assert (=> b!1080533 (= e!617723 e!617722)))

(declare-fun res!720253 () Bool)

(assert (=> b!1080533 (=> (not res!720253) (not e!617722))))

(assert (=> b!1080533 (= res!720253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479029 mask!1414))))

(assert (=> b!1080533 (= lt!479029 (array!69473 (store (arr!33406 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33943 _keys!1070)))))

(declare-fun b!1080534 () Bool)

(assert (=> b!1080534 (= e!617722 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40171)

(declare-datatypes ((tuple2!16786 0))(
  ( (tuple2!16787 (_1!8403 (_ BitVec 64)) (_2!8403 V!40171)) )
))
(declare-datatypes ((List!23410 0))(
  ( (Nil!23407) (Cons!23406 (h!24615 tuple2!16786) (t!32776 List!23410)) )
))
(declare-datatypes ((ListLongMap!14767 0))(
  ( (ListLongMap!14768 (toList!7399 List!23410)) )
))
(declare-fun lt!479030 () ListLongMap!14767)

(declare-fun zeroValue!831 () V!40171)

(declare-fun getCurrentListMapNoExtraKeys!3910 (array!69472 array!69474 (_ BitVec 32) (_ BitVec 32) V!40171 V!40171 (_ BitVec 32) Int) ListLongMap!14767)

(assert (=> b!1080534 (= lt!479030 (getCurrentListMapNoExtraKeys!3910 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69472 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1080534 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35477 0))(
  ( (Unit!35478) )
))
(declare-fun lt!479028 () Unit!35477)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69472 (_ BitVec 64) (_ BitVec 32)) Unit!35477)

(assert (=> b!1080534 (= lt!479028 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(assert (= (and start!95664 res!720250) b!1080525))

(assert (= (and b!1080525 res!720252) b!1080532))

(assert (= (and b!1080532 res!720249) b!1080531))

(assert (= (and b!1080531 res!720257) b!1080529))

(assert (= (and b!1080529 res!720254) b!1080527))

(assert (= (and b!1080527 res!720251) b!1080524))

(assert (= (and b!1080524 res!720256) b!1080533))

(assert (= (and b!1080533 res!720253) b!1080526))

(assert (= (and b!1080526 res!720255) b!1080534))

(assert (= (and b!1080530 condMapEmpty!41179) mapIsEmpty!41179))

(assert (= (and b!1080530 (not condMapEmpty!41179)) mapNonEmpty!41179))

(get-info :version)

(assert (= (and mapNonEmpty!41179 ((_ is ValueCellFull!12432) mapValue!41179)) b!1080523))

(assert (= (and b!1080530 ((_ is ValueCellFull!12432) mapDefault!41179)) b!1080528))

(assert (= start!95664 b!1080530))

(declare-fun m!998587 () Bool)

(assert (=> mapNonEmpty!41179 m!998587))

(declare-fun m!998589 () Bool)

(assert (=> b!1080524 m!998589))

(declare-fun m!998591 () Bool)

(assert (=> b!1080533 m!998591))

(declare-fun m!998593 () Bool)

(assert (=> b!1080533 m!998593))

(declare-fun m!998595 () Bool)

(assert (=> start!95664 m!998595))

(declare-fun m!998597 () Bool)

(assert (=> start!95664 m!998597))

(declare-fun m!998599 () Bool)

(assert (=> start!95664 m!998599))

(declare-fun m!998601 () Bool)

(assert (=> b!1080526 m!998601))

(declare-fun m!998603 () Bool)

(assert (=> b!1080532 m!998603))

(declare-fun m!998605 () Bool)

(assert (=> b!1080534 m!998605))

(declare-fun m!998607 () Bool)

(assert (=> b!1080534 m!998607))

(declare-fun m!998609 () Bool)

(assert (=> b!1080534 m!998609))

(declare-fun m!998611 () Bool)

(assert (=> b!1080527 m!998611))

(declare-fun m!998613 () Bool)

(assert (=> b!1080531 m!998613))

(check-sat (not b!1080534) (not b!1080527) (not start!95664) (not mapNonEmpty!41179) (not b!1080532) (not b!1080533) (not b!1080526) (not b_next!22281) (not b!1080531) tp_is_empty!26283 b_and!35277)
(check-sat b_and!35277 (not b_next!22281))
