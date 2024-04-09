; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106094 () Bool)

(assert start!106094)

(declare-fun b_free!27491 () Bool)

(declare-fun b_next!27491 () Bool)

(assert (=> start!106094 (= b_free!27491 (not b_next!27491))))

(declare-fun tp!96023 () Bool)

(declare-fun b_and!45475 () Bool)

(assert (=> start!106094 (= tp!96023 b_and!45475)))

(declare-fun b!1262848 () Bool)

(declare-fun e!718947 () Bool)

(declare-fun tp_is_empty!32393 () Bool)

(assert (=> b!1262848 (= e!718947 tp_is_empty!32393)))

(declare-fun mapNonEmpty!50410 () Bool)

(declare-fun mapRes!50410 () Bool)

(declare-fun tp!96024 () Bool)

(assert (=> mapNonEmpty!50410 (= mapRes!50410 (and tp!96024 e!718947))))

(declare-fun mapKey!50410 () (_ BitVec 32))

(declare-datatypes ((V!48555 0))(
  ( (V!48556 (val!16259 Int)) )
))
(declare-datatypes ((ValueCell!15433 0))(
  ( (ValueCellFull!15433 (v!18968 V!48555)) (EmptyCell!15433) )
))
(declare-fun mapValue!50410 () ValueCell!15433)

(declare-datatypes ((array!82391 0))(
  ( (array!82392 (arr!39738 (Array (_ BitVec 32) ValueCell!15433)) (size!40275 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82391)

(declare-fun mapRest!50410 () (Array (_ BitVec 32) ValueCell!15433))

(assert (=> mapNonEmpty!50410 (= (arr!39738 _values!914) (store mapRest!50410 mapKey!50410 mapValue!50410))))

(declare-fun b!1262849 () Bool)

(declare-fun res!841334 () Bool)

(declare-fun e!718945 () Bool)

(assert (=> b!1262849 (=> (not res!841334) (not e!718945))))

(declare-datatypes ((array!82393 0))(
  ( (array!82394 (arr!39739 (Array (_ BitVec 32) (_ BitVec 64))) (size!40276 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82393)

(declare-datatypes ((List!28412 0))(
  ( (Nil!28409) (Cons!28408 (h!29617 (_ BitVec 64)) (t!41930 List!28412)) )
))
(declare-fun arrayNoDuplicates!0 (array!82393 (_ BitVec 32) List!28412) Bool)

(assert (=> b!1262849 (= res!841334 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28409))))

(declare-fun mapIsEmpty!50410 () Bool)

(assert (=> mapIsEmpty!50410 mapRes!50410))

(declare-fun b!1262850 () Bool)

(declare-fun res!841335 () Bool)

(assert (=> b!1262850 (=> (not res!841335) (not e!718945))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1262850 (= res!841335 (and (= (size!40275 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40276 _keys!1118) (size!40275 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1262851 () Bool)

(declare-fun res!841336 () Bool)

(assert (=> b!1262851 (=> (not res!841336) (not e!718945))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82393 (_ BitVec 32)) Bool)

(assert (=> b!1262851 (= res!841336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!841333 () Bool)

(assert (=> start!106094 (=> (not res!841333) (not e!718945))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106094 (= res!841333 (validMask!0 mask!1466))))

(assert (=> start!106094 e!718945))

(assert (=> start!106094 true))

(assert (=> start!106094 tp!96023))

(assert (=> start!106094 tp_is_empty!32393))

(declare-fun array_inv!30201 (array!82393) Bool)

(assert (=> start!106094 (array_inv!30201 _keys!1118)))

(declare-fun e!718949 () Bool)

(declare-fun array_inv!30202 (array!82391) Bool)

(assert (=> start!106094 (and (array_inv!30202 _values!914) e!718949)))

(declare-fun b!1262852 () Bool)

(declare-fun e!718948 () Bool)

(assert (=> b!1262852 (= e!718948 tp_is_empty!32393)))

(declare-fun b!1262853 () Bool)

(assert (=> b!1262853 (= e!718949 (and e!718948 mapRes!50410))))

(declare-fun condMapEmpty!50410 () Bool)

(declare-fun mapDefault!50410 () ValueCell!15433)

