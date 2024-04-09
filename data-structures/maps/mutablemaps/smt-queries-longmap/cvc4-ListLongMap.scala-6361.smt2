; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81934 () Bool)

(assert start!81934)

(declare-fun b_free!18401 () Bool)

(declare-fun b_next!18401 () Bool)

(assert (=> start!81934 (= b_free!18401 (not b_next!18401))))

(declare-fun tp!63904 () Bool)

(declare-fun b_and!29905 () Bool)

(assert (=> start!81934 (= tp!63904 b_and!29905)))

(declare-fun b!955167 () Bool)

(declare-fun e!538142 () Bool)

(assert (=> b!955167 (= e!538142 (not true))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32909 0))(
  ( (V!32910 (val!10523 Int)) )
))
(declare-fun zeroValue!1139 () V!32909)

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((array!58015 0))(
  ( (array!58016 (arr!27883 (Array (_ BitVec 32) (_ BitVec 64))) (size!28363 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58015)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9991 0))(
  ( (ValueCellFull!9991 (v!13078 V!32909)) (EmptyCell!9991) )
))
(declare-datatypes ((array!58017 0))(
  ( (array!58018 (arr!27884 (Array (_ BitVec 32) ValueCell!9991)) (size!28364 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58017)

(declare-fun minValue!1139 () V!32909)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13758 0))(
  ( (tuple2!13759 (_1!6889 (_ BitVec 64)) (_2!6889 V!32909)) )
))
(declare-datatypes ((List!19576 0))(
  ( (Nil!19573) (Cons!19572 (h!20734 tuple2!13758) (t!27945 List!19576)) )
))
(declare-datatypes ((ListLongMap!12469 0))(
  ( (ListLongMap!12470 (toList!6250 List!19576)) )
))
(declare-fun contains!5300 (ListLongMap!12469 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3435 (array!58015 array!58017 (_ BitVec 32) (_ BitVec 32) V!32909 V!32909 (_ BitVec 32) Int) ListLongMap!12469)

(assert (=> b!955167 (contains!5300 (getCurrentListMap!3435 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!27883 _keys!1441) i!735))))

(declare-datatypes ((Unit!32101 0))(
  ( (Unit!32102) )
))
(declare-fun lt!429940 () Unit!32101)

(declare-fun lemmaInListMapFromThenFromZero!7 (array!58015 array!58017 (_ BitVec 32) (_ BitVec 32) V!32909 V!32909 (_ BitVec 32) (_ BitVec 32) Int) Unit!32101)

(assert (=> b!955167 (= lt!429940 (lemmaInListMapFromThenFromZero!7 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun mapIsEmpty!33379 () Bool)

(declare-fun mapRes!33379 () Bool)

(assert (=> mapIsEmpty!33379 mapRes!33379))

(declare-fun res!639746 () Bool)

(assert (=> start!81934 (=> (not res!639746) (not e!538142))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81934 (= res!639746 (validMask!0 mask!1823))))

(assert (=> start!81934 e!538142))

(assert (=> start!81934 true))

(declare-fun tp_is_empty!20945 () Bool)

(assert (=> start!81934 tp_is_empty!20945))

(declare-fun array_inv!21589 (array!58015) Bool)

(assert (=> start!81934 (array_inv!21589 _keys!1441)))

(declare-fun e!538143 () Bool)

(declare-fun array_inv!21590 (array!58017) Bool)

(assert (=> start!81934 (and (array_inv!21590 _values!1197) e!538143)))

(assert (=> start!81934 tp!63904))

(declare-fun b!955168 () Bool)

(declare-fun res!639742 () Bool)

(assert (=> b!955168 (=> (not res!639742) (not e!538142))))

(assert (=> b!955168 (= res!639742 (and (= (size!28364 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28363 _keys!1441) (size!28364 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!955169 () Bool)

(declare-fun res!639748 () Bool)

(assert (=> b!955169 (=> (not res!639748) (not e!538142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58015 (_ BitVec 32)) Bool)

(assert (=> b!955169 (= res!639748 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!955170 () Bool)

(declare-fun res!639747 () Bool)

(assert (=> b!955170 (=> (not res!639747) (not e!538142))))

(declare-datatypes ((List!19577 0))(
  ( (Nil!19574) (Cons!19573 (h!20735 (_ BitVec 64)) (t!27946 List!19577)) )
))
(declare-fun arrayNoDuplicates!0 (array!58015 (_ BitVec 32) List!19577) Bool)

(assert (=> b!955170 (= res!639747 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19574))))

(declare-fun b!955171 () Bool)

(declare-fun e!538145 () Bool)

(assert (=> b!955171 (= e!538145 tp_is_empty!20945)))

(declare-fun b!955172 () Bool)

(declare-fun res!639744 () Bool)

(assert (=> b!955172 (=> (not res!639744) (not e!538142))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!955172 (= res!639744 (validKeyInArray!0 (select (arr!27883 _keys!1441) i!735)))))

(declare-fun b!955173 () Bool)

(declare-fun e!538144 () Bool)

(assert (=> b!955173 (= e!538144 tp_is_empty!20945)))

(declare-fun mapNonEmpty!33379 () Bool)

(declare-fun tp!63903 () Bool)

(assert (=> mapNonEmpty!33379 (= mapRes!33379 (and tp!63903 e!538144))))

(declare-fun mapKey!33379 () (_ BitVec 32))

(declare-fun mapRest!33379 () (Array (_ BitVec 32) ValueCell!9991))

(declare-fun mapValue!33379 () ValueCell!9991)

(assert (=> mapNonEmpty!33379 (= (arr!27884 _values!1197) (store mapRest!33379 mapKey!33379 mapValue!33379))))

(declare-fun b!955174 () Bool)

(assert (=> b!955174 (= e!538143 (and e!538145 mapRes!33379))))

(declare-fun condMapEmpty!33379 () Bool)

(declare-fun mapDefault!33379 () ValueCell!9991)

