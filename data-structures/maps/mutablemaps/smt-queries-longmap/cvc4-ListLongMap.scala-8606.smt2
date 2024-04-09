; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104920 () Bool)

(assert start!104920)

(declare-fun b_free!26675 () Bool)

(declare-fun b_next!26675 () Bool)

(assert (=> start!104920 (= b_free!26675 (not b_next!26675))))

(declare-fun tp!93519 () Bool)

(declare-fun b_and!44461 () Bool)

(assert (=> start!104920 (= tp!93519 b_and!44461)))

(declare-fun b!1250008 () Bool)

(declare-fun e!709596 () Bool)

(declare-fun tp_is_empty!31577 () Bool)

(assert (=> b!1250008 (= e!709596 tp_is_empty!31577)))

(declare-fun b!1250009 () Bool)

(declare-fun res!833867 () Bool)

(declare-fun e!709591 () Bool)

(assert (=> b!1250009 (=> (not res!833867) (not e!709591))))

(declare-datatypes ((array!80807 0))(
  ( (array!80808 (arr!38965 (Array (_ BitVec 32) (_ BitVec 64))) (size!39502 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80807)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80807 (_ BitVec 32)) Bool)

(assert (=> b!1250009 (= res!833867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1250010 () Bool)

(declare-fun e!709593 () Bool)

(declare-fun e!709595 () Bool)

(assert (=> b!1250010 (= e!709593 e!709595)))

(declare-fun res!833871 () Bool)

(assert (=> b!1250010 (=> res!833871 e!709595)))

(declare-datatypes ((V!47467 0))(
  ( (V!47468 (val!15851 Int)) )
))
(declare-datatypes ((tuple2!20564 0))(
  ( (tuple2!20565 (_1!10292 (_ BitVec 64)) (_2!10292 V!47467)) )
))
(declare-datatypes ((List!27824 0))(
  ( (Nil!27821) (Cons!27820 (h!29029 tuple2!20564) (t!41304 List!27824)) )
))
(declare-datatypes ((ListLongMap!18449 0))(
  ( (ListLongMap!18450 (toList!9240 List!27824)) )
))
(declare-fun lt!563980 () ListLongMap!18449)

(declare-fun contains!7496 (ListLongMap!18449 (_ BitVec 64)) Bool)

(assert (=> b!1250010 (= res!833871 (contains!7496 lt!563980 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47467)

(declare-datatypes ((ValueCell!15025 0))(
  ( (ValueCellFull!15025 (v!18547 V!47467)) (EmptyCell!15025) )
))
(declare-datatypes ((array!80809 0))(
  ( (array!80810 (arr!38966 (Array (_ BitVec 32) ValueCell!15025)) (size!39503 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80809)

(declare-fun minValueBefore!43 () V!47467)

(declare-fun getCurrentListMap!4462 (array!80807 array!80809 (_ BitVec 32) (_ BitVec 32) V!47467 V!47467 (_ BitVec 32) Int) ListLongMap!18449)

(assert (=> b!1250010 (= lt!563980 (getCurrentListMap!4462 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49129 () Bool)

(declare-fun mapRes!49129 () Bool)

(assert (=> mapIsEmpty!49129 mapRes!49129))

(declare-fun b!1250011 () Bool)

(declare-fun res!833868 () Bool)

(assert (=> b!1250011 (=> (not res!833868) (not e!709591))))

(declare-datatypes ((List!27825 0))(
  ( (Nil!27822) (Cons!27821 (h!29030 (_ BitVec 64)) (t!41305 List!27825)) )
))
(declare-fun arrayNoDuplicates!0 (array!80807 (_ BitVec 32) List!27825) Bool)

(assert (=> b!1250011 (= res!833868 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27822))))

(declare-fun b!1250012 () Bool)

(declare-fun e!709592 () Bool)

(declare-fun e!709597 () Bool)

(assert (=> b!1250012 (= e!709592 (and e!709597 mapRes!49129))))

(declare-fun condMapEmpty!49129 () Bool)

(declare-fun mapDefault!49129 () ValueCell!15025)

