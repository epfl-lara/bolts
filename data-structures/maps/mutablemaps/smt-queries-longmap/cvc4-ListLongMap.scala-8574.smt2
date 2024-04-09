; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104692 () Bool)

(assert start!104692)

(declare-fun b!1247755 () Bool)

(declare-fun res!832602 () Bool)

(declare-fun e!707978 () Bool)

(assert (=> b!1247755 (=> (not res!832602) (not e!707978))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80439 0))(
  ( (array!80440 (arr!38784 (Array (_ BitVec 32) (_ BitVec 64))) (size!39321 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80439)

(declare-datatypes ((V!47211 0))(
  ( (V!47212 (val!15755 Int)) )
))
(declare-datatypes ((ValueCell!14929 0))(
  ( (ValueCellFull!14929 (v!18451 V!47211)) (EmptyCell!14929) )
))
(declare-datatypes ((array!80441 0))(
  ( (array!80442 (arr!38785 (Array (_ BitVec 32) ValueCell!14929)) (size!39322 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80441)

(assert (=> b!1247755 (= res!832602 (and (= (size!39322 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39321 _keys!1118) (size!39322 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1247756 () Bool)

(declare-fun e!707982 () Bool)

(declare-fun e!707980 () Bool)

(declare-fun mapRes!48832 () Bool)

(assert (=> b!1247756 (= e!707982 (and e!707980 mapRes!48832))))

(declare-fun condMapEmpty!48832 () Bool)

(declare-fun mapDefault!48832 () ValueCell!14929)

