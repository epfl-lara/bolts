; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104824 () Bool)

(assert start!104824)

(declare-fun b_free!26593 () Bool)

(declare-fun b_next!26593 () Bool)

(assert (=> start!104824 (= b_free!26593 (not b_next!26593))))

(declare-fun tp!93270 () Bool)

(declare-fun b_and!44371 () Bool)

(assert (=> start!104824 (= tp!93270 b_and!44371)))

(declare-fun res!833301 () Bool)

(declare-fun e!708880 () Bool)

(assert (=> start!104824 (=> (not res!833301) (not e!708880))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104824 (= res!833301 (validMask!0 mask!1466))))

(assert (=> start!104824 e!708880))

(assert (=> start!104824 true))

(assert (=> start!104824 tp!93270))

(declare-fun tp_is_empty!31495 () Bool)

(assert (=> start!104824 tp_is_empty!31495))

(declare-datatypes ((array!80653 0))(
  ( (array!80654 (arr!38889 (Array (_ BitVec 32) (_ BitVec 64))) (size!39426 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80653)

(declare-fun array_inv!29609 (array!80653) Bool)

(assert (=> start!104824 (array_inv!29609 _keys!1118)))

(declare-datatypes ((V!47359 0))(
  ( (V!47360 (val!15810 Int)) )
))
(declare-datatypes ((ValueCell!14984 0))(
  ( (ValueCellFull!14984 (v!18506 V!47359)) (EmptyCell!14984) )
))
(declare-datatypes ((array!80655 0))(
  ( (array!80656 (arr!38890 (Array (_ BitVec 32) ValueCell!14984)) (size!39427 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80655)

(declare-fun e!708881 () Bool)

(declare-fun array_inv!29610 (array!80655) Bool)

(assert (=> start!104824 (and (array_inv!29610 _values!914) e!708881)))

(declare-fun b!1249018 () Bool)

(declare-fun e!708882 () Bool)

(assert (=> b!1249018 (= e!708882 tp_is_empty!31495)))

(declare-fun b!1249019 () Bool)

(declare-fun res!833304 () Bool)

(assert (=> b!1249019 (=> (not res!833304) (not e!708880))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1249019 (= res!833304 (and (= (size!39427 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39426 _keys!1118) (size!39427 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1249020 () Bool)

(declare-fun res!833303 () Bool)

(assert (=> b!1249020 (=> (not res!833303) (not e!708880))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80653 (_ BitVec 32)) Bool)

(assert (=> b!1249020 (= res!833303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1249021 () Bool)

(declare-fun e!708878 () Bool)

(declare-fun mapRes!49003 () Bool)

(assert (=> b!1249021 (= e!708881 (and e!708878 mapRes!49003))))

(declare-fun condMapEmpty!49003 () Bool)

(declare-fun mapDefault!49003 () ValueCell!14984)

