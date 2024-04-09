; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71038 () Bool)

(assert start!71038)

(declare-fun b_free!13217 () Bool)

(declare-fun b_next!13217 () Bool)

(assert (=> start!71038 (= b_free!13217 (not b_next!13217))))

(declare-fun tp!46405 () Bool)

(declare-fun b_and!22139 () Bool)

(assert (=> start!71038 (= tp!46405 b_and!22139)))

(declare-fun res!562221 () Bool)

(declare-fun e!458780 () Bool)

(assert (=> start!71038 (=> (not res!562221) (not e!458780))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71038 (= res!562221 (validMask!0 mask!1312))))

(assert (=> start!71038 e!458780))

(declare-fun tp_is_empty!14927 () Bool)

(assert (=> start!71038 tp_is_empty!14927))

(declare-datatypes ((array!46000 0))(
  ( (array!46001 (arr!22043 (Array (_ BitVec 32) (_ BitVec 64))) (size!22464 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46000)

(declare-fun array_inv!17567 (array!46000) Bool)

(assert (=> start!71038 (array_inv!17567 _keys!976)))

(assert (=> start!71038 true))

(declare-datatypes ((V!24903 0))(
  ( (V!24904 (val!7511 Int)) )
))
(declare-datatypes ((ValueCell!7048 0))(
  ( (ValueCellFull!7048 (v!9940 V!24903)) (EmptyCell!7048) )
))
(declare-datatypes ((array!46002 0))(
  ( (array!46003 (arr!22044 (Array (_ BitVec 32) ValueCell!7048)) (size!22465 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46002)

(declare-fun e!458783 () Bool)

(declare-fun array_inv!17568 (array!46002) Bool)

(assert (=> start!71038 (and (array_inv!17568 _values!788) e!458783)))

(assert (=> start!71038 tp!46405))

(declare-fun b!824485 () Bool)

(declare-fun res!562223 () Bool)

(assert (=> b!824485 (=> (not res!562223) (not e!458780))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!824485 (= res!562223 (and (= (size!22465 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22464 _keys!976) (size!22465 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!824486 () Bool)

(declare-fun res!562219 () Bool)

(assert (=> b!824486 (=> (not res!562219) (not e!458780))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46000 (_ BitVec 32)) Bool)

(assert (=> b!824486 (= res!562219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!824487 () Bool)

(declare-fun e!458784 () Bool)

(assert (=> b!824487 (= e!458784 true)))

(declare-fun zeroValueBefore!34 () V!24903)

(declare-datatypes ((tuple2!9930 0))(
  ( (tuple2!9931 (_1!4975 (_ BitVec 64)) (_2!4975 V!24903)) )
))
(declare-datatypes ((List!15782 0))(
  ( (Nil!15779) (Cons!15778 (h!16907 tuple2!9930) (t!22133 List!15782)) )
))
(declare-datatypes ((ListLongMap!8767 0))(
  ( (ListLongMap!8768 (toList!4399 List!15782)) )
))
(declare-fun lt!371875 () ListLongMap!8767)

(declare-fun minValue!754 () V!24903)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2512 (array!46000 array!46002 (_ BitVec 32) (_ BitVec 32) V!24903 V!24903 (_ BitVec 32) Int) ListLongMap!8767)

(assert (=> b!824487 (= lt!371875 (getCurrentListMap!2512 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824488 () Bool)

(assert (=> b!824488 (= e!458780 (not e!458784))))

(declare-fun res!562220 () Bool)

(assert (=> b!824488 (=> res!562220 e!458784)))

(assert (=> b!824488 (= res!562220 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!371872 () ListLongMap!8767)

(declare-fun lt!371874 () ListLongMap!8767)

(assert (=> b!824488 (= lt!371872 lt!371874)))

(declare-fun zeroValueAfter!34 () V!24903)

(declare-datatypes ((Unit!28242 0))(
  ( (Unit!28243) )
))
(declare-fun lt!371873 () Unit!28242)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!536 (array!46000 array!46002 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24903 V!24903 V!24903 V!24903 (_ BitVec 32) Int) Unit!28242)

(assert (=> b!824488 (= lt!371873 (lemmaNoChangeToArrayThenSameMapNoExtras!536 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2420 (array!46000 array!46002 (_ BitVec 32) (_ BitVec 32) V!24903 V!24903 (_ BitVec 32) Int) ListLongMap!8767)

(assert (=> b!824488 (= lt!371874 (getCurrentListMapNoExtraKeys!2420 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824488 (= lt!371872 (getCurrentListMapNoExtraKeys!2420 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824489 () Bool)

(declare-fun e!458781 () Bool)

(declare-fun mapRes!24010 () Bool)

(assert (=> b!824489 (= e!458783 (and e!458781 mapRes!24010))))

(declare-fun condMapEmpty!24010 () Bool)

(declare-fun mapDefault!24010 () ValueCell!7048)

