; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106040 () Bool)

(assert start!106040)

(declare-fun b_free!27475 () Bool)

(declare-fun b_next!27475 () Bool)

(assert (=> start!106040 (= b_free!27475 (not b_next!27475))))

(declare-fun tp!95970 () Bool)

(declare-fun b_and!45435 () Bool)

(assert (=> start!106040 (= tp!95970 b_and!45435)))

(declare-fun b!1262274 () Bool)

(declare-fun res!841045 () Bool)

(declare-fun e!718551 () Bool)

(assert (=> b!1262274 (=> (not res!841045) (not e!718551))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82357 0))(
  ( (array!82358 (arr!39723 (Array (_ BitVec 32) (_ BitVec 64))) (size!40260 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82357)

(declare-datatypes ((V!48535 0))(
  ( (V!48536 (val!16251 Int)) )
))
(declare-datatypes ((ValueCell!15425 0))(
  ( (ValueCellFull!15425 (v!18958 V!48535)) (EmptyCell!15425) )
))
(declare-datatypes ((array!82359 0))(
  ( (array!82360 (arr!39724 (Array (_ BitVec 32) ValueCell!15425)) (size!40261 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82359)

(assert (=> b!1262274 (= res!841045 (and (= (size!40261 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40260 _keys!1118) (size!40261 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1262275 () Bool)

(declare-fun e!718552 () Bool)

(declare-fun tp_is_empty!32377 () Bool)

(assert (=> b!1262275 (= e!718552 tp_is_empty!32377)))

(declare-fun res!841043 () Bool)

(assert (=> start!106040 (=> (not res!841043) (not e!718551))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106040 (= res!841043 (validMask!0 mask!1466))))

(assert (=> start!106040 e!718551))

(assert (=> start!106040 true))

(assert (=> start!106040 tp!95970))

(assert (=> start!106040 tp_is_empty!32377))

(declare-fun array_inv!30189 (array!82357) Bool)

(assert (=> start!106040 (array_inv!30189 _keys!1118)))

(declare-fun e!718558 () Bool)

(declare-fun array_inv!30190 (array!82359) Bool)

(assert (=> start!106040 (and (array_inv!30190 _values!914) e!718558)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((tuple2!21178 0))(
  ( (tuple2!21179 (_1!10599 (_ BitVec 64)) (_2!10599 V!48535)) )
))
(declare-datatypes ((List!28400 0))(
  ( (Nil!28397) (Cons!28396 (h!29605 tuple2!21178) (t!41914 List!28400)) )
))
(declare-datatypes ((ListLongMap!19063 0))(
  ( (ListLongMap!19064 (toList!9547 List!28400)) )
))
(declare-fun lt!572155 () ListLongMap!19063)

(declare-fun e!718557 () Bool)

(declare-fun b!1262276 () Bool)

(declare-fun minValueAfter!43 () V!48535)

(declare-fun zeroValue!871 () V!48535)

(declare-fun getCurrentListMap!4652 (array!82357 array!82359 (_ BitVec 32) (_ BitVec 32) V!48535 V!48535 (_ BitVec 32) Int) ListLongMap!19063)

(assert (=> b!1262276 (= e!718557 (= (getCurrentListMap!4652 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!572155))))

(declare-fun b!1262277 () Bool)

(declare-fun res!841041 () Bool)

(assert (=> b!1262277 (=> (not res!841041) (not e!718551))))

(declare-datatypes ((List!28401 0))(
  ( (Nil!28398) (Cons!28397 (h!29606 (_ BitVec 64)) (t!41915 List!28401)) )
))
(declare-fun arrayNoDuplicates!0 (array!82357 (_ BitVec 32) List!28401) Bool)

(assert (=> b!1262277 (= res!841041 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28398))))

(declare-fun b!1262278 () Bool)

(declare-fun res!841046 () Bool)

(assert (=> b!1262278 (=> (not res!841046) (not e!718551))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82357 (_ BitVec 32)) Bool)

(assert (=> b!1262278 (= res!841046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1262279 () Bool)

(declare-fun e!718555 () Bool)

(declare-fun mapRes!50380 () Bool)

(assert (=> b!1262279 (= e!718558 (and e!718555 mapRes!50380))))

(declare-fun condMapEmpty!50380 () Bool)

(declare-fun mapDefault!50380 () ValueCell!15425)

