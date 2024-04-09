; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71242 () Bool)

(assert start!71242)

(declare-fun b_free!13365 () Bool)

(declare-fun b_next!13365 () Bool)

(assert (=> start!71242 (= b_free!13365 (not b_next!13365))))

(declare-fun tp!46857 () Bool)

(declare-fun b_and!22321 () Bool)

(assert (=> start!71242 (= tp!46857 b_and!22321)))

(declare-fun b!827122 () Bool)

(declare-fun res!563899 () Bool)

(declare-fun e!460771 () Bool)

(assert (=> b!827122 (=> (not res!563899) (not e!460771))))

(declare-datatypes ((array!46284 0))(
  ( (array!46285 (arr!22182 (Array (_ BitVec 32) (_ BitVec 64))) (size!22603 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46284)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25101 0))(
  ( (V!25102 (val!7585 Int)) )
))
(declare-datatypes ((ValueCell!7122 0))(
  ( (ValueCellFull!7122 (v!10016 V!25101)) (EmptyCell!7122) )
))
(declare-datatypes ((array!46286 0))(
  ( (array!46287 (arr!22183 (Array (_ BitVec 32) ValueCell!7122)) (size!22604 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46286)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!827122 (= res!563899 (and (= (size!22604 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22603 _keys!976) (size!22604 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!827123 () Bool)

(declare-fun e!460769 () Bool)

(declare-fun tp_is_empty!15075 () Bool)

(assert (=> b!827123 (= e!460769 tp_is_empty!15075)))

(declare-fun mapNonEmpty!24241 () Bool)

(declare-fun mapRes!24241 () Bool)

(declare-fun tp!46858 () Bool)

(assert (=> mapNonEmpty!24241 (= mapRes!24241 (and tp!46858 e!460769))))

(declare-fun mapValue!24241 () ValueCell!7122)

(declare-fun mapKey!24241 () (_ BitVec 32))

(declare-fun mapRest!24241 () (Array (_ BitVec 32) ValueCell!7122))

(assert (=> mapNonEmpty!24241 (= (arr!22183 _values!788) (store mapRest!24241 mapKey!24241 mapValue!24241))))

(declare-fun b!827124 () Bool)

(declare-fun res!563896 () Bool)

(assert (=> b!827124 (=> (not res!563896) (not e!460771))))

(declare-datatypes ((List!15897 0))(
  ( (Nil!15894) (Cons!15893 (h!17022 (_ BitVec 64)) (t!22254 List!15897)) )
))
(declare-fun arrayNoDuplicates!0 (array!46284 (_ BitVec 32) List!15897) Bool)

(assert (=> b!827124 (= res!563896 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15894))))

(declare-fun res!563897 () Bool)

(assert (=> start!71242 (=> (not res!563897) (not e!460771))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71242 (= res!563897 (validMask!0 mask!1312))))

(assert (=> start!71242 e!460771))

(assert (=> start!71242 tp_is_empty!15075))

(declare-fun array_inv!17661 (array!46284) Bool)

(assert (=> start!71242 (array_inv!17661 _keys!976)))

(assert (=> start!71242 true))

(declare-fun e!460768 () Bool)

(declare-fun array_inv!17662 (array!46286) Bool)

(assert (=> start!71242 (and (array_inv!17662 _values!788) e!460768)))

(assert (=> start!71242 tp!46857))

(declare-fun mapIsEmpty!24241 () Bool)

(assert (=> mapIsEmpty!24241 mapRes!24241))

(declare-fun b!827125 () Bool)

(declare-fun res!563898 () Bool)

(assert (=> b!827125 (=> (not res!563898) (not e!460771))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46284 (_ BitVec 32)) Bool)

(assert (=> b!827125 (= res!563898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827126 () Bool)

(declare-fun e!460767 () Bool)

(assert (=> b!827126 (= e!460767 tp_is_empty!15075)))

(declare-fun b!827127 () Bool)

(assert (=> b!827127 (= e!460771 false)))

(declare-fun zeroValueAfter!34 () V!25101)

(declare-fun minValue!754 () V!25101)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!10062 0))(
  ( (tuple2!10063 (_1!5041 (_ BitVec 64)) (_2!5041 V!25101)) )
))
(declare-datatypes ((List!15898 0))(
  ( (Nil!15895) (Cons!15894 (h!17023 tuple2!10062) (t!22255 List!15898)) )
))
(declare-datatypes ((ListLongMap!8899 0))(
  ( (ListLongMap!8900 (toList!4465 List!15898)) )
))
(declare-fun lt!374806 () ListLongMap!8899)

(declare-fun getCurrentListMapNoExtraKeys!2472 (array!46284 array!46286 (_ BitVec 32) (_ BitVec 32) V!25101 V!25101 (_ BitVec 32) Int) ListLongMap!8899)

(assert (=> b!827127 (= lt!374806 (getCurrentListMapNoExtraKeys!2472 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25101)

(declare-fun lt!374805 () ListLongMap!8899)

(assert (=> b!827127 (= lt!374805 (getCurrentListMapNoExtraKeys!2472 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!827128 () Bool)

(assert (=> b!827128 (= e!460768 (and e!460767 mapRes!24241))))

(declare-fun condMapEmpty!24241 () Bool)

(declare-fun mapDefault!24241 () ValueCell!7122)

(assert (=> b!827128 (= condMapEmpty!24241 (= (arr!22183 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7122)) mapDefault!24241)))))

(assert (= (and start!71242 res!563897) b!827122))

(assert (= (and b!827122 res!563899) b!827125))

(assert (= (and b!827125 res!563898) b!827124))

(assert (= (and b!827124 res!563896) b!827127))

(assert (= (and b!827128 condMapEmpty!24241) mapIsEmpty!24241))

(assert (= (and b!827128 (not condMapEmpty!24241)) mapNonEmpty!24241))

(get-info :version)

(assert (= (and mapNonEmpty!24241 ((_ is ValueCellFull!7122) mapValue!24241)) b!827123))

(assert (= (and b!827128 ((_ is ValueCellFull!7122) mapDefault!24241)) b!827126))

(assert (= start!71242 b!827128))

(declare-fun m!770333 () Bool)

(assert (=> b!827124 m!770333))

(declare-fun m!770335 () Bool)

(assert (=> mapNonEmpty!24241 m!770335))

(declare-fun m!770337 () Bool)

(assert (=> b!827127 m!770337))

(declare-fun m!770339 () Bool)

(assert (=> b!827127 m!770339))

(declare-fun m!770341 () Bool)

(assert (=> start!71242 m!770341))

(declare-fun m!770343 () Bool)

(assert (=> start!71242 m!770343))

(declare-fun m!770345 () Bool)

(assert (=> start!71242 m!770345))

(declare-fun m!770347 () Bool)

(assert (=> b!827125 m!770347))

(check-sat (not b!827124) (not b!827125) b_and!22321 (not b!827127) (not mapNonEmpty!24241) (not b_next!13365) tp_is_empty!15075 (not start!71242))
(check-sat b_and!22321 (not b_next!13365))
