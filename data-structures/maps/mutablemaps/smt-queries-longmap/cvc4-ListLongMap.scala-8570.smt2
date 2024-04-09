; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104668 () Bool)

(assert start!104668)

(declare-fun mapIsEmpty!48796 () Bool)

(declare-fun mapRes!48796 () Bool)

(assert (=> mapIsEmpty!48796 mapRes!48796))

(declare-fun b!1247531 () Bool)

(declare-fun res!832483 () Bool)

(declare-fun e!707800 () Bool)

(assert (=> b!1247531 (=> (not res!832483) (not e!707800))))

(declare-datatypes ((array!80397 0))(
  ( (array!80398 (arr!38763 (Array (_ BitVec 32) (_ BitVec 64))) (size!39300 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80397)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80397 (_ BitVec 32)) Bool)

(assert (=> b!1247531 (= res!832483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!48796 () Bool)

(declare-fun tp!92898 () Bool)

(declare-fun e!707799 () Bool)

(assert (=> mapNonEmpty!48796 (= mapRes!48796 (and tp!92898 e!707799))))

(declare-datatypes ((V!47179 0))(
  ( (V!47180 (val!15743 Int)) )
))
(declare-datatypes ((ValueCell!14917 0))(
  ( (ValueCellFull!14917 (v!18439 V!47179)) (EmptyCell!14917) )
))
(declare-fun mapValue!48796 () ValueCell!14917)

(declare-datatypes ((array!80399 0))(
  ( (array!80400 (arr!38764 (Array (_ BitVec 32) ValueCell!14917)) (size!39301 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80399)

(declare-fun mapRest!48796 () (Array (_ BitVec 32) ValueCell!14917))

(declare-fun mapKey!48796 () (_ BitVec 32))

(assert (=> mapNonEmpty!48796 (= (arr!38764 _values!914) (store mapRest!48796 mapKey!48796 mapValue!48796))))

(declare-fun res!832485 () Bool)

(assert (=> start!104668 (=> (not res!832485) (not e!707800))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104668 (= res!832485 (validMask!0 mask!1466))))

(assert (=> start!104668 e!707800))

(assert (=> start!104668 true))

(declare-fun array_inv!29521 (array!80397) Bool)

(assert (=> start!104668 (array_inv!29521 _keys!1118)))

(declare-fun e!707801 () Bool)

(declare-fun array_inv!29522 (array!80399) Bool)

(assert (=> start!104668 (and (array_inv!29522 _values!914) e!707801)))

(declare-fun b!1247532 () Bool)

(declare-fun e!707798 () Bool)

(declare-fun tp_is_empty!31361 () Bool)

(assert (=> b!1247532 (= e!707798 tp_is_empty!31361)))

(declare-fun b!1247533 () Bool)

(assert (=> b!1247533 (= e!707801 (and e!707798 mapRes!48796))))

(declare-fun condMapEmpty!48796 () Bool)

(declare-fun mapDefault!48796 () ValueCell!14917)

