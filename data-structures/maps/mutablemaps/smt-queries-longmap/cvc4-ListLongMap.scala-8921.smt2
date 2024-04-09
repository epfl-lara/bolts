; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108234 () Bool)

(assert start!108234)

(declare-fun b_free!27893 () Bool)

(declare-fun b_next!27893 () Bool)

(assert (=> start!108234 (= b_free!27893 (not b_next!27893))))

(declare-fun tp!98636 () Bool)

(declare-fun b_and!45961 () Bool)

(assert (=> start!108234 (= tp!98636 b_and!45961)))

(declare-fun mapNonEmpty!51698 () Bool)

(declare-fun mapRes!51698 () Bool)

(declare-fun tp!98637 () Bool)

(declare-fun e!729687 () Bool)

(assert (=> mapNonEmpty!51698 (= mapRes!51698 (and tp!98637 e!729687))))

(declare-datatypes ((V!49693 0))(
  ( (V!49694 (val!16796 Int)) )
))
(declare-datatypes ((ValueCell!15823 0))(
  ( (ValueCellFull!15823 (v!19392 V!49693)) (EmptyCell!15823) )
))
(declare-fun mapRest!51698 () (Array (_ BitVec 32) ValueCell!15823))

(declare-fun mapValue!51698 () ValueCell!15823)

(declare-fun mapKey!51698 () (_ BitVec 32))

(declare-datatypes ((array!83925 0))(
  ( (array!83926 (arr!40468 (Array (_ BitVec 32) ValueCell!15823)) (size!41019 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83925)

(assert (=> mapNonEmpty!51698 (= (arr!40468 _values!1187) (store mapRest!51698 mapKey!51698 mapValue!51698))))

(declare-fun b!1277578 () Bool)

(declare-fun res!848985 () Bool)

(declare-fun e!729686 () Bool)

(assert (=> b!1277578 (=> (not res!848985) (not e!729686))))

(declare-datatypes ((array!83927 0))(
  ( (array!83928 (arr!40469 (Array (_ BitVec 32) (_ BitVec 64))) (size!41020 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83927)

(declare-datatypes ((List!28882 0))(
  ( (Nil!28879) (Cons!28878 (h!30087 (_ BitVec 64)) (t!42427 List!28882)) )
))
(declare-fun arrayNoDuplicates!0 (array!83927 (_ BitVec 32) List!28882) Bool)

(assert (=> b!1277578 (= res!848985 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28879))))

(declare-fun b!1277579 () Bool)

(declare-fun res!848988 () Bool)

(assert (=> b!1277579 (=> (not res!848988) (not e!729686))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83927 (_ BitVec 32)) Bool)

(assert (=> b!1277579 (= res!848988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun mapIsEmpty!51698 () Bool)

(assert (=> mapIsEmpty!51698 mapRes!51698))

(declare-fun res!848986 () Bool)

(assert (=> start!108234 (=> (not res!848986) (not e!729686))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108234 (= res!848986 (validMask!0 mask!1805))))

(assert (=> start!108234 e!729686))

(assert (=> start!108234 true))

(assert (=> start!108234 tp!98636))

(declare-fun tp_is_empty!33443 () Bool)

(assert (=> start!108234 tp_is_empty!33443))

(declare-fun e!729685 () Bool)

(declare-fun array_inv!30715 (array!83925) Bool)

(assert (=> start!108234 (and (array_inv!30715 _values!1187) e!729685)))

(declare-fun array_inv!30716 (array!83927) Bool)

(assert (=> start!108234 (array_inv!30716 _keys!1427)))

(declare-fun b!1277580 () Bool)

(declare-fun e!729689 () Bool)

(assert (=> b!1277580 (= e!729689 tp_is_empty!33443)))

(declare-fun b!1277581 () Bool)

(assert (=> b!1277581 (= e!729685 (and e!729689 mapRes!51698))))

(declare-fun condMapEmpty!51698 () Bool)

(declare-fun mapDefault!51698 () ValueCell!15823)

