; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104788 () Bool)

(assert start!104788)

(declare-fun b_free!26557 () Bool)

(declare-fun b_next!26557 () Bool)

(assert (=> start!104788 (= b_free!26557 (not b_next!26557))))

(declare-fun tp!93162 () Bool)

(declare-fun b_and!44335 () Bool)

(assert (=> start!104788 (= tp!93162 b_and!44335)))

(declare-fun b!1248640 () Bool)

(declare-fun res!833087 () Bool)

(declare-fun e!708612 () Bool)

(assert (=> b!1248640 (=> (not res!833087) (not e!708612))))

(declare-datatypes ((array!80587 0))(
  ( (array!80588 (arr!38856 (Array (_ BitVec 32) (_ BitVec 64))) (size!39393 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80587)

(declare-datatypes ((List!27753 0))(
  ( (Nil!27750) (Cons!27749 (h!28958 (_ BitVec 64)) (t!41231 List!27753)) )
))
(declare-fun arrayNoDuplicates!0 (array!80587 (_ BitVec 32) List!27753) Bool)

(assert (=> b!1248640 (= res!833087 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27750))))

(declare-fun res!833086 () Bool)

(assert (=> start!104788 (=> (not res!833086) (not e!708612))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104788 (= res!833086 (validMask!0 mask!1466))))

(assert (=> start!104788 e!708612))

(assert (=> start!104788 true))

(assert (=> start!104788 tp!93162))

(declare-fun tp_is_empty!31459 () Bool)

(assert (=> start!104788 tp_is_empty!31459))

(declare-fun array_inv!29581 (array!80587) Bool)

(assert (=> start!104788 (array_inv!29581 _keys!1118)))

(declare-datatypes ((V!47311 0))(
  ( (V!47312 (val!15792 Int)) )
))
(declare-datatypes ((ValueCell!14966 0))(
  ( (ValueCellFull!14966 (v!18488 V!47311)) (EmptyCell!14966) )
))
(declare-datatypes ((array!80589 0))(
  ( (array!80590 (arr!38857 (Array (_ BitVec 32) ValueCell!14966)) (size!39394 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80589)

(declare-fun e!708608 () Bool)

(declare-fun array_inv!29582 (array!80589) Bool)

(assert (=> start!104788 (and (array_inv!29582 _values!914) e!708608)))

(declare-fun mapIsEmpty!48949 () Bool)

(declare-fun mapRes!48949 () Bool)

(assert (=> mapIsEmpty!48949 mapRes!48949))

(declare-fun b!1248641 () Bool)

(declare-fun e!708609 () Bool)

(assert (=> b!1248641 (= e!708609 tp_is_empty!31459)))

(declare-fun b!1248642 () Bool)

(assert (=> b!1248642 (= e!708608 (and e!708609 mapRes!48949))))

(declare-fun condMapEmpty!48949 () Bool)

(declare-fun mapDefault!48949 () ValueCell!14966)

