; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42572 () Bool)

(assert start!42572)

(declare-fun b_free!11999 () Bool)

(declare-fun b_next!11999 () Bool)

(assert (=> start!42572 (= b_free!11999 (not b_next!11999))))

(declare-fun tp!42037 () Bool)

(declare-fun b_and!20497 () Bool)

(assert (=> start!42572 (= tp!42037 b_and!20497)))

(declare-fun b!474683 () Bool)

(declare-fun e!278671 () Bool)

(declare-fun tp_is_empty!13427 () Bool)

(assert (=> b!474683 (= e!278671 tp_is_empty!13427)))

(declare-fun b!474684 () Bool)

(declare-fun res!283566 () Bool)

(declare-fun e!278668 () Bool)

(assert (=> b!474684 (=> (not res!283566) (not e!278668))))

(declare-datatypes ((array!30573 0))(
  ( (array!30574 (arr!14701 (Array (_ BitVec 32) (_ BitVec 64))) (size!15053 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30573)

(declare-datatypes ((List!9021 0))(
  ( (Nil!9018) (Cons!9017 (h!9873 (_ BitVec 64)) (t!15003 List!9021)) )
))
(declare-fun arrayNoDuplicates!0 (array!30573 (_ BitVec 32) List!9021) Bool)

(assert (=> b!474684 (= res!283566 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9018))))

(declare-fun res!283568 () Bool)

(assert (=> start!42572 (=> (not res!283568) (not e!278668))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42572 (= res!283568 (validMask!0 mask!1365))))

(assert (=> start!42572 e!278668))

(assert (=> start!42572 tp_is_empty!13427))

(assert (=> start!42572 tp!42037))

(assert (=> start!42572 true))

(declare-fun array_inv!10594 (array!30573) Bool)

(assert (=> start!42572 (array_inv!10594 _keys!1025)))

(declare-datatypes ((V!19007 0))(
  ( (V!19008 (val!6758 Int)) )
))
(declare-datatypes ((ValueCell!6370 0))(
  ( (ValueCellFull!6370 (v!9047 V!19007)) (EmptyCell!6370) )
))
(declare-datatypes ((array!30575 0))(
  ( (array!30576 (arr!14702 (Array (_ BitVec 32) ValueCell!6370)) (size!15054 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30575)

(declare-fun e!278667 () Bool)

(declare-fun array_inv!10595 (array!30575) Bool)

(assert (=> start!42572 (and (array_inv!10595 _values!833) e!278667)))

(declare-fun mapIsEmpty!21859 () Bool)

(declare-fun mapRes!21859 () Bool)

(assert (=> mapIsEmpty!21859 mapRes!21859))

(declare-fun b!474685 () Bool)

(declare-fun res!283569 () Bool)

(assert (=> b!474685 (=> (not res!283569) (not e!278668))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30573 (_ BitVec 32)) Bool)

(assert (=> b!474685 (= res!283569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!474686 () Bool)

(declare-fun e!278669 () Bool)

(assert (=> b!474686 (= e!278669 tp_is_empty!13427)))

(declare-fun b!474687 () Bool)

(assert (=> b!474687 (= e!278668 false)))

(declare-datatypes ((tuple2!8908 0))(
  ( (tuple2!8909 (_1!4464 (_ BitVec 64)) (_2!4464 V!19007)) )
))
(declare-datatypes ((List!9022 0))(
  ( (Nil!9019) (Cons!9018 (h!9874 tuple2!8908) (t!15004 List!9022)) )
))
(declare-datatypes ((ListLongMap!7835 0))(
  ( (ListLongMap!7836 (toList!3933 List!9022)) )
))
(declare-fun lt!216278 () ListLongMap!7835)

(declare-fun zeroValue!794 () V!19007)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!19007)

(declare-fun getCurrentListMapNoExtraKeys!2087 (array!30573 array!30575 (_ BitVec 32) (_ BitVec 32) V!19007 V!19007 (_ BitVec 32) Int) ListLongMap!7835)

(assert (=> b!474687 (= lt!216278 (getCurrentListMapNoExtraKeys!2087 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!19007)

(declare-fun lt!216279 () ListLongMap!7835)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!474687 (= lt!216279 (getCurrentListMapNoExtraKeys!2087 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21859 () Bool)

(declare-fun tp!42036 () Bool)

(assert (=> mapNonEmpty!21859 (= mapRes!21859 (and tp!42036 e!278671))))

(declare-fun mapRest!21859 () (Array (_ BitVec 32) ValueCell!6370))

(declare-fun mapKey!21859 () (_ BitVec 32))

(declare-fun mapValue!21859 () ValueCell!6370)

(assert (=> mapNonEmpty!21859 (= (arr!14702 _values!833) (store mapRest!21859 mapKey!21859 mapValue!21859))))

(declare-fun b!474688 () Bool)

(declare-fun res!283567 () Bool)

(assert (=> b!474688 (=> (not res!283567) (not e!278668))))

(assert (=> b!474688 (= res!283567 (and (= (size!15054 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15053 _keys!1025) (size!15054 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!474689 () Bool)

(assert (=> b!474689 (= e!278667 (and e!278669 mapRes!21859))))

(declare-fun condMapEmpty!21859 () Bool)

(declare-fun mapDefault!21859 () ValueCell!6370)

