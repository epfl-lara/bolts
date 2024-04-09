; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106158 () Bool)

(assert start!106158)

(declare-fun b_free!27515 () Bool)

(declare-fun b_next!27515 () Bool)

(assert (=> start!106158 (= b_free!27515 (not b_next!27515))))

(declare-fun tp!96102 () Bool)

(declare-fun b_and!45521 () Bool)

(assert (=> start!106158 (= tp!96102 b_and!45521)))

(declare-fun b!1263480 () Bool)

(declare-fun e!719387 () Bool)

(declare-fun tp_is_empty!32417 () Bool)

(assert (=> b!1263480 (= e!719387 tp_is_empty!32417)))

(declare-fun mapIsEmpty!50452 () Bool)

(declare-fun mapRes!50452 () Bool)

(assert (=> mapIsEmpty!50452 mapRes!50452))

(declare-fun b!1263481 () Bool)

(declare-fun res!841654 () Bool)

(declare-fun e!719382 () Bool)

(assert (=> b!1263481 (=> (not res!841654) (not e!719382))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82441 0))(
  ( (array!82442 (arr!39761 (Array (_ BitVec 32) (_ BitVec 64))) (size!40298 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82441)

(declare-datatypes ((V!48587 0))(
  ( (V!48588 (val!16271 Int)) )
))
(declare-datatypes ((ValueCell!15445 0))(
  ( (ValueCellFull!15445 (v!18982 V!48587)) (EmptyCell!15445) )
))
(declare-datatypes ((array!82443 0))(
  ( (array!82444 (arr!39762 (Array (_ BitVec 32) ValueCell!15445)) (size!40299 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82443)

(assert (=> b!1263481 (= res!841654 (and (= (size!40299 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40298 _keys!1118) (size!40299 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!21210 0))(
  ( (tuple2!21211 (_1!10615 (_ BitVec 64)) (_2!10615 V!48587)) )
))
(declare-datatypes ((List!28429 0))(
  ( (Nil!28426) (Cons!28425 (h!29634 tuple2!21210) (t!41951 List!28429)) )
))
(declare-datatypes ((ListLongMap!19095 0))(
  ( (ListLongMap!19096 (toList!9563 List!28429)) )
))
(declare-fun lt!573025 () ListLongMap!19095)

(declare-fun zeroValue!871 () V!48587)

(declare-fun minValueBefore!43 () V!48587)

(declare-fun b!1263482 () Bool)

(declare-fun e!719385 () Bool)

(declare-fun defaultEntry!922 () Int)

(declare-fun getCurrentListMap!4666 (array!82441 array!82443 (_ BitVec 32) (_ BitVec 32) V!48587 V!48587 (_ BitVec 32) Int) ListLongMap!19095)

(declare-fun +!4228 (ListLongMap!19095 tuple2!21210) ListLongMap!19095)

(assert (=> b!1263482 (= e!719385 (= (getCurrentListMap!4666 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (+!4228 (+!4228 lt!573025 (tuple2!21211 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)) (tuple2!21211 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun minValueAfter!43 () V!48587)

(declare-fun lt!573027 () ListLongMap!19095)

(assert (=> b!1263482 (= lt!573027 (getCurrentListMap!4666 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1263483 () Bool)

(declare-fun e!719384 () Bool)

(assert (=> b!1263483 (= e!719384 (and e!719387 mapRes!50452))))

(declare-fun condMapEmpty!50452 () Bool)

(declare-fun mapDefault!50452 () ValueCell!15445)

