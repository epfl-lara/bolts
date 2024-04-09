; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105664 () Bool)

(assert start!105664)

(declare-fun b_free!27229 () Bool)

(declare-fun b_next!27229 () Bool)

(assert (=> start!105664 (= b_free!27229 (not b_next!27229))))

(declare-fun tp!95211 () Bool)

(declare-fun b_and!45113 () Bool)

(assert (=> start!105664 (= tp!95211 b_and!45113)))

(declare-fun mapNonEmpty!49990 () Bool)

(declare-fun mapRes!49990 () Bool)

(declare-fun tp!95210 () Bool)

(declare-fun e!715551 () Bool)

(assert (=> mapNonEmpty!49990 (= mapRes!49990 (and tp!95210 e!715551))))

(declare-datatypes ((V!48207 0))(
  ( (V!48208 (val!16128 Int)) )
))
(declare-datatypes ((ValueCell!15302 0))(
  ( (ValueCellFull!15302 (v!18830 V!48207)) (EmptyCell!15302) )
))
(declare-fun mapRest!49990 () (Array (_ BitVec 32) ValueCell!15302))

(declare-fun mapValue!49990 () ValueCell!15302)

(declare-datatypes ((array!81885 0))(
  ( (array!81886 (arr!39494 (Array (_ BitVec 32) ValueCell!15302)) (size!40031 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81885)

(declare-fun mapKey!49990 () (_ BitVec 32))

(assert (=> mapNonEmpty!49990 (= (arr!39494 _values!914) (store mapRest!49990 mapKey!49990 mapValue!49990))))

(declare-fun b!1258128 () Bool)

(declare-fun res!838657 () Bool)

(declare-fun e!715552 () Bool)

(assert (=> b!1258128 (=> (not res!838657) (not e!715552))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81887 0))(
  ( (array!81888 (arr!39495 (Array (_ BitVec 32) (_ BitVec 64))) (size!40032 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81887)

(assert (=> b!1258128 (= res!838657 (and (= (size!40031 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40032 _keys!1118) (size!40031 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1258129 () Bool)

(declare-fun e!715548 () Bool)

(assert (=> b!1258129 (= e!715548 true)))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!48207)

(declare-datatypes ((tuple2!20996 0))(
  ( (tuple2!20997 (_1!10508 (_ BitVec 64)) (_2!10508 V!48207)) )
))
(declare-datatypes ((List!28228 0))(
  ( (Nil!28225) (Cons!28224 (h!29433 tuple2!20996) (t!41728 List!28228)) )
))
(declare-datatypes ((ListLongMap!18881 0))(
  ( (ListLongMap!18882 (toList!9456 List!28228)) )
))
(declare-fun lt!569033 () ListLongMap!18881)

(declare-fun minValueBefore!43 () V!48207)

(declare-fun getCurrentListMap!4596 (array!81887 array!81885 (_ BitVec 32) (_ BitVec 32) V!48207 V!48207 (_ BitVec 32) Int) ListLongMap!18881)

(assert (=> b!1258129 (= lt!569033 (getCurrentListMap!4596 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258130 () Bool)

(declare-fun res!838654 () Bool)

(assert (=> b!1258130 (=> (not res!838654) (not e!715552))))

(declare-datatypes ((List!28229 0))(
  ( (Nil!28226) (Cons!28225 (h!29434 (_ BitVec 64)) (t!41729 List!28229)) )
))
(declare-fun arrayNoDuplicates!0 (array!81887 (_ BitVec 32) List!28229) Bool)

(assert (=> b!1258130 (= res!838654 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28226))))

(declare-fun b!1258131 () Bool)

(declare-fun e!715547 () Bool)

(declare-fun tp_is_empty!32131 () Bool)

(assert (=> b!1258131 (= e!715547 tp_is_empty!32131)))

(declare-fun mapIsEmpty!49990 () Bool)

(assert (=> mapIsEmpty!49990 mapRes!49990))

(declare-fun b!1258132 () Bool)

(declare-fun e!715549 () Bool)

(assert (=> b!1258132 (= e!715549 (and e!715547 mapRes!49990))))

(declare-fun condMapEmpty!49990 () Bool)

(declare-fun mapDefault!49990 () ValueCell!15302)

