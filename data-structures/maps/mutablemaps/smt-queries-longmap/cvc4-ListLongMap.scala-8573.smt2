; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104686 () Bool)

(assert start!104686)

(declare-fun b!1247693 () Bool)

(declare-fun res!832564 () Bool)

(declare-fun e!707933 () Bool)

(assert (=> b!1247693 (=> (not res!832564) (not e!707933))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80427 0))(
  ( (array!80428 (arr!38778 (Array (_ BitVec 32) (_ BitVec 64))) (size!39315 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80427)

(declare-datatypes ((V!47203 0))(
  ( (V!47204 (val!15752 Int)) )
))
(declare-datatypes ((ValueCell!14926 0))(
  ( (ValueCellFull!14926 (v!18448 V!47203)) (EmptyCell!14926) )
))
(declare-datatypes ((array!80429 0))(
  ( (array!80430 (arr!38779 (Array (_ BitVec 32) ValueCell!14926)) (size!39316 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80429)

(assert (=> b!1247693 (= res!832564 (and (= (size!39316 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39315 _keys!1118) (size!39316 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!48823 () Bool)

(declare-fun mapRes!48823 () Bool)

(declare-fun tp!92925 () Bool)

(declare-fun e!707936 () Bool)

(assert (=> mapNonEmpty!48823 (= mapRes!48823 (and tp!92925 e!707936))))

(declare-fun mapRest!48823 () (Array (_ BitVec 32) ValueCell!14926))

(declare-fun mapValue!48823 () ValueCell!14926)

(declare-fun mapKey!48823 () (_ BitVec 32))

(assert (=> mapNonEmpty!48823 (= (arr!38779 _values!914) (store mapRest!48823 mapKey!48823 mapValue!48823))))

(declare-fun b!1247694 () Bool)

(declare-fun e!707937 () Bool)

(declare-fun tp_is_empty!31379 () Bool)

(assert (=> b!1247694 (= e!707937 tp_is_empty!31379)))

(declare-fun b!1247695 () Bool)

(declare-fun res!832566 () Bool)

(assert (=> b!1247695 (=> (not res!832566) (not e!707933))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80427 (_ BitVec 32)) Bool)

(assert (=> b!1247695 (= res!832566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1247696 () Bool)

(declare-fun e!707935 () Bool)

(assert (=> b!1247696 (= e!707935 (and e!707937 mapRes!48823))))

(declare-fun condMapEmpty!48823 () Bool)

(declare-fun mapDefault!48823 () ValueCell!14926)

