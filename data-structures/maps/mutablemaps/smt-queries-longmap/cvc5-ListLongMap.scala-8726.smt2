; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105886 () Bool)

(assert start!105886)

(declare-fun b_free!27391 () Bool)

(declare-fun b_next!27391 () Bool)

(assert (=> start!105886 (= b_free!27391 (not b_next!27391))))

(declare-fun tp!95705 () Bool)

(declare-fun b_and!45309 () Bool)

(assert (=> start!105886 (= tp!95705 b_and!45309)))

(declare-fun b!1260755 () Bool)

(declare-fun res!840260 () Bool)

(declare-fun e!717503 () Bool)

(assert (=> b!1260755 (=> (not res!840260) (not e!717503))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82191 0))(
  ( (array!82192 (arr!39644 (Array (_ BitVec 32) (_ BitVec 64))) (size!40181 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82191)

(declare-datatypes ((V!48423 0))(
  ( (V!48424 (val!16209 Int)) )
))
(declare-datatypes ((ValueCell!15383 0))(
  ( (ValueCellFull!15383 (v!18913 V!48423)) (EmptyCell!15383) )
))
(declare-datatypes ((array!82193 0))(
  ( (array!82194 (arr!39645 (Array (_ BitVec 32) ValueCell!15383)) (size!40182 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82193)

(assert (=> b!1260755 (= res!840260 (and (= (size!40182 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40181 _keys!1118) (size!40182 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1260756 () Bool)

(declare-fun res!840259 () Bool)

(assert (=> b!1260756 (=> (not res!840259) (not e!717503))))

(declare-datatypes ((List!28341 0))(
  ( (Nil!28338) (Cons!28337 (h!29546 (_ BitVec 64)) (t!41847 List!28341)) )
))
(declare-fun arrayNoDuplicates!0 (array!82191 (_ BitVec 32) List!28341) Bool)

(assert (=> b!1260756 (= res!840259 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28338))))

(declare-fun b!1260757 () Bool)

(declare-fun e!717505 () Bool)

(declare-fun e!717502 () Bool)

(declare-fun mapRes!50242 () Bool)

(assert (=> b!1260757 (= e!717505 (and e!717502 mapRes!50242))))

(declare-fun condMapEmpty!50242 () Bool)

(declare-fun mapDefault!50242 () ValueCell!15383)

