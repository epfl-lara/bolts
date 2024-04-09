; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105910 () Bool)

(assert start!105910)

(declare-fun b_free!27415 () Bool)

(declare-fun b_next!27415 () Bool)

(assert (=> start!105910 (= b_free!27415 (not b_next!27415))))

(declare-fun tp!95777 () Bool)

(declare-fun b_and!45333 () Bool)

(assert (=> start!105910 (= tp!95777 b_and!45333)))

(declare-fun b!1261007 () Bool)

(declare-fun res!840405 () Bool)

(declare-fun e!717683 () Bool)

(assert (=> b!1261007 (=> (not res!840405) (not e!717683))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82239 0))(
  ( (array!82240 (arr!39668 (Array (_ BitVec 32) (_ BitVec 64))) (size!40205 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82239)

(declare-datatypes ((V!48455 0))(
  ( (V!48456 (val!16221 Int)) )
))
(declare-datatypes ((ValueCell!15395 0))(
  ( (ValueCellFull!15395 (v!18925 V!48455)) (EmptyCell!15395) )
))
(declare-datatypes ((array!82241 0))(
  ( (array!82242 (arr!39669 (Array (_ BitVec 32) ValueCell!15395)) (size!40206 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82241)

(assert (=> b!1261007 (= res!840405 (and (= (size!40206 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40205 _keys!1118) (size!40206 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261008 () Bool)

(declare-fun e!717682 () Bool)

(declare-fun tp_is_empty!32317 () Bool)

(assert (=> b!1261008 (= e!717682 tp_is_empty!32317)))

(declare-fun mapNonEmpty!50278 () Bool)

(declare-fun mapRes!50278 () Bool)

(declare-fun tp!95778 () Bool)

(declare-fun e!717685 () Bool)

(assert (=> mapNonEmpty!50278 (= mapRes!50278 (and tp!95778 e!717685))))

(declare-fun mapValue!50278 () ValueCell!15395)

(declare-fun mapKey!50278 () (_ BitVec 32))

(declare-fun mapRest!50278 () (Array (_ BitVec 32) ValueCell!15395))

(assert (=> mapNonEmpty!50278 (= (arr!39669 _values!914) (store mapRest!50278 mapKey!50278 mapValue!50278))))

(declare-fun b!1261010 () Bool)

(declare-fun res!840404 () Bool)

(assert (=> b!1261010 (=> (not res!840404) (not e!717683))))

(declare-datatypes ((List!28360 0))(
  ( (Nil!28357) (Cons!28356 (h!29565 (_ BitVec 64)) (t!41866 List!28360)) )
))
(declare-fun arrayNoDuplicates!0 (array!82239 (_ BitVec 32) List!28360) Bool)

(assert (=> b!1261010 (= res!840404 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28357))))

(declare-fun b!1261011 () Bool)

(declare-fun res!840403 () Bool)

(assert (=> b!1261011 (=> (not res!840403) (not e!717683))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82239 (_ BitVec 32)) Bool)

(assert (=> b!1261011 (= res!840403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!50278 () Bool)

(assert (=> mapIsEmpty!50278 mapRes!50278))

(declare-fun b!1261009 () Bool)

(assert (=> b!1261009 (= e!717683 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48455)

(declare-fun zeroValue!871 () V!48455)

(declare-datatypes ((tuple2!21138 0))(
  ( (tuple2!21139 (_1!10579 (_ BitVec 64)) (_2!10579 V!48455)) )
))
(declare-datatypes ((List!28361 0))(
  ( (Nil!28358) (Cons!28357 (h!29566 tuple2!21138) (t!41867 List!28361)) )
))
(declare-datatypes ((ListLongMap!19023 0))(
  ( (ListLongMap!19024 (toList!9527 List!28361)) )
))
(declare-fun lt!571468 () ListLongMap!19023)

(declare-fun getCurrentListMapNoExtraKeys!5868 (array!82239 array!82241 (_ BitVec 32) (_ BitVec 32) V!48455 V!48455 (_ BitVec 32) Int) ListLongMap!19023)

(assert (=> b!1261009 (= lt!571468 (getCurrentListMapNoExtraKeys!5868 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun minValueBefore!43 () V!48455)

(declare-fun lt!571469 () ListLongMap!19023)

(assert (=> b!1261009 (= lt!571469 (getCurrentListMapNoExtraKeys!5868 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!840406 () Bool)

(assert (=> start!105910 (=> (not res!840406) (not e!717683))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105910 (= res!840406 (validMask!0 mask!1466))))

(assert (=> start!105910 e!717683))

(assert (=> start!105910 true))

(assert (=> start!105910 tp!95777))

(assert (=> start!105910 tp_is_empty!32317))

(declare-fun array_inv!30149 (array!82239) Bool)

(assert (=> start!105910 (array_inv!30149 _keys!1118)))

(declare-fun e!717684 () Bool)

(declare-fun array_inv!30150 (array!82241) Bool)

(assert (=> start!105910 (and (array_inv!30150 _values!914) e!717684)))

(declare-fun b!1261012 () Bool)

(assert (=> b!1261012 (= e!717684 (and e!717682 mapRes!50278))))

(declare-fun condMapEmpty!50278 () Bool)

(declare-fun mapDefault!50278 () ValueCell!15395)

