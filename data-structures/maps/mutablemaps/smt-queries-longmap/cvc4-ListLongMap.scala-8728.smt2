; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105902 () Bool)

(assert start!105902)

(declare-fun b_free!27407 () Bool)

(declare-fun b_next!27407 () Bool)

(assert (=> start!105902 (= b_free!27407 (not b_next!27407))))

(declare-fun tp!95754 () Bool)

(declare-fun b_and!45325 () Bool)

(assert (=> start!105902 (= tp!95754 b_and!45325)))

(declare-fun b!1260923 () Bool)

(declare-fun res!840358 () Bool)

(declare-fun e!717625 () Bool)

(assert (=> b!1260923 (=> (not res!840358) (not e!717625))))

(declare-datatypes ((array!82223 0))(
  ( (array!82224 (arr!39660 (Array (_ BitVec 32) (_ BitVec 64))) (size!40197 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82223)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82223 (_ BitVec 32)) Bool)

(assert (=> b!1260923 (= res!840358 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1260924 () Bool)

(declare-fun e!717623 () Bool)

(declare-fun tp_is_empty!32309 () Bool)

(assert (=> b!1260924 (= e!717623 tp_is_empty!32309)))

(declare-fun b!1260925 () Bool)

(declare-fun res!840357 () Bool)

(assert (=> b!1260925 (=> (not res!840357) (not e!717625))))

(declare-datatypes ((List!28354 0))(
  ( (Nil!28351) (Cons!28350 (h!29559 (_ BitVec 64)) (t!41860 List!28354)) )
))
(declare-fun arrayNoDuplicates!0 (array!82223 (_ BitVec 32) List!28354) Bool)

(assert (=> b!1260925 (= res!840357 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28351))))

(declare-fun b!1260926 () Bool)

(assert (=> b!1260926 (= e!717625 false)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((V!48443 0))(
  ( (V!48444 (val!16217 Int)) )
))
(declare-fun minValueAfter!43 () V!48443)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48443)

(declare-datatypes ((ValueCell!15391 0))(
  ( (ValueCellFull!15391 (v!18921 V!48443)) (EmptyCell!15391) )
))
(declare-datatypes ((array!82225 0))(
  ( (array!82226 (arr!39661 (Array (_ BitVec 32) ValueCell!15391)) (size!40198 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82225)

(declare-datatypes ((tuple2!21132 0))(
  ( (tuple2!21133 (_1!10576 (_ BitVec 64)) (_2!10576 V!48443)) )
))
(declare-datatypes ((List!28355 0))(
  ( (Nil!28352) (Cons!28351 (h!29560 tuple2!21132) (t!41861 List!28355)) )
))
(declare-datatypes ((ListLongMap!19017 0))(
  ( (ListLongMap!19018 (toList!9524 List!28355)) )
))
(declare-fun lt!571444 () ListLongMap!19017)

(declare-fun getCurrentListMapNoExtraKeys!5865 (array!82223 array!82225 (_ BitVec 32) (_ BitVec 32) V!48443 V!48443 (_ BitVec 32) Int) ListLongMap!19017)

(assert (=> b!1260926 (= lt!571444 (getCurrentListMapNoExtraKeys!5865 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun lt!571445 () ListLongMap!19017)

(declare-fun minValueBefore!43 () V!48443)

(assert (=> b!1260926 (= lt!571445 (getCurrentListMapNoExtraKeys!5865 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!50266 () Bool)

(declare-fun mapRes!50266 () Bool)

(declare-fun tp!95753 () Bool)

(assert (=> mapNonEmpty!50266 (= mapRes!50266 (and tp!95753 e!717623))))

(declare-fun mapValue!50266 () ValueCell!15391)

(declare-fun mapKey!50266 () (_ BitVec 32))

(declare-fun mapRest!50266 () (Array (_ BitVec 32) ValueCell!15391))

(assert (=> mapNonEmpty!50266 (= (arr!39661 _values!914) (store mapRest!50266 mapKey!50266 mapValue!50266))))

(declare-fun b!1260927 () Bool)

(declare-fun e!717621 () Bool)

(assert (=> b!1260927 (= e!717621 tp_is_empty!32309)))

(declare-fun b!1260928 () Bool)

(declare-fun res!840356 () Bool)

(assert (=> b!1260928 (=> (not res!840356) (not e!717625))))

(assert (=> b!1260928 (= res!840356 (and (= (size!40198 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40197 _keys!1118) (size!40198 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1260929 () Bool)

(declare-fun e!717624 () Bool)

(assert (=> b!1260929 (= e!717624 (and e!717621 mapRes!50266))))

(declare-fun condMapEmpty!50266 () Bool)

(declare-fun mapDefault!50266 () ValueCell!15391)

