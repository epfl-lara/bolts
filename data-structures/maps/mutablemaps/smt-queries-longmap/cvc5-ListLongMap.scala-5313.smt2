; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71122 () Bool)

(assert start!71122)

(declare-fun b_free!13285 () Bool)

(declare-fun b_next!13285 () Bool)

(assert (=> start!71122 (= b_free!13285 (not b_next!13285))))

(declare-fun tp!46611 () Bool)

(declare-fun b_and!22217 () Bool)

(assert (=> start!71122 (= tp!46611 b_and!22217)))

(declare-fun b!825579 () Bool)

(declare-fun res!562921 () Bool)

(declare-fun e!459617 () Bool)

(assert (=> b!825579 (=> (not res!562921) (not e!459617))))

(declare-datatypes ((array!46132 0))(
  ( (array!46133 (arr!22108 (Array (_ BitVec 32) (_ BitVec 64))) (size!22529 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46132)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46132 (_ BitVec 32)) Bool)

(assert (=> b!825579 (= res!562921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!825580 () Bool)

(declare-fun e!459619 () Bool)

(declare-fun tp_is_empty!14995 () Bool)

(assert (=> b!825580 (= e!459619 tp_is_empty!14995)))

(declare-datatypes ((V!24995 0))(
  ( (V!24996 (val!7545 Int)) )
))
(declare-datatypes ((tuple2!9992 0))(
  ( (tuple2!9993 (_1!5006 (_ BitVec 64)) (_2!5006 V!24995)) )
))
(declare-fun lt!373043 () tuple2!9992)

(declare-fun b!825581 () Bool)

(declare-datatypes ((List!15836 0))(
  ( (Nil!15833) (Cons!15832 (h!16961 tuple2!9992) (t!22189 List!15836)) )
))
(declare-datatypes ((ListLongMap!8829 0))(
  ( (ListLongMap!8830 (toList!4430 List!15836)) )
))
(declare-fun lt!373045 () ListLongMap!8829)

(declare-fun zeroValueAfter!34 () V!24995)

(declare-fun e!459623 () Bool)

(declare-fun lt!373044 () ListLongMap!8829)

(declare-fun +!1891 (ListLongMap!8829 tuple2!9992) ListLongMap!8829)

(assert (=> b!825581 (= e!459623 (= lt!373045 (+!1891 (+!1891 lt!373044 (tuple2!9993 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!373043)))))

(declare-fun mapIsEmpty!24115 () Bool)

(declare-fun mapRes!24115 () Bool)

(assert (=> mapIsEmpty!24115 mapRes!24115))

(declare-fun res!562919 () Bool)

(assert (=> start!71122 (=> (not res!562919) (not e!459617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71122 (= res!562919 (validMask!0 mask!1312))))

(assert (=> start!71122 e!459617))

(assert (=> start!71122 tp_is_empty!14995))

(declare-fun array_inv!17613 (array!46132) Bool)

(assert (=> start!71122 (array_inv!17613 _keys!976)))

(assert (=> start!71122 true))

(declare-datatypes ((ValueCell!7082 0))(
  ( (ValueCellFull!7082 (v!9974 V!24995)) (EmptyCell!7082) )
))
(declare-datatypes ((array!46134 0))(
  ( (array!46135 (arr!22109 (Array (_ BitVec 32) ValueCell!7082)) (size!22530 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46134)

(declare-fun e!459618 () Bool)

(declare-fun array_inv!17614 (array!46134) Bool)

(assert (=> start!71122 (and (array_inv!17614 _values!788) e!459618)))

(assert (=> start!71122 tp!46611))

(declare-fun b!825582 () Bool)

(declare-fun res!562923 () Bool)

(assert (=> b!825582 (=> (not res!562923) (not e!459617))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!825582 (= res!562923 (and (= (size!22530 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22529 _keys!976) (size!22530 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!825583 () Bool)

(declare-fun e!459621 () Bool)

(assert (=> b!825583 (= e!459621 true)))

(declare-fun lt!373039 () tuple2!9992)

(declare-fun lt!373047 () ListLongMap!8829)

(declare-fun lt!373041 () ListLongMap!8829)

(assert (=> b!825583 (= lt!373047 (+!1891 (+!1891 lt!373041 lt!373039) lt!373043))))

(declare-fun lt!373036 () ListLongMap!8829)

(declare-fun lt!373049 () ListLongMap!8829)

(assert (=> b!825583 (and (= lt!373036 lt!373049) (= lt!373045 lt!373049) (= lt!373045 lt!373036))))

(declare-fun lt!373040 () ListLongMap!8829)

(assert (=> b!825583 (= lt!373049 (+!1891 lt!373040 lt!373039))))

(declare-fun lt!373038 () ListLongMap!8829)

(assert (=> b!825583 (= lt!373036 (+!1891 lt!373038 lt!373039))))

(declare-fun zeroValueBefore!34 () V!24995)

(declare-datatypes ((Unit!28301 0))(
  ( (Unit!28302) )
))
(declare-fun lt!373042 () Unit!28301)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!219 (ListLongMap!8829 (_ BitVec 64) V!24995 V!24995) Unit!28301)

(assert (=> b!825583 (= lt!373042 (addSameAsAddTwiceSameKeyDiffValues!219 lt!373038 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!459622 () Bool)

(assert (=> b!825583 e!459622))

(declare-fun res!562918 () Bool)

(assert (=> b!825583 (=> (not res!562918) (not e!459622))))

(declare-fun lt!373046 () ListLongMap!8829)

(assert (=> b!825583 (= res!562918 (= lt!373046 lt!373040))))

(declare-fun lt!373037 () tuple2!9992)

(assert (=> b!825583 (= lt!373040 (+!1891 lt!373038 lt!373037))))

(assert (=> b!825583 (= lt!373038 (+!1891 lt!373041 lt!373043))))

(assert (=> b!825583 (= lt!373039 (tuple2!9993 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!825583 e!459623))

(declare-fun res!562922 () Bool)

(assert (=> b!825583 (=> (not res!562922) (not e!459623))))

(assert (=> b!825583 (= res!562922 (= lt!373046 (+!1891 (+!1891 lt!373041 lt!373037) lt!373043)))))

(declare-fun minValue!754 () V!24995)

(assert (=> b!825583 (= lt!373043 (tuple2!9993 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!825583 (= lt!373037 (tuple2!9993 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2541 (array!46132 array!46134 (_ BitVec 32) (_ BitVec 32) V!24995 V!24995 (_ BitVec 32) Int) ListLongMap!8829)

(assert (=> b!825583 (= lt!373045 (getCurrentListMap!2541 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825583 (= lt!373046 (getCurrentListMap!2541 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!24115 () Bool)

(declare-fun tp!46612 () Bool)

(assert (=> mapNonEmpty!24115 (= mapRes!24115 (and tp!46612 e!459619))))

(declare-fun mapKey!24115 () (_ BitVec 32))

(declare-fun mapValue!24115 () ValueCell!7082)

(declare-fun mapRest!24115 () (Array (_ BitVec 32) ValueCell!7082))

(assert (=> mapNonEmpty!24115 (= (arr!22109 _values!788) (store mapRest!24115 mapKey!24115 mapValue!24115))))

(declare-fun b!825584 () Bool)

(declare-fun e!459616 () Bool)

(assert (=> b!825584 (= e!459616 tp_is_empty!14995)))

(declare-fun b!825585 () Bool)

(assert (=> b!825585 (= e!459622 (= lt!373045 (+!1891 (+!1891 lt!373044 lt!373043) lt!373039)))))

(declare-fun b!825586 () Bool)

(assert (=> b!825586 (= e!459617 (not e!459621))))

(declare-fun res!562917 () Bool)

(assert (=> b!825586 (=> res!562917 e!459621)))

(assert (=> b!825586 (= res!562917 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!825586 (= lt!373041 lt!373044)))

(declare-fun lt!373048 () Unit!28301)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!562 (array!46132 array!46134 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24995 V!24995 V!24995 V!24995 (_ BitVec 32) Int) Unit!28301)

(assert (=> b!825586 (= lt!373048 (lemmaNoChangeToArrayThenSameMapNoExtras!562 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2446 (array!46132 array!46134 (_ BitVec 32) (_ BitVec 32) V!24995 V!24995 (_ BitVec 32) Int) ListLongMap!8829)

(assert (=> b!825586 (= lt!373044 (getCurrentListMapNoExtraKeys!2446 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825586 (= lt!373041 (getCurrentListMapNoExtraKeys!2446 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825587 () Bool)

(assert (=> b!825587 (= e!459618 (and e!459616 mapRes!24115))))

(declare-fun condMapEmpty!24115 () Bool)

(declare-fun mapDefault!24115 () ValueCell!7082)

