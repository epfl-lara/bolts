; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111008 () Bool)

(assert start!111008)

(declare-fun b_free!29807 () Bool)

(declare-fun b_next!29807 () Bool)

(assert (=> start!111008 (= b_free!29807 (not b_next!29807))))

(declare-fun tp!104743 () Bool)

(declare-fun b_and!48025 () Bool)

(assert (=> start!111008 (= tp!104743 b_and!48025)))

(declare-fun b!1313721 () Bool)

(declare-fun res!872258 () Bool)

(declare-fun e!749388 () Bool)

(assert (=> b!1313721 (=> (not res!872258) (not e!749388))))

(declare-datatypes ((array!88013 0))(
  ( (array!88014 (arr!42482 (Array (_ BitVec 32) (_ BitVec 64))) (size!43033 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88013)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52485 0))(
  ( (V!52486 (val!17843 Int)) )
))
(declare-datatypes ((ValueCell!16870 0))(
  ( (ValueCellFull!16870 (v!20468 V!52485)) (EmptyCell!16870) )
))
(declare-datatypes ((array!88015 0))(
  ( (array!88016 (arr!42483 (Array (_ BitVec 32) ValueCell!16870)) (size!43034 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88015)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1313721 (= res!872258 (and (= (size!43034 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43033 _keys!1628) (size!43034 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1313722 () Bool)

(declare-fun e!749387 () Bool)

(declare-fun tp_is_empty!35537 () Bool)

(assert (=> b!1313722 (= e!749387 tp_is_empty!35537)))

(declare-fun b!1313723 () Bool)

(declare-fun e!749390 () Bool)

(assert (=> b!1313723 (= e!749390 tp_is_empty!35537)))

(declare-fun b!1313724 () Bool)

(assert (=> b!1313724 (= e!749388 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52485)

(declare-fun zeroValue!1296 () V!52485)

(declare-fun lt!585652 () Bool)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23178 0))(
  ( (tuple2!23179 (_1!11599 (_ BitVec 64)) (_2!11599 V!52485)) )
))
(declare-datatypes ((List!30341 0))(
  ( (Nil!30338) (Cons!30337 (h!31546 tuple2!23178) (t!43954 List!30341)) )
))
(declare-datatypes ((ListLongMap!20847 0))(
  ( (ListLongMap!20848 (toList!10439 List!30341)) )
))
(declare-fun contains!8525 (ListLongMap!20847 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5395 (array!88013 array!88015 (_ BitVec 32) (_ BitVec 32) V!52485 V!52485 (_ BitVec 32) Int) ListLongMap!20847)

(assert (=> b!1313724 (= lt!585652 (contains!8525 (getCurrentListMap!5395 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1313725 () Bool)

(declare-fun res!872256 () Bool)

(assert (=> b!1313725 (=> (not res!872256) (not e!749388))))

(declare-datatypes ((List!30342 0))(
  ( (Nil!30339) (Cons!30338 (h!31547 (_ BitVec 64)) (t!43955 List!30342)) )
))
(declare-fun arrayNoDuplicates!0 (array!88013 (_ BitVec 32) List!30342) Bool)

(assert (=> b!1313725 (= res!872256 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30339))))

(declare-fun b!1313726 () Bool)

(declare-fun res!872255 () Bool)

(assert (=> b!1313726 (=> (not res!872255) (not e!749388))))

(assert (=> b!1313726 (= res!872255 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43033 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313727 () Bool)

(declare-fun res!872254 () Bool)

(assert (=> b!1313727 (=> (not res!872254) (not e!749388))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88013 (_ BitVec 32)) Bool)

(assert (=> b!1313727 (= res!872254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1313728 () Bool)

(declare-fun e!749389 () Bool)

(declare-fun mapRes!54934 () Bool)

(assert (=> b!1313728 (= e!749389 (and e!749390 mapRes!54934))))

(declare-fun condMapEmpty!54934 () Bool)

(declare-fun mapDefault!54934 () ValueCell!16870)

