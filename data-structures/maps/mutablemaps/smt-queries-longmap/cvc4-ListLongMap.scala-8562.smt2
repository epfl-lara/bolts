; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104582 () Bool)

(assert start!104582)

(declare-fun b!1246963 () Bool)

(declare-fun e!707350 () Bool)

(declare-fun tp_is_empty!31313 () Bool)

(assert (=> b!1246963 (= e!707350 tp_is_empty!31313)))

(declare-fun b!1246964 () Bool)

(declare-fun res!832189 () Bool)

(declare-fun e!707352 () Bool)

(assert (=> b!1246964 (=> (not res!832189) (not e!707352))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80299 0))(
  ( (array!80300 (arr!38718 (Array (_ BitVec 32) (_ BitVec 64))) (size!39255 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80299)

(declare-datatypes ((V!47115 0))(
  ( (V!47116 (val!15719 Int)) )
))
(declare-datatypes ((ValueCell!14893 0))(
  ( (ValueCellFull!14893 (v!18414 V!47115)) (EmptyCell!14893) )
))
(declare-datatypes ((array!80301 0))(
  ( (array!80302 (arr!38719 (Array (_ BitVec 32) ValueCell!14893)) (size!39256 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80301)

(assert (=> b!1246964 (= res!832189 (and (= (size!39256 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39255 _keys!1118) (size!39256 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!832188 () Bool)

(assert (=> start!104582 (=> (not res!832188) (not e!707352))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104582 (= res!832188 (validMask!0 mask!1466))))

(assert (=> start!104582 e!707352))

(assert (=> start!104582 true))

(declare-fun array_inv!29491 (array!80299) Bool)

(assert (=> start!104582 (array_inv!29491 _keys!1118)))

(declare-fun e!707349 () Bool)

(declare-fun array_inv!29492 (array!80301) Bool)

(assert (=> start!104582 (and (array_inv!29492 _values!914) e!707349)))

(declare-fun b!1246965 () Bool)

(assert (=> b!1246965 (= e!707352 (bvsgt #b00000000000000000000000000000000 (size!39255 _keys!1118)))))

(declare-fun mapIsEmpty!48712 () Bool)

(declare-fun mapRes!48712 () Bool)

(assert (=> mapIsEmpty!48712 mapRes!48712))

(declare-fun mapNonEmpty!48712 () Bool)

(declare-fun tp!92814 () Bool)

(assert (=> mapNonEmpty!48712 (= mapRes!48712 (and tp!92814 e!707350))))

(declare-fun mapKey!48712 () (_ BitVec 32))

(declare-fun mapValue!48712 () ValueCell!14893)

(declare-fun mapRest!48712 () (Array (_ BitVec 32) ValueCell!14893))

(assert (=> mapNonEmpty!48712 (= (arr!38719 _values!914) (store mapRest!48712 mapKey!48712 mapValue!48712))))

(declare-fun b!1246966 () Bool)

(declare-fun res!832187 () Bool)

(assert (=> b!1246966 (=> (not res!832187) (not e!707352))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80299 (_ BitVec 32)) Bool)

(assert (=> b!1246966 (= res!832187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1246967 () Bool)

(declare-fun e!707353 () Bool)

(assert (=> b!1246967 (= e!707353 tp_is_empty!31313)))

(declare-fun b!1246968 () Bool)

(assert (=> b!1246968 (= e!707349 (and e!707353 mapRes!48712))))

(declare-fun condMapEmpty!48712 () Bool)

(declare-fun mapDefault!48712 () ValueCell!14893)

