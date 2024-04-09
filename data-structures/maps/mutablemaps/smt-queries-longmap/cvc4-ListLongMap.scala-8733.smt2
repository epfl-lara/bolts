; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105932 () Bool)

(assert start!105932)

(declare-fun b_free!27437 () Bool)

(declare-fun b_next!27437 () Bool)

(assert (=> start!105932 (= b_free!27437 (not b_next!27437))))

(declare-fun tp!95843 () Bool)

(declare-fun b_and!45355 () Bool)

(assert (=> start!105932 (= tp!95843 b_and!45355)))

(declare-fun mapIsEmpty!50311 () Bool)

(declare-fun mapRes!50311 () Bool)

(assert (=> mapIsEmpty!50311 mapRes!50311))

(declare-fun b!1261238 () Bool)

(declare-fun e!717848 () Bool)

(declare-fun tp_is_empty!32339 () Bool)

(assert (=> b!1261238 (= e!717848 tp_is_empty!32339)))

(declare-fun b!1261239 () Bool)

(declare-fun res!840537 () Bool)

(declare-fun e!717847 () Bool)

(assert (=> b!1261239 (=> (not res!840537) (not e!717847))))

(declare-datatypes ((array!82277 0))(
  ( (array!82278 (arr!39687 (Array (_ BitVec 32) (_ BitVec 64))) (size!40224 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82277)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82277 (_ BitVec 32)) Bool)

(assert (=> b!1261239 (= res!840537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1261240 () Bool)

(declare-fun res!840535 () Bool)

(assert (=> b!1261240 (=> (not res!840535) (not e!717847))))

(declare-datatypes ((List!28371 0))(
  ( (Nil!28368) (Cons!28367 (h!29576 (_ BitVec 64)) (t!41877 List!28371)) )
))
(declare-fun arrayNoDuplicates!0 (array!82277 (_ BitVec 32) List!28371) Bool)

(assert (=> b!1261240 (= res!840535 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28368))))

(declare-fun b!1261241 () Bool)

(assert (=> b!1261241 (= e!717847 false)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((V!48483 0))(
  ( (V!48484 (val!16232 Int)) )
))
(declare-fun minValueAfter!43 () V!48483)

(declare-datatypes ((tuple2!21150 0))(
  ( (tuple2!21151 (_1!10585 (_ BitVec 64)) (_2!10585 V!48483)) )
))
(declare-datatypes ((List!28372 0))(
  ( (Nil!28369) (Cons!28368 (h!29577 tuple2!21150) (t!41878 List!28372)) )
))
(declare-datatypes ((ListLongMap!19035 0))(
  ( (ListLongMap!19036 (toList!9533 List!28372)) )
))
(declare-fun lt!571535 () ListLongMap!19035)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48483)

(declare-datatypes ((ValueCell!15406 0))(
  ( (ValueCellFull!15406 (v!18936 V!48483)) (EmptyCell!15406) )
))
(declare-datatypes ((array!82279 0))(
  ( (array!82280 (arr!39688 (Array (_ BitVec 32) ValueCell!15406)) (size!40225 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82279)

(declare-fun getCurrentListMapNoExtraKeys!5874 (array!82277 array!82279 (_ BitVec 32) (_ BitVec 32) V!48483 V!48483 (_ BitVec 32) Int) ListLongMap!19035)

(assert (=> b!1261241 (= lt!571535 (getCurrentListMapNoExtraKeys!5874 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun minValueBefore!43 () V!48483)

(declare-fun lt!571534 () ListLongMap!19035)

(assert (=> b!1261241 (= lt!571534 (getCurrentListMapNoExtraKeys!5874 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!50311 () Bool)

(declare-fun tp!95844 () Bool)

(declare-fun e!717846 () Bool)

(assert (=> mapNonEmpty!50311 (= mapRes!50311 (and tp!95844 e!717846))))

(declare-fun mapValue!50311 () ValueCell!15406)

(declare-fun mapKey!50311 () (_ BitVec 32))

(declare-fun mapRest!50311 () (Array (_ BitVec 32) ValueCell!15406))

(assert (=> mapNonEmpty!50311 (= (arr!39688 _values!914) (store mapRest!50311 mapKey!50311 mapValue!50311))))

(declare-fun res!840536 () Bool)

(assert (=> start!105932 (=> (not res!840536) (not e!717847))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105932 (= res!840536 (validMask!0 mask!1466))))

(assert (=> start!105932 e!717847))

(assert (=> start!105932 true))

(assert (=> start!105932 tp!95843))

(assert (=> start!105932 tp_is_empty!32339))

(declare-fun array_inv!30165 (array!82277) Bool)

(assert (=> start!105932 (array_inv!30165 _keys!1118)))

(declare-fun e!717850 () Bool)

(declare-fun array_inv!30166 (array!82279) Bool)

(assert (=> start!105932 (and (array_inv!30166 _values!914) e!717850)))

(declare-fun b!1261242 () Bool)

(assert (=> b!1261242 (= e!717846 tp_is_empty!32339)))

(declare-fun b!1261243 () Bool)

(declare-fun res!840538 () Bool)

(assert (=> b!1261243 (=> (not res!840538) (not e!717847))))

(assert (=> b!1261243 (= res!840538 (and (= (size!40225 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40224 _keys!1118) (size!40225 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261244 () Bool)

(assert (=> b!1261244 (= e!717850 (and e!717848 mapRes!50311))))

(declare-fun condMapEmpty!50311 () Bool)

(declare-fun mapDefault!50311 () ValueCell!15406)

