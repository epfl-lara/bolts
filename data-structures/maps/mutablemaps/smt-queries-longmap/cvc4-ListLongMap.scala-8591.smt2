; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104816 () Bool)

(assert start!104816)

(declare-fun b_free!26585 () Bool)

(declare-fun b_next!26585 () Bool)

(assert (=> start!104816 (= b_free!26585 (not b_next!26585))))

(declare-fun tp!93245 () Bool)

(declare-fun b_and!44363 () Bool)

(assert (=> start!104816 (= tp!93245 b_and!44363)))

(declare-fun res!833256 () Bool)

(declare-fun e!708818 () Bool)

(assert (=> start!104816 (=> (not res!833256) (not e!708818))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104816 (= res!833256 (validMask!0 mask!1466))))

(assert (=> start!104816 e!708818))

(assert (=> start!104816 true))

(assert (=> start!104816 tp!93245))

(declare-fun tp_is_empty!31487 () Bool)

(assert (=> start!104816 tp_is_empty!31487))

(declare-datatypes ((array!80639 0))(
  ( (array!80640 (arr!38882 (Array (_ BitVec 32) (_ BitVec 64))) (size!39419 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80639)

(declare-fun array_inv!29603 (array!80639) Bool)

(assert (=> start!104816 (array_inv!29603 _keys!1118)))

(declare-datatypes ((V!47347 0))(
  ( (V!47348 (val!15806 Int)) )
))
(declare-datatypes ((ValueCell!14980 0))(
  ( (ValueCellFull!14980 (v!18502 V!47347)) (EmptyCell!14980) )
))
(declare-datatypes ((array!80641 0))(
  ( (array!80642 (arr!38883 (Array (_ BitVec 32) ValueCell!14980)) (size!39420 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80641)

(declare-fun e!708821 () Bool)

(declare-fun array_inv!29604 (array!80641) Bool)

(assert (=> start!104816 (and (array_inv!29604 _values!914) e!708821)))

(declare-fun mapNonEmpty!48991 () Bool)

(declare-fun mapRes!48991 () Bool)

(declare-fun tp!93246 () Bool)

(declare-fun e!708820 () Bool)

(assert (=> mapNonEmpty!48991 (= mapRes!48991 (and tp!93246 e!708820))))

(declare-fun mapKey!48991 () (_ BitVec 32))

(declare-fun mapRest!48991 () (Array (_ BitVec 32) ValueCell!14980))

(declare-fun mapValue!48991 () ValueCell!14980)

(assert (=> mapNonEmpty!48991 (= (arr!38883 _values!914) (store mapRest!48991 mapKey!48991 mapValue!48991))))

(declare-fun b!1248934 () Bool)

(assert (=> b!1248934 (= e!708820 tp_is_empty!31487)))

(declare-fun b!1248935 () Bool)

(declare-fun res!833253 () Bool)

(assert (=> b!1248935 (=> (not res!833253) (not e!708818))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80639 (_ BitVec 32)) Bool)

(assert (=> b!1248935 (= res!833253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248936 () Bool)

(assert (=> b!1248936 (= e!708818 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47347)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47347)

(declare-datatypes ((tuple2!20510 0))(
  ( (tuple2!20511 (_1!10265 (_ BitVec 64)) (_2!10265 V!47347)) )
))
(declare-datatypes ((List!27771 0))(
  ( (Nil!27768) (Cons!27767 (h!28976 tuple2!20510) (t!41249 List!27771)) )
))
(declare-datatypes ((ListLongMap!18395 0))(
  ( (ListLongMap!18396 (toList!9213 List!27771)) )
))
(declare-fun lt!563520 () ListLongMap!18395)

(declare-fun getCurrentListMapNoExtraKeys!5596 (array!80639 array!80641 (_ BitVec 32) (_ BitVec 32) V!47347 V!47347 (_ BitVec 32) Int) ListLongMap!18395)

(assert (=> b!1248936 (= lt!563520 (getCurrentListMapNoExtraKeys!5596 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun minValueBefore!43 () V!47347)

(declare-fun lt!563519 () ListLongMap!18395)

(assert (=> b!1248936 (= lt!563519 (getCurrentListMapNoExtraKeys!5596 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!48991 () Bool)

(assert (=> mapIsEmpty!48991 mapRes!48991))

(declare-fun b!1248937 () Bool)

(declare-fun e!708822 () Bool)

(assert (=> b!1248937 (= e!708822 tp_is_empty!31487)))

(declare-fun b!1248938 () Bool)

(assert (=> b!1248938 (= e!708821 (and e!708822 mapRes!48991))))

(declare-fun condMapEmpty!48991 () Bool)

(declare-fun mapDefault!48991 () ValueCell!14980)

