; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71116 () Bool)

(assert start!71116)

(declare-fun b_free!13279 () Bool)

(declare-fun b_next!13279 () Bool)

(assert (=> start!71116 (= b_free!13279 (not b_next!13279))))

(declare-fun tp!46593 () Bool)

(declare-fun b_and!22211 () Bool)

(assert (=> start!71116 (= tp!46593 b_and!22211)))

(declare-fun res!562860 () Bool)

(declare-fun e!459546 () Bool)

(assert (=> start!71116 (=> (not res!562860) (not e!459546))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71116 (= res!562860 (validMask!0 mask!1312))))

(assert (=> start!71116 e!459546))

(declare-fun tp_is_empty!14989 () Bool)

(assert (=> start!71116 tp_is_empty!14989))

(declare-datatypes ((array!46120 0))(
  ( (array!46121 (arr!22102 (Array (_ BitVec 32) (_ BitVec 64))) (size!22523 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46120)

(declare-fun array_inv!17609 (array!46120) Bool)

(assert (=> start!71116 (array_inv!17609 _keys!976)))

(assert (=> start!71116 true))

(declare-datatypes ((V!24987 0))(
  ( (V!24988 (val!7542 Int)) )
))
(declare-datatypes ((ValueCell!7079 0))(
  ( (ValueCellFull!7079 (v!9971 V!24987)) (EmptyCell!7079) )
))
(declare-datatypes ((array!46122 0))(
  ( (array!46123 (arr!22103 (Array (_ BitVec 32) ValueCell!7079)) (size!22524 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46122)

(declare-fun e!459551 () Bool)

(declare-fun array_inv!17610 (array!46122) Bool)

(assert (=> start!71116 (and (array_inv!17610 _values!788) e!459551)))

(assert (=> start!71116 tp!46593))

(declare-fun b!825489 () Bool)

(declare-fun res!562857 () Bool)

(assert (=> b!825489 (=> (not res!562857) (not e!459546))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!825489 (= res!562857 (and (= (size!22524 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22523 _keys!976) (size!22524 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun zeroValueAfter!34 () V!24987)

(declare-datatypes ((tuple2!9986 0))(
  ( (tuple2!9987 (_1!5003 (_ BitVec 64)) (_2!5003 V!24987)) )
))
(declare-datatypes ((List!15830 0))(
  ( (Nil!15827) (Cons!15826 (h!16955 tuple2!9986) (t!22183 List!15830)) )
))
(declare-datatypes ((ListLongMap!8823 0))(
  ( (ListLongMap!8824 (toList!4427 List!15830)) )
))
(declare-fun lt!372917 () ListLongMap!8823)

(declare-fun lt!372920 () tuple2!9986)

(declare-fun lt!372919 () ListLongMap!8823)

(declare-fun e!459545 () Bool)

(declare-fun b!825490 () Bool)

(declare-fun +!1888 (ListLongMap!8823 tuple2!9986) ListLongMap!8823)

(assert (=> b!825490 (= e!459545 (= lt!372917 (+!1888 (+!1888 lt!372919 (tuple2!9987 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!372920)))))

(declare-fun b!825491 () Bool)

(declare-fun e!459550 () Bool)

(assert (=> b!825491 (= e!459550 tp_is_empty!14989)))

(declare-fun b!825492 () Bool)

(declare-fun e!459549 () Bool)

(assert (=> b!825492 (= e!459549 true)))

(declare-fun lt!372923 () ListLongMap!8823)

(declare-fun lt!372918 () tuple2!9986)

(declare-fun lt!372912 () ListLongMap!8823)

(assert (=> b!825492 (= lt!372912 (+!1888 (+!1888 lt!372923 lt!372918) lt!372920))))

(declare-fun lt!372913 () ListLongMap!8823)

(declare-fun lt!372911 () ListLongMap!8823)

(assert (=> b!825492 (and (= lt!372913 lt!372911) (= lt!372917 lt!372911) (= lt!372917 lt!372913))))

(declare-fun lt!372910 () ListLongMap!8823)

(assert (=> b!825492 (= lt!372911 (+!1888 lt!372910 lt!372918))))

(declare-fun lt!372921 () ListLongMap!8823)

(assert (=> b!825492 (= lt!372913 (+!1888 lt!372921 lt!372918))))

(declare-datatypes ((Unit!28295 0))(
  ( (Unit!28296) )
))
(declare-fun lt!372916 () Unit!28295)

(declare-fun zeroValueBefore!34 () V!24987)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!216 (ListLongMap!8823 (_ BitVec 64) V!24987 V!24987) Unit!28295)

(assert (=> b!825492 (= lt!372916 (addSameAsAddTwiceSameKeyDiffValues!216 lt!372921 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!459544 () Bool)

(assert (=> b!825492 e!459544))

(declare-fun res!562855 () Bool)

(assert (=> b!825492 (=> (not res!562855) (not e!459544))))

(declare-fun lt!372922 () ListLongMap!8823)

(assert (=> b!825492 (= res!562855 (= lt!372922 lt!372910))))

(declare-fun lt!372915 () tuple2!9986)

(assert (=> b!825492 (= lt!372910 (+!1888 lt!372921 lt!372915))))

(assert (=> b!825492 (= lt!372921 (+!1888 lt!372923 lt!372920))))

(assert (=> b!825492 (= lt!372918 (tuple2!9987 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!825492 e!459545))

(declare-fun res!562854 () Bool)

(assert (=> b!825492 (=> (not res!562854) (not e!459545))))

(assert (=> b!825492 (= res!562854 (= lt!372922 (+!1888 (+!1888 lt!372923 lt!372915) lt!372920)))))

(declare-fun minValue!754 () V!24987)

(assert (=> b!825492 (= lt!372920 (tuple2!9987 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!825492 (= lt!372915 (tuple2!9987 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2538 (array!46120 array!46122 (_ BitVec 32) (_ BitVec 32) V!24987 V!24987 (_ BitVec 32) Int) ListLongMap!8823)

(assert (=> b!825492 (= lt!372917 (getCurrentListMap!2538 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825492 (= lt!372922 (getCurrentListMap!2538 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825493 () Bool)

(assert (=> b!825493 (= e!459544 (= lt!372917 (+!1888 (+!1888 lt!372919 lt!372920) lt!372918)))))

(declare-fun mapNonEmpty!24106 () Bool)

(declare-fun mapRes!24106 () Bool)

(declare-fun tp!46594 () Bool)

(assert (=> mapNonEmpty!24106 (= mapRes!24106 (and tp!46594 e!459550))))

(declare-fun mapRest!24106 () (Array (_ BitVec 32) ValueCell!7079))

(declare-fun mapValue!24106 () ValueCell!7079)

(declare-fun mapKey!24106 () (_ BitVec 32))

(assert (=> mapNonEmpty!24106 (= (arr!22103 _values!788) (store mapRest!24106 mapKey!24106 mapValue!24106))))

(declare-fun b!825494 () Bool)

(declare-fun e!459548 () Bool)

(assert (=> b!825494 (= e!459548 tp_is_empty!14989)))

(declare-fun b!825495 () Bool)

(declare-fun res!562856 () Bool)

(assert (=> b!825495 (=> (not res!562856) (not e!459546))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46120 (_ BitVec 32)) Bool)

(assert (=> b!825495 (= res!562856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!825496 () Bool)

(declare-fun res!562859 () Bool)

(assert (=> b!825496 (=> (not res!562859) (not e!459546))))

(declare-datatypes ((List!15831 0))(
  ( (Nil!15828) (Cons!15827 (h!16956 (_ BitVec 64)) (t!22184 List!15831)) )
))
(declare-fun arrayNoDuplicates!0 (array!46120 (_ BitVec 32) List!15831) Bool)

(assert (=> b!825496 (= res!562859 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15828))))

(declare-fun mapIsEmpty!24106 () Bool)

(assert (=> mapIsEmpty!24106 mapRes!24106))

(declare-fun b!825497 () Bool)

(assert (=> b!825497 (= e!459546 (not e!459549))))

(declare-fun res!562858 () Bool)

(assert (=> b!825497 (=> res!562858 e!459549)))

(assert (=> b!825497 (= res!562858 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!825497 (= lt!372923 lt!372919)))

(declare-fun lt!372914 () Unit!28295)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!559 (array!46120 array!46122 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24987 V!24987 V!24987 V!24987 (_ BitVec 32) Int) Unit!28295)

(assert (=> b!825497 (= lt!372914 (lemmaNoChangeToArrayThenSameMapNoExtras!559 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2443 (array!46120 array!46122 (_ BitVec 32) (_ BitVec 32) V!24987 V!24987 (_ BitVec 32) Int) ListLongMap!8823)

(assert (=> b!825497 (= lt!372919 (getCurrentListMapNoExtraKeys!2443 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825497 (= lt!372923 (getCurrentListMapNoExtraKeys!2443 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825498 () Bool)

(assert (=> b!825498 (= e!459551 (and e!459548 mapRes!24106))))

(declare-fun condMapEmpty!24106 () Bool)

(declare-fun mapDefault!24106 () ValueCell!7079)

