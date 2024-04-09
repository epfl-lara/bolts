; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110990 () Bool)

(assert start!110990)

(declare-fun b_free!29789 () Bool)

(declare-fun b_next!29789 () Bool)

(assert (=> start!110990 (= b_free!29789 (not b_next!29789))))

(declare-fun tp!104689 () Bool)

(declare-fun b_and!48007 () Bool)

(assert (=> start!110990 (= tp!104689 b_and!48007)))

(declare-fun b!1313505 () Bool)

(declare-fun e!749254 () Bool)

(assert (=> b!1313505 (= e!749254 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87979 0))(
  ( (array!87980 (arr!42465 (Array (_ BitVec 32) (_ BitVec 64))) (size!43016 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87979)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52461 0))(
  ( (V!52462 (val!17834 Int)) )
))
(declare-fun minValue!1296 () V!52461)

(declare-datatypes ((ValueCell!16861 0))(
  ( (ValueCellFull!16861 (v!20459 V!52461)) (EmptyCell!16861) )
))
(declare-datatypes ((array!87981 0))(
  ( (array!87982 (arr!42466 (Array (_ BitVec 32) ValueCell!16861)) (size!43017 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87981)

(declare-fun zeroValue!1296 () V!52461)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun lt!585625 () Bool)

(declare-datatypes ((tuple2!23162 0))(
  ( (tuple2!23163 (_1!11591 (_ BitVec 64)) (_2!11591 V!52461)) )
))
(declare-datatypes ((List!30326 0))(
  ( (Nil!30323) (Cons!30322 (h!31531 tuple2!23162) (t!43939 List!30326)) )
))
(declare-datatypes ((ListLongMap!20831 0))(
  ( (ListLongMap!20832 (toList!10431 List!30326)) )
))
(declare-fun contains!8517 (ListLongMap!20831 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5387 (array!87979 array!87981 (_ BitVec 32) (_ BitVec 32) V!52461 V!52461 (_ BitVec 32) Int) ListLongMap!20831)

(assert (=> b!1313505 (= lt!585625 (contains!8517 (getCurrentListMap!5387 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1313506 () Bool)

(declare-fun e!749252 () Bool)

(declare-fun tp_is_empty!35519 () Bool)

(assert (=> b!1313506 (= e!749252 tp_is_empty!35519)))

(declare-fun mapNonEmpty!54907 () Bool)

(declare-fun mapRes!54907 () Bool)

(declare-fun tp!104690 () Bool)

(declare-fun e!749251 () Bool)

(assert (=> mapNonEmpty!54907 (= mapRes!54907 (and tp!104690 e!749251))))

(declare-fun mapValue!54907 () ValueCell!16861)

(declare-fun mapKey!54907 () (_ BitVec 32))

(declare-fun mapRest!54907 () (Array (_ BitVec 32) ValueCell!16861))

(assert (=> mapNonEmpty!54907 (= (arr!42466 _values!1354) (store mapRest!54907 mapKey!54907 mapValue!54907))))

(declare-fun mapIsEmpty!54907 () Bool)

(assert (=> mapIsEmpty!54907 mapRes!54907))

(declare-fun b!1313507 () Bool)

(assert (=> b!1313507 (= e!749251 tp_is_empty!35519)))

(declare-fun b!1313508 () Bool)

(declare-fun res!872119 () Bool)

(assert (=> b!1313508 (=> (not res!872119) (not e!749254))))

(declare-datatypes ((List!30327 0))(
  ( (Nil!30324) (Cons!30323 (h!31532 (_ BitVec 64)) (t!43940 List!30327)) )
))
(declare-fun arrayNoDuplicates!0 (array!87979 (_ BitVec 32) List!30327) Bool)

(assert (=> b!1313508 (= res!872119 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30324))))

(declare-fun b!1313510 () Bool)

(declare-fun res!872121 () Bool)

(assert (=> b!1313510 (=> (not res!872121) (not e!749254))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87979 (_ BitVec 32)) Bool)

(assert (=> b!1313510 (= res!872121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1313509 () Bool)

(declare-fun e!749255 () Bool)

(assert (=> b!1313509 (= e!749255 (and e!749252 mapRes!54907))))

(declare-fun condMapEmpty!54907 () Bool)

(declare-fun mapDefault!54907 () ValueCell!16861)

