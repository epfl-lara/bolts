; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105404 () Bool)

(assert start!105404)

(declare-fun b_free!27041 () Bool)

(declare-fun b_next!27041 () Bool)

(assert (=> start!105404 (= b_free!27041 (not b_next!27041))))

(declare-fun tp!94634 () Bool)

(declare-fun b_and!44889 () Bool)

(assert (=> start!105404 (= tp!94634 b_and!44889)))

(declare-fun b!1255316 () Bool)

(declare-fun e!713478 () Bool)

(declare-fun tp_is_empty!31943 () Bool)

(assert (=> b!1255316 (= e!713478 tp_is_empty!31943)))

(declare-fun mapIsEmpty!49696 () Bool)

(declare-fun mapRes!49696 () Bool)

(assert (=> mapIsEmpty!49696 mapRes!49696))

(declare-fun b!1255317 () Bool)

(declare-fun res!836991 () Bool)

(declare-fun e!713475 () Bool)

(assert (=> b!1255317 (=> (not res!836991) (not e!713475))))

(declare-datatypes ((array!81519 0))(
  ( (array!81520 (arr!39315 (Array (_ BitVec 32) (_ BitVec 64))) (size!39852 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81519)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81519 (_ BitVec 32)) Bool)

(assert (=> b!1255317 (= res!836991 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255318 () Bool)

(declare-fun res!836989 () Bool)

(assert (=> b!1255318 (=> (not res!836989) (not e!713475))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!47955 0))(
  ( (V!47956 (val!16034 Int)) )
))
(declare-datatypes ((ValueCell!15208 0))(
  ( (ValueCellFull!15208 (v!18734 V!47955)) (EmptyCell!15208) )
))
(declare-datatypes ((array!81521 0))(
  ( (array!81522 (arr!39316 (Array (_ BitVec 32) ValueCell!15208)) (size!39853 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81521)

(assert (=> b!1255318 (= res!836989 (and (= (size!39853 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39852 _keys!1118) (size!39853 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255319 () Bool)

(declare-fun e!713477 () Bool)

(assert (=> b!1255319 (= e!713477 (and e!713478 mapRes!49696))))

(declare-fun condMapEmpty!49696 () Bool)

(declare-fun mapDefault!49696 () ValueCell!15208)

