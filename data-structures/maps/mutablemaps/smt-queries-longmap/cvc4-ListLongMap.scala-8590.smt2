; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104810 () Bool)

(assert start!104810)

(declare-fun b_free!26579 () Bool)

(declare-fun b_next!26579 () Bool)

(assert (=> start!104810 (= b_free!26579 (not b_next!26579))))

(declare-fun tp!93227 () Bool)

(declare-fun b_and!44357 () Bool)

(assert (=> start!104810 (= tp!93227 b_and!44357)))

(declare-fun mapIsEmpty!48982 () Bool)

(declare-fun mapRes!48982 () Bool)

(assert (=> mapIsEmpty!48982 mapRes!48982))

(declare-fun b!1248871 () Bool)

(declare-fun res!833220 () Bool)

(declare-fun e!708773 () Bool)

(assert (=> b!1248871 (=> (not res!833220) (not e!708773))))

(declare-datatypes ((array!80627 0))(
  ( (array!80628 (arr!38876 (Array (_ BitVec 32) (_ BitVec 64))) (size!39413 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80627)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80627 (_ BitVec 32)) Bool)

(assert (=> b!1248871 (= res!833220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248872 () Bool)

(declare-fun res!833218 () Bool)

(assert (=> b!1248872 (=> (not res!833218) (not e!708773))))

(declare-datatypes ((List!27766 0))(
  ( (Nil!27763) (Cons!27762 (h!28971 (_ BitVec 64)) (t!41244 List!27766)) )
))
(declare-fun arrayNoDuplicates!0 (array!80627 (_ BitVec 32) List!27766) Bool)

(assert (=> b!1248872 (= res!833218 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27763))))

(declare-fun b!1248873 () Bool)

(declare-fun res!833217 () Bool)

(assert (=> b!1248873 (=> (not res!833217) (not e!708773))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!47339 0))(
  ( (V!47340 (val!15803 Int)) )
))
(declare-datatypes ((ValueCell!14977 0))(
  ( (ValueCellFull!14977 (v!18499 V!47339)) (EmptyCell!14977) )
))
(declare-datatypes ((array!80629 0))(
  ( (array!80630 (arr!38877 (Array (_ BitVec 32) ValueCell!14977)) (size!39414 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80629)

(assert (=> b!1248873 (= res!833217 (and (= (size!39414 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39413 _keys!1118) (size!39414 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!833219 () Bool)

(assert (=> start!104810 (=> (not res!833219) (not e!708773))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104810 (= res!833219 (validMask!0 mask!1466))))

(assert (=> start!104810 e!708773))

(assert (=> start!104810 true))

(assert (=> start!104810 tp!93227))

(declare-fun tp_is_empty!31481 () Bool)

(assert (=> start!104810 tp_is_empty!31481))

(declare-fun array_inv!29597 (array!80627) Bool)

(assert (=> start!104810 (array_inv!29597 _keys!1118)))

(declare-fun e!708776 () Bool)

(declare-fun array_inv!29598 (array!80629) Bool)

(assert (=> start!104810 (and (array_inv!29598 _values!914) e!708776)))

(declare-fun b!1248874 () Bool)

(declare-fun e!708777 () Bool)

(assert (=> b!1248874 (= e!708776 (and e!708777 mapRes!48982))))

(declare-fun condMapEmpty!48982 () Bool)

(declare-fun mapDefault!48982 () ValueCell!14977)

