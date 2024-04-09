; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110812 () Bool)

(assert start!110812)

(declare-fun b_free!29611 () Bool)

(declare-fun b_next!29611 () Bool)

(assert (=> start!110812 (= b_free!29611 (not b_next!29611))))

(declare-fun tp!104155 () Bool)

(declare-fun b_and!47829 () Bool)

(assert (=> start!110812 (= tp!104155 b_and!47829)))

(declare-fun b!1311018 () Bool)

(declare-fun res!870435 () Bool)

(declare-fun e!747918 () Bool)

(assert (=> b!1311018 (=> (not res!870435) (not e!747918))))

(declare-datatypes ((array!87633 0))(
  ( (array!87634 (arr!42292 (Array (_ BitVec 32) (_ BitVec 64))) (size!42843 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87633)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87633 (_ BitVec 32)) Bool)

(assert (=> b!1311018 (= res!870435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1311019 () Bool)

(declare-fun e!747919 () Bool)

(declare-fun tp_is_empty!35341 () Bool)

(assert (=> b!1311019 (= e!747919 tp_is_empty!35341)))

(declare-fun mapIsEmpty!54640 () Bool)

(declare-fun mapRes!54640 () Bool)

(assert (=> mapIsEmpty!54640 mapRes!54640))

(declare-fun b!1311020 () Bool)

(declare-fun res!870436 () Bool)

(assert (=> b!1311020 (=> (not res!870436) (not e!747918))))

(declare-datatypes ((V!52225 0))(
  ( (V!52226 (val!17745 Int)) )
))
(declare-datatypes ((ValueCell!16772 0))(
  ( (ValueCellFull!16772 (v!20370 V!52225)) (EmptyCell!16772) )
))
(declare-datatypes ((array!87635 0))(
  ( (array!87636 (arr!42293 (Array (_ BitVec 32) ValueCell!16772)) (size!42844 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87635)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1311020 (= res!870436 (and (= (size!42844 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42843 _keys!1628) (size!42844 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311021 () Bool)

(declare-fun res!870433 () Bool)

(assert (=> b!1311021 (=> (not res!870433) (not e!747918))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1311021 (= res!870433 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42843 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1311022 () Bool)

(declare-fun res!870434 () Bool)

(assert (=> b!1311022 (=> (not res!870434) (not e!747918))))

(declare-datatypes ((List!30199 0))(
  ( (Nil!30196) (Cons!30195 (h!31404 (_ BitVec 64)) (t!43812 List!30199)) )
))
(declare-fun arrayNoDuplicates!0 (array!87633 (_ BitVec 32) List!30199) Bool)

(assert (=> b!1311022 (= res!870434 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30196))))

(declare-fun b!1311023 () Bool)

(declare-fun e!747916 () Bool)

(assert (=> b!1311023 (= e!747916 tp_is_empty!35341)))

(declare-fun b!1311024 () Bool)

(assert (=> b!1311024 (= e!747918 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585367 () Bool)

(declare-fun zeroValue!1296 () V!52225)

(declare-fun minValue!1296 () V!52225)

(declare-datatypes ((tuple2!23034 0))(
  ( (tuple2!23035 (_1!11527 (_ BitVec 64)) (_2!11527 V!52225)) )
))
(declare-datatypes ((List!30200 0))(
  ( (Nil!30197) (Cons!30196 (h!31405 tuple2!23034) (t!43813 List!30200)) )
))
(declare-datatypes ((ListLongMap!20703 0))(
  ( (ListLongMap!20704 (toList!10367 List!30200)) )
))
(declare-fun contains!8453 (ListLongMap!20703 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5323 (array!87633 array!87635 (_ BitVec 32) (_ BitVec 32) V!52225 V!52225 (_ BitVec 32) Int) ListLongMap!20703)

(assert (=> b!1311024 (= lt!585367 (contains!8453 (getCurrentListMap!5323 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun res!870437 () Bool)

(assert (=> start!110812 (=> (not res!870437) (not e!747918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110812 (= res!870437 (validMask!0 mask!2040))))

(assert (=> start!110812 e!747918))

(assert (=> start!110812 tp!104155))

(declare-fun array_inv!31945 (array!87633) Bool)

(assert (=> start!110812 (array_inv!31945 _keys!1628)))

(assert (=> start!110812 true))

(assert (=> start!110812 tp_is_empty!35341))

(declare-fun e!747917 () Bool)

(declare-fun array_inv!31946 (array!87635) Bool)

(assert (=> start!110812 (and (array_inv!31946 _values!1354) e!747917)))

(declare-fun mapNonEmpty!54640 () Bool)

(declare-fun tp!104156 () Bool)

(assert (=> mapNonEmpty!54640 (= mapRes!54640 (and tp!104156 e!747919))))

(declare-fun mapValue!54640 () ValueCell!16772)

(declare-fun mapRest!54640 () (Array (_ BitVec 32) ValueCell!16772))

(declare-fun mapKey!54640 () (_ BitVec 32))

(assert (=> mapNonEmpty!54640 (= (arr!42293 _values!1354) (store mapRest!54640 mapKey!54640 mapValue!54640))))

(declare-fun b!1311025 () Bool)

(assert (=> b!1311025 (= e!747917 (and e!747916 mapRes!54640))))

(declare-fun condMapEmpty!54640 () Bool)

(declare-fun mapDefault!54640 () ValueCell!16772)

