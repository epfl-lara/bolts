; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110906 () Bool)

(assert start!110906)

(declare-fun b_free!29705 () Bool)

(declare-fun b_next!29705 () Bool)

(assert (=> start!110906 (= b_free!29705 (not b_next!29705))))

(declare-fun tp!104438 () Bool)

(declare-fun b_and!47923 () Bool)

(assert (=> start!110906 (= tp!104438 b_and!47923)))

(declare-fun b!1312470 () Bool)

(declare-fun e!748621 () Bool)

(declare-fun tp_is_empty!35435 () Bool)

(assert (=> b!1312470 (= e!748621 tp_is_empty!35435)))

(declare-fun res!871464 () Bool)

(declare-fun e!748625 () Bool)

(assert (=> start!110906 (=> (not res!871464) (not e!748625))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110906 (= res!871464 (validMask!0 mask!2040))))

(assert (=> start!110906 e!748625))

(assert (=> start!110906 tp!104438))

(declare-datatypes ((array!87821 0))(
  ( (array!87822 (arr!42386 (Array (_ BitVec 32) (_ BitVec 64))) (size!42937 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87821)

(declare-fun array_inv!32003 (array!87821) Bool)

(assert (=> start!110906 (array_inv!32003 _keys!1628)))

(assert (=> start!110906 true))

(assert (=> start!110906 tp_is_empty!35435))

(declare-datatypes ((V!52349 0))(
  ( (V!52350 (val!17792 Int)) )
))
(declare-datatypes ((ValueCell!16819 0))(
  ( (ValueCellFull!16819 (v!20417 V!52349)) (EmptyCell!16819) )
))
(declare-datatypes ((array!87823 0))(
  ( (array!87824 (arr!42387 (Array (_ BitVec 32) ValueCell!16819)) (size!42938 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87823)

(declare-fun e!748622 () Bool)

(declare-fun array_inv!32004 (array!87823) Bool)

(assert (=> start!110906 (and (array_inv!32004 _values!1354) e!748622)))

(declare-fun b!1312471 () Bool)

(declare-fun res!871465 () Bool)

(assert (=> b!1312471 (=> (not res!871465) (not e!748625))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1312471 (= res!871465 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42937 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!54781 () Bool)

(declare-fun mapRes!54781 () Bool)

(assert (=> mapIsEmpty!54781 mapRes!54781))

(declare-fun b!1312472 () Bool)

(declare-fun res!871462 () Bool)

(assert (=> b!1312472 (=> (not res!871462) (not e!748625))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87821 (_ BitVec 32)) Bool)

(assert (=> b!1312472 (= res!871462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1312473 () Bool)

(assert (=> b!1312473 (= e!748625 false)))

(declare-fun minValue!1296 () V!52349)

(declare-fun zeroValue!1296 () V!52349)

(declare-fun lt!585508 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((tuple2!23112 0))(
  ( (tuple2!23113 (_1!11566 (_ BitVec 64)) (_2!11566 V!52349)) )
))
(declare-datatypes ((List!30271 0))(
  ( (Nil!30268) (Cons!30267 (h!31476 tuple2!23112) (t!43884 List!30271)) )
))
(declare-datatypes ((ListLongMap!20781 0))(
  ( (ListLongMap!20782 (toList!10406 List!30271)) )
))
(declare-fun contains!8492 (ListLongMap!20781 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5362 (array!87821 array!87823 (_ BitVec 32) (_ BitVec 32) V!52349 V!52349 (_ BitVec 32) Int) ListLongMap!20781)

(assert (=> b!1312473 (= lt!585508 (contains!8492 (getCurrentListMap!5362 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1312474 () Bool)

(declare-fun e!748623 () Bool)

(assert (=> b!1312474 (= e!748623 tp_is_empty!35435)))

(declare-fun mapNonEmpty!54781 () Bool)

(declare-fun tp!104437 () Bool)

(assert (=> mapNonEmpty!54781 (= mapRes!54781 (and tp!104437 e!748623))))

(declare-fun mapKey!54781 () (_ BitVec 32))

(declare-fun mapValue!54781 () ValueCell!16819)

(declare-fun mapRest!54781 () (Array (_ BitVec 32) ValueCell!16819))

(assert (=> mapNonEmpty!54781 (= (arr!42387 _values!1354) (store mapRest!54781 mapKey!54781 mapValue!54781))))

(declare-fun b!1312475 () Bool)

(declare-fun res!871463 () Bool)

(assert (=> b!1312475 (=> (not res!871463) (not e!748625))))

(declare-datatypes ((List!30272 0))(
  ( (Nil!30269) (Cons!30268 (h!31477 (_ BitVec 64)) (t!43885 List!30272)) )
))
(declare-fun arrayNoDuplicates!0 (array!87821 (_ BitVec 32) List!30272) Bool)

(assert (=> b!1312475 (= res!871463 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30269))))

(declare-fun b!1312476 () Bool)

(declare-fun res!871466 () Bool)

(assert (=> b!1312476 (=> (not res!871466) (not e!748625))))

(assert (=> b!1312476 (= res!871466 (and (= (size!42938 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42937 _keys!1628) (size!42938 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1312477 () Bool)

(assert (=> b!1312477 (= e!748622 (and e!748621 mapRes!54781))))

(declare-fun condMapEmpty!54781 () Bool)

(declare-fun mapDefault!54781 () ValueCell!16819)

