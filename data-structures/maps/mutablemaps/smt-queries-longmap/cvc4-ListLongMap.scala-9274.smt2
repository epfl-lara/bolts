; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111032 () Bool)

(assert start!111032)

(declare-fun b_free!29831 () Bool)

(declare-fun b_next!29831 () Bool)

(assert (=> start!111032 (= b_free!29831 (not b_next!29831))))

(declare-fun tp!104815 () Bool)

(declare-fun b_and!48049 () Bool)

(assert (=> start!111032 (= tp!104815 b_and!48049)))

(declare-fun b!1314009 () Bool)

(declare-fun res!872436 () Bool)

(declare-fun e!749566 () Bool)

(assert (=> b!1314009 (=> (not res!872436) (not e!749566))))

(declare-datatypes ((array!88059 0))(
  ( (array!88060 (arr!42505 (Array (_ BitVec 32) (_ BitVec 64))) (size!43056 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88059)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52517 0))(
  ( (V!52518 (val!17855 Int)) )
))
(declare-datatypes ((ValueCell!16882 0))(
  ( (ValueCellFull!16882 (v!20480 V!52517)) (EmptyCell!16882) )
))
(declare-datatypes ((array!88061 0))(
  ( (array!88062 (arr!42506 (Array (_ BitVec 32) ValueCell!16882)) (size!43057 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88061)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1314009 (= res!872436 (and (= (size!43057 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43056 _keys!1628) (size!43057 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1314010 () Bool)

(declare-fun res!872434 () Bool)

(assert (=> b!1314010 (=> (not res!872434) (not e!749566))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88059 (_ BitVec 32)) Bool)

(assert (=> b!1314010 (= res!872434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54970 () Bool)

(declare-fun mapRes!54970 () Bool)

(assert (=> mapIsEmpty!54970 mapRes!54970))

(declare-fun b!1314011 () Bool)

(declare-fun e!749567 () Bool)

(declare-fun tp_is_empty!35561 () Bool)

(assert (=> b!1314011 (= e!749567 tp_is_empty!35561)))

(declare-fun mapNonEmpty!54970 () Bool)

(declare-fun tp!104816 () Bool)

(declare-fun e!749568 () Bool)

(assert (=> mapNonEmpty!54970 (= mapRes!54970 (and tp!104816 e!749568))))

(declare-fun mapValue!54970 () ValueCell!16882)

(declare-fun mapKey!54970 () (_ BitVec 32))

(declare-fun mapRest!54970 () (Array (_ BitVec 32) ValueCell!16882))

(assert (=> mapNonEmpty!54970 (= (arr!42506 _values!1354) (store mapRest!54970 mapKey!54970 mapValue!54970))))

(declare-fun b!1314012 () Bool)

(assert (=> b!1314012 (= e!749566 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52517)

(declare-fun zeroValue!1296 () V!52517)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun lt!585688 () Bool)

(declare-datatypes ((tuple2!23194 0))(
  ( (tuple2!23195 (_1!11607 (_ BitVec 64)) (_2!11607 V!52517)) )
))
(declare-datatypes ((List!30356 0))(
  ( (Nil!30353) (Cons!30352 (h!31561 tuple2!23194) (t!43969 List!30356)) )
))
(declare-datatypes ((ListLongMap!20863 0))(
  ( (ListLongMap!20864 (toList!10447 List!30356)) )
))
(declare-fun contains!8533 (ListLongMap!20863 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5403 (array!88059 array!88061 (_ BitVec 32) (_ BitVec 32) V!52517 V!52517 (_ BitVec 32) Int) ListLongMap!20863)

(assert (=> b!1314012 (= lt!585688 (contains!8533 (getCurrentListMap!5403 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun res!872438 () Bool)

(assert (=> start!111032 (=> (not res!872438) (not e!749566))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111032 (= res!872438 (validMask!0 mask!2040))))

(assert (=> start!111032 e!749566))

(assert (=> start!111032 tp!104815))

(declare-fun array_inv!32083 (array!88059) Bool)

(assert (=> start!111032 (array_inv!32083 _keys!1628)))

(assert (=> start!111032 true))

(assert (=> start!111032 tp_is_empty!35561))

(declare-fun e!749570 () Bool)

(declare-fun array_inv!32084 (array!88061) Bool)

(assert (=> start!111032 (and (array_inv!32084 _values!1354) e!749570)))

(declare-fun b!1314013 () Bool)

(declare-fun res!872437 () Bool)

(assert (=> b!1314013 (=> (not res!872437) (not e!749566))))

(declare-datatypes ((List!30357 0))(
  ( (Nil!30354) (Cons!30353 (h!31562 (_ BitVec 64)) (t!43970 List!30357)) )
))
(declare-fun arrayNoDuplicates!0 (array!88059 (_ BitVec 32) List!30357) Bool)

(assert (=> b!1314013 (= res!872437 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30354))))

(declare-fun b!1314014 () Bool)

(assert (=> b!1314014 (= e!749570 (and e!749567 mapRes!54970))))

(declare-fun condMapEmpty!54970 () Bool)

(declare-fun mapDefault!54970 () ValueCell!16882)

