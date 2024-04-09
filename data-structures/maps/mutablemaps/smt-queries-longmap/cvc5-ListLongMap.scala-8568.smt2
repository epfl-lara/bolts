; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104652 () Bool)

(assert start!104652)

(declare-fun b!1247387 () Bool)

(declare-fun e!707682 () Bool)

(declare-fun tp_is_empty!31345 () Bool)

(assert (=> b!1247387 (= e!707682 tp_is_empty!31345)))

(declare-fun b!1247388 () Bool)

(declare-fun e!707681 () Bool)

(assert (=> b!1247388 (= e!707681 tp_is_empty!31345)))

(declare-fun mapIsEmpty!48772 () Bool)

(declare-fun mapRes!48772 () Bool)

(assert (=> mapIsEmpty!48772 mapRes!48772))

(declare-fun b!1247389 () Bool)

(declare-fun res!832413 () Bool)

(declare-fun e!707680 () Bool)

(assert (=> b!1247389 (=> (not res!832413) (not e!707680))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80367 0))(
  ( (array!80368 (arr!38748 (Array (_ BitVec 32) (_ BitVec 64))) (size!39285 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80367)

(declare-datatypes ((V!47159 0))(
  ( (V!47160 (val!15735 Int)) )
))
(declare-datatypes ((ValueCell!14909 0))(
  ( (ValueCellFull!14909 (v!18431 V!47159)) (EmptyCell!14909) )
))
(declare-datatypes ((array!80369 0))(
  ( (array!80370 (arr!38749 (Array (_ BitVec 32) ValueCell!14909)) (size!39286 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80369)

(assert (=> b!1247389 (= res!832413 (and (= (size!39286 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39285 _keys!1118) (size!39286 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1247390 () Bool)

(assert (=> b!1247390 (= e!707680 false)))

(declare-fun lt!563205 () Bool)

(declare-datatypes ((List!27694 0))(
  ( (Nil!27691) (Cons!27690 (h!28899 (_ BitVec 64)) (t!41170 List!27694)) )
))
(declare-fun arrayNoDuplicates!0 (array!80367 (_ BitVec 32) List!27694) Bool)

(assert (=> b!1247390 (= lt!563205 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27691))))

(declare-fun res!832411 () Bool)

(assert (=> start!104652 (=> (not res!832411) (not e!707680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104652 (= res!832411 (validMask!0 mask!1466))))

(assert (=> start!104652 e!707680))

(assert (=> start!104652 true))

(declare-fun array_inv!29513 (array!80367) Bool)

(assert (=> start!104652 (array_inv!29513 _keys!1118)))

(declare-fun e!707678 () Bool)

(declare-fun array_inv!29514 (array!80369) Bool)

(assert (=> start!104652 (and (array_inv!29514 _values!914) e!707678)))

(declare-fun b!1247391 () Bool)

(declare-fun res!832412 () Bool)

(assert (=> b!1247391 (=> (not res!832412) (not e!707680))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80367 (_ BitVec 32)) Bool)

(assert (=> b!1247391 (= res!832412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1247392 () Bool)

(assert (=> b!1247392 (= e!707678 (and e!707682 mapRes!48772))))

(declare-fun condMapEmpty!48772 () Bool)

(declare-fun mapDefault!48772 () ValueCell!14909)

