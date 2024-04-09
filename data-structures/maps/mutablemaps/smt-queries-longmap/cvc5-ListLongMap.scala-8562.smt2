; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104578 () Bool)

(assert start!104578)

(declare-fun b!1246927 () Bool)

(declare-fun res!832169 () Bool)

(declare-fun e!707323 () Bool)

(assert (=> b!1246927 (=> (not res!832169) (not e!707323))))

(declare-datatypes ((array!80291 0))(
  ( (array!80292 (arr!38714 (Array (_ BitVec 32) (_ BitVec 64))) (size!39251 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80291)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80291 (_ BitVec 32)) Bool)

(assert (=> b!1246927 (= res!832169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1246928 () Bool)

(declare-fun e!707322 () Bool)

(declare-fun tp_is_empty!31309 () Bool)

(assert (=> b!1246928 (= e!707322 tp_is_empty!31309)))

(declare-fun b!1246929 () Bool)

(declare-fun res!832170 () Bool)

(assert (=> b!1246929 (=> (not res!832170) (not e!707323))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!47111 0))(
  ( (V!47112 (val!15717 Int)) )
))
(declare-datatypes ((ValueCell!14891 0))(
  ( (ValueCellFull!14891 (v!18412 V!47111)) (EmptyCell!14891) )
))
(declare-datatypes ((array!80293 0))(
  ( (array!80294 (arr!38715 (Array (_ BitVec 32) ValueCell!14891)) (size!39252 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80293)

(assert (=> b!1246929 (= res!832170 (and (= (size!39252 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39251 _keys!1118) (size!39252 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!48706 () Bool)

(declare-fun mapRes!48706 () Bool)

(assert (=> mapIsEmpty!48706 mapRes!48706))

(declare-fun b!1246930 () Bool)

(assert (=> b!1246930 (= e!707323 (bvsgt #b00000000000000000000000000000000 (size!39251 _keys!1118)))))

(declare-fun b!1246931 () Bool)

(declare-fun e!707319 () Bool)

(assert (=> b!1246931 (= e!707319 tp_is_empty!31309)))

(declare-fun mapNonEmpty!48706 () Bool)

(declare-fun tp!92808 () Bool)

(assert (=> mapNonEmpty!48706 (= mapRes!48706 (and tp!92808 e!707319))))

(declare-fun mapValue!48706 () ValueCell!14891)

(declare-fun mapRest!48706 () (Array (_ BitVec 32) ValueCell!14891))

(declare-fun mapKey!48706 () (_ BitVec 32))

(assert (=> mapNonEmpty!48706 (= (arr!38715 _values!914) (store mapRest!48706 mapKey!48706 mapValue!48706))))

(declare-fun b!1246932 () Bool)

(declare-fun e!707321 () Bool)

(assert (=> b!1246932 (= e!707321 (and e!707322 mapRes!48706))))

(declare-fun condMapEmpty!48706 () Bool)

(declare-fun mapDefault!48706 () ValueCell!14891)

