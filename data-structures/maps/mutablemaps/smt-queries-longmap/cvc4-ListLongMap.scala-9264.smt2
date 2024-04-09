; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110972 () Bool)

(assert start!110972)

(declare-fun b_free!29771 () Bool)

(declare-fun b_next!29771 () Bool)

(assert (=> start!110972 (= b_free!29771 (not b_next!29771))))

(declare-fun tp!104636 () Bool)

(declare-fun b_and!47989 () Bool)

(assert (=> start!110972 (= tp!104636 b_and!47989)))

(declare-fun res!871985 () Bool)

(declare-fun e!749120 () Bool)

(assert (=> start!110972 (=> (not res!871985) (not e!749120))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110972 (= res!871985 (validMask!0 mask!2040))))

(assert (=> start!110972 e!749120))

(assert (=> start!110972 tp!104636))

(declare-datatypes ((array!87947 0))(
  ( (array!87948 (arr!42449 (Array (_ BitVec 32) (_ BitVec 64))) (size!43000 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87947)

(declare-fun array_inv!32047 (array!87947) Bool)

(assert (=> start!110972 (array_inv!32047 _keys!1628)))

(assert (=> start!110972 true))

(declare-fun tp_is_empty!35501 () Bool)

(assert (=> start!110972 tp_is_empty!35501))

(declare-datatypes ((V!52437 0))(
  ( (V!52438 (val!17825 Int)) )
))
(declare-datatypes ((ValueCell!16852 0))(
  ( (ValueCellFull!16852 (v!20450 V!52437)) (EmptyCell!16852) )
))
(declare-datatypes ((array!87949 0))(
  ( (array!87950 (arr!42450 (Array (_ BitVec 32) ValueCell!16852)) (size!43001 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87949)

(declare-fun e!749119 () Bool)

(declare-fun array_inv!32048 (array!87949) Bool)

(assert (=> start!110972 (and (array_inv!32048 _values!1354) e!749119)))

(declare-fun b!1313289 () Bool)

(declare-fun res!871986 () Bool)

(assert (=> b!1313289 (=> (not res!871986) (not e!749120))))

(declare-datatypes ((List!30316 0))(
  ( (Nil!30313) (Cons!30312 (h!31521 (_ BitVec 64)) (t!43929 List!30316)) )
))
(declare-fun arrayNoDuplicates!0 (array!87947 (_ BitVec 32) List!30316) Bool)

(assert (=> b!1313289 (= res!871986 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30313))))

(declare-fun b!1313290 () Bool)

(declare-fun res!871988 () Bool)

(assert (=> b!1313290 (=> (not res!871988) (not e!749120))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1313290 (= res!871988 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43000 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313291 () Bool)

(declare-fun e!749117 () Bool)

(assert (=> b!1313291 (= e!749117 tp_is_empty!35501)))

(declare-fun b!1313292 () Bool)

(declare-fun e!749116 () Bool)

(assert (=> b!1313292 (= e!749116 tp_is_empty!35501)))

(declare-fun b!1313293 () Bool)

(assert (=> b!1313293 (= e!749120 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585598 () Bool)

(declare-fun minValue!1296 () V!52437)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun zeroValue!1296 () V!52437)

(declare-datatypes ((tuple2!23154 0))(
  ( (tuple2!23155 (_1!11587 (_ BitVec 64)) (_2!11587 V!52437)) )
))
(declare-datatypes ((List!30317 0))(
  ( (Nil!30314) (Cons!30313 (h!31522 tuple2!23154) (t!43930 List!30317)) )
))
(declare-datatypes ((ListLongMap!20823 0))(
  ( (ListLongMap!20824 (toList!10427 List!30317)) )
))
(declare-fun contains!8513 (ListLongMap!20823 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5383 (array!87947 array!87949 (_ BitVec 32) (_ BitVec 32) V!52437 V!52437 (_ BitVec 32) Int) ListLongMap!20823)

(assert (=> b!1313293 (= lt!585598 (contains!8513 (getCurrentListMap!5383 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1313294 () Bool)

(declare-fun res!871987 () Bool)

(assert (=> b!1313294 (=> (not res!871987) (not e!749120))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87947 (_ BitVec 32)) Bool)

(assert (=> b!1313294 (= res!871987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1313295 () Bool)

(declare-fun res!871984 () Bool)

(assert (=> b!1313295 (=> (not res!871984) (not e!749120))))

(assert (=> b!1313295 (= res!871984 (and (= (size!43001 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43000 _keys!1628) (size!43001 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!54880 () Bool)

(declare-fun mapRes!54880 () Bool)

(assert (=> mapIsEmpty!54880 mapRes!54880))

(declare-fun b!1313296 () Bool)

(assert (=> b!1313296 (= e!749119 (and e!749117 mapRes!54880))))

(declare-fun condMapEmpty!54880 () Bool)

(declare-fun mapDefault!54880 () ValueCell!16852)

