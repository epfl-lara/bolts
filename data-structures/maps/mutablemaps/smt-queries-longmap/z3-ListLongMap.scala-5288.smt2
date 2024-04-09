; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70944 () Bool)

(assert start!70944)

(declare-fun b_free!13137 () Bool)

(declare-fun b_next!13137 () Bool)

(assert (=> start!70944 (= b_free!13137 (not b_next!13137))))

(declare-fun tp!46161 () Bool)

(declare-fun b_and!22051 () Bool)

(assert (=> start!70944 (= tp!46161 b_and!22051)))

(declare-fun b!823516 () Bool)

(declare-fun res!561665 () Bool)

(declare-fun e!458082 () Bool)

(assert (=> b!823516 (=> (not res!561665) (not e!458082))))

(declare-datatypes ((array!45844 0))(
  ( (array!45845 (arr!21966 (Array (_ BitVec 32) (_ BitVec 64))) (size!22387 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45844)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24797 0))(
  ( (V!24798 (val!7471 Int)) )
))
(declare-datatypes ((ValueCell!7008 0))(
  ( (ValueCellFull!7008 (v!9900 V!24797)) (EmptyCell!7008) )
))
(declare-datatypes ((array!45846 0))(
  ( (array!45847 (arr!21967 (Array (_ BitVec 32) ValueCell!7008)) (size!22388 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45846)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!823516 (= res!561665 (and (= (size!22388 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22387 _keys!976) (size!22388 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!561666 () Bool)

(assert (=> start!70944 (=> (not res!561666) (not e!458082))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70944 (= res!561666 (validMask!0 mask!1312))))

(assert (=> start!70944 e!458082))

(declare-fun tp_is_empty!14847 () Bool)

(assert (=> start!70944 tp_is_empty!14847))

(declare-fun array_inv!17503 (array!45844) Bool)

(assert (=> start!70944 (array_inv!17503 _keys!976)))

(assert (=> start!70944 true))

(declare-fun e!458083 () Bool)

(declare-fun array_inv!17504 (array!45846) Bool)

(assert (=> start!70944 (and (array_inv!17504 _values!788) e!458083)))

(assert (=> start!70944 tp!46161))

(declare-fun b!823517 () Bool)

(declare-fun e!458081 () Bool)

(declare-fun mapRes!23887 () Bool)

(assert (=> b!823517 (= e!458083 (and e!458081 mapRes!23887))))

(declare-fun condMapEmpty!23887 () Bool)

(declare-fun mapDefault!23887 () ValueCell!7008)

(assert (=> b!823517 (= condMapEmpty!23887 (= (arr!21967 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7008)) mapDefault!23887)))))

(declare-fun b!823518 () Bool)

(declare-fun res!561667 () Bool)

(assert (=> b!823518 (=> (not res!561667) (not e!458082))))

(declare-datatypes ((List!15730 0))(
  ( (Nil!15727) (Cons!15726 (h!16855 (_ BitVec 64)) (t!22079 List!15730)) )
))
(declare-fun arrayNoDuplicates!0 (array!45844 (_ BitVec 32) List!15730) Bool)

(assert (=> b!823518 (= res!561667 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15727))))

(declare-fun mapIsEmpty!23887 () Bool)

(assert (=> mapIsEmpty!23887 mapRes!23887))

(declare-fun mapNonEmpty!23887 () Bool)

(declare-fun tp!46162 () Bool)

(declare-fun e!458084 () Bool)

(assert (=> mapNonEmpty!23887 (= mapRes!23887 (and tp!46162 e!458084))))

(declare-fun mapValue!23887 () ValueCell!7008)

(declare-fun mapKey!23887 () (_ BitVec 32))

(declare-fun mapRest!23887 () (Array (_ BitVec 32) ValueCell!7008))

(assert (=> mapNonEmpty!23887 (= (arr!21967 _values!788) (store mapRest!23887 mapKey!23887 mapValue!23887))))

(declare-fun b!823519 () Bool)

(assert (=> b!823519 (= e!458082 (not true))))

(declare-datatypes ((tuple2!9872 0))(
  ( (tuple2!9873 (_1!4946 (_ BitVec 64)) (_2!4946 V!24797)) )
))
(declare-datatypes ((List!15731 0))(
  ( (Nil!15728) (Cons!15727 (h!16856 tuple2!9872) (t!22080 List!15731)) )
))
(declare-datatypes ((ListLongMap!8709 0))(
  ( (ListLongMap!8710 (toList!4370 List!15731)) )
))
(declare-fun lt!371428 () ListLongMap!8709)

(declare-fun lt!371430 () ListLongMap!8709)

(assert (=> b!823519 (= lt!371428 lt!371430)))

(declare-fun zeroValueBefore!34 () V!24797)

(declare-fun zeroValueAfter!34 () V!24797)

(declare-fun minValue!754 () V!24797)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28186 0))(
  ( (Unit!28187) )
))
(declare-fun lt!371429 () Unit!28186)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!508 (array!45844 array!45846 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24797 V!24797 V!24797 V!24797 (_ BitVec 32) Int) Unit!28186)

(assert (=> b!823519 (= lt!371429 (lemmaNoChangeToArrayThenSameMapNoExtras!508 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2392 (array!45844 array!45846 (_ BitVec 32) (_ BitVec 32) V!24797 V!24797 (_ BitVec 32) Int) ListLongMap!8709)

(assert (=> b!823519 (= lt!371430 (getCurrentListMapNoExtraKeys!2392 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!823519 (= lt!371428 (getCurrentListMapNoExtraKeys!2392 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!823520 () Bool)

(assert (=> b!823520 (= e!458084 tp_is_empty!14847)))

(declare-fun b!823521 () Bool)

(declare-fun res!561664 () Bool)

(assert (=> b!823521 (=> (not res!561664) (not e!458082))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45844 (_ BitVec 32)) Bool)

(assert (=> b!823521 (= res!561664 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!823522 () Bool)

(assert (=> b!823522 (= e!458081 tp_is_empty!14847)))

(assert (= (and start!70944 res!561666) b!823516))

(assert (= (and b!823516 res!561665) b!823521))

(assert (= (and b!823521 res!561664) b!823518))

(assert (= (and b!823518 res!561667) b!823519))

(assert (= (and b!823517 condMapEmpty!23887) mapIsEmpty!23887))

(assert (= (and b!823517 (not condMapEmpty!23887)) mapNonEmpty!23887))

(get-info :version)

(assert (= (and mapNonEmpty!23887 ((_ is ValueCellFull!7008) mapValue!23887)) b!823520))

(assert (= (and b!823517 ((_ is ValueCellFull!7008) mapDefault!23887)) b!823522))

(assert (= start!70944 b!823517))

(declare-fun m!765817 () Bool)

(assert (=> b!823521 m!765817))

(declare-fun m!765819 () Bool)

(assert (=> b!823519 m!765819))

(declare-fun m!765821 () Bool)

(assert (=> b!823519 m!765821))

(declare-fun m!765823 () Bool)

(assert (=> b!823519 m!765823))

(declare-fun m!765825 () Bool)

(assert (=> mapNonEmpty!23887 m!765825))

(declare-fun m!765827 () Bool)

(assert (=> b!823518 m!765827))

(declare-fun m!765829 () Bool)

(assert (=> start!70944 m!765829))

(declare-fun m!765831 () Bool)

(assert (=> start!70944 m!765831))

(declare-fun m!765833 () Bool)

(assert (=> start!70944 m!765833))

(check-sat (not mapNonEmpty!23887) b_and!22051 (not b!823518) tp_is_empty!14847 (not start!70944) (not b!823521) (not b_next!13137) (not b!823519))
(check-sat b_and!22051 (not b_next!13137))
