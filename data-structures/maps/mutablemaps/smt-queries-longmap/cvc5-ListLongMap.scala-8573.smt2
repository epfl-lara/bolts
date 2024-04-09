; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104682 () Bool)

(assert start!104682)

(declare-fun b!1247657 () Bool)

(declare-fun res!832548 () Bool)

(declare-fun e!707906 () Bool)

(assert (=> b!1247657 (=> (not res!832548) (not e!707906))))

(declare-datatypes ((array!80419 0))(
  ( (array!80420 (arr!38774 (Array (_ BitVec 32) (_ BitVec 64))) (size!39311 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80419)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80419 (_ BitVec 32)) Bool)

(assert (=> b!1247657 (= res!832548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1247658 () Bool)

(assert (=> b!1247658 (= e!707906 false)))

(declare-fun lt!563250 () Bool)

(declare-datatypes ((List!27704 0))(
  ( (Nil!27701) (Cons!27700 (h!28909 (_ BitVec 64)) (t!41180 List!27704)) )
))
(declare-fun arrayNoDuplicates!0 (array!80419 (_ BitVec 32) List!27704) Bool)

(assert (=> b!1247658 (= lt!563250 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27701))))

(declare-fun b!1247659 () Bool)

(declare-fun e!707904 () Bool)

(declare-fun tp_is_empty!31375 () Bool)

(assert (=> b!1247659 (= e!707904 tp_is_empty!31375)))

(declare-fun mapIsEmpty!48817 () Bool)

(declare-fun mapRes!48817 () Bool)

(assert (=> mapIsEmpty!48817 mapRes!48817))

(declare-fun res!832546 () Bool)

(assert (=> start!104682 (=> (not res!832546) (not e!707906))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104682 (= res!832546 (validMask!0 mask!1466))))

(assert (=> start!104682 e!707906))

(assert (=> start!104682 true))

(declare-fun array_inv!29529 (array!80419) Bool)

(assert (=> start!104682 (array_inv!29529 _keys!1118)))

(declare-datatypes ((V!47199 0))(
  ( (V!47200 (val!15750 Int)) )
))
(declare-datatypes ((ValueCell!14924 0))(
  ( (ValueCellFull!14924 (v!18446 V!47199)) (EmptyCell!14924) )
))
(declare-datatypes ((array!80421 0))(
  ( (array!80422 (arr!38775 (Array (_ BitVec 32) ValueCell!14924)) (size!39312 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80421)

(declare-fun e!707905 () Bool)

(declare-fun array_inv!29530 (array!80421) Bool)

(assert (=> start!104682 (and (array_inv!29530 _values!914) e!707905)))

(declare-fun b!1247660 () Bool)

(declare-fun e!707907 () Bool)

(assert (=> b!1247660 (= e!707907 tp_is_empty!31375)))

(declare-fun b!1247661 () Bool)

(assert (=> b!1247661 (= e!707905 (and e!707904 mapRes!48817))))

(declare-fun condMapEmpty!48817 () Bool)

(declare-fun mapDefault!48817 () ValueCell!14924)

