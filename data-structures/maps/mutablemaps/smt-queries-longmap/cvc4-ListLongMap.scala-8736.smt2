; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105950 () Bool)

(assert start!105950)

(declare-fun b_free!27455 () Bool)

(declare-fun b_next!27455 () Bool)

(assert (=> start!105950 (= b_free!27455 (not b_next!27455))))

(declare-fun tp!95898 () Bool)

(declare-fun b_and!45373 () Bool)

(assert (=> start!105950 (= tp!95898 b_and!45373)))

(declare-fun b!1261427 () Bool)

(declare-fun res!840646 () Bool)

(declare-fun e!717982 () Bool)

(assert (=> b!1261427 (=> (not res!840646) (not e!717982))))

(declare-datatypes ((array!82311 0))(
  ( (array!82312 (arr!39704 (Array (_ BitVec 32) (_ BitVec 64))) (size!40241 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82311)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82311 (_ BitVec 32)) Bool)

(assert (=> b!1261427 (= res!840646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1261428 () Bool)

(declare-fun e!717983 () Bool)

(declare-fun tp_is_empty!32357 () Bool)

(assert (=> b!1261428 (= e!717983 tp_is_empty!32357)))

(declare-fun b!1261429 () Bool)

(declare-fun res!840644 () Bool)

(assert (=> b!1261429 (=> (not res!840644) (not e!717982))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!48507 0))(
  ( (V!48508 (val!16241 Int)) )
))
(declare-datatypes ((ValueCell!15415 0))(
  ( (ValueCellFull!15415 (v!18945 V!48507)) (EmptyCell!15415) )
))
(declare-datatypes ((array!82313 0))(
  ( (array!82314 (arr!39705 (Array (_ BitVec 32) ValueCell!15415)) (size!40242 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82313)

(assert (=> b!1261429 (= res!840644 (and (= (size!40242 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40241 _keys!1118) (size!40242 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261431 () Bool)

(declare-fun e!717985 () Bool)

(declare-fun e!717984 () Bool)

(declare-fun mapRes!50338 () Bool)

(assert (=> b!1261431 (= e!717985 (and e!717984 mapRes!50338))))

(declare-fun condMapEmpty!50338 () Bool)

(declare-fun mapDefault!50338 () ValueCell!15415)

