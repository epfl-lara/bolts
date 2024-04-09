; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70402 () Bool)

(assert start!70402)

(declare-fun b_free!12735 () Bool)

(declare-fun b_next!12735 () Bool)

(assert (=> start!70402 (= b_free!12735 (not b_next!12735))))

(declare-fun tp!44932 () Bool)

(declare-fun b_and!21565 () Bool)

(assert (=> start!70402 (= tp!44932 b_and!21565)))

(declare-fun mapNonEmpty!23260 () Bool)

(declare-fun mapRes!23260 () Bool)

(declare-fun tp!44931 () Bool)

(declare-fun e!453631 () Bool)

(assert (=> mapNonEmpty!23260 (= mapRes!23260 (and tp!44931 e!453631))))

(declare-fun mapKey!23260 () (_ BitVec 32))

(declare-datatypes ((V!24261 0))(
  ( (V!24262 (val!7270 Int)) )
))
(declare-datatypes ((ValueCell!6807 0))(
  ( (ValueCellFull!6807 (v!9695 V!24261)) (EmptyCell!6807) )
))
(declare-fun mapRest!23260 () (Array (_ BitVec 32) ValueCell!6807))

(declare-datatypes ((array!45064 0))(
  ( (array!45065 (arr!21584 (Array (_ BitVec 32) ValueCell!6807)) (size!22005 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45064)

(declare-fun mapValue!23260 () ValueCell!6807)

(assert (=> mapNonEmpty!23260 (= (arr!21584 _values!788) (store mapRest!23260 mapKey!23260 mapValue!23260))))

(declare-fun b!817413 () Bool)

(declare-fun res!558066 () Bool)

(declare-fun e!453628 () Bool)

(assert (=> b!817413 (=> (not res!558066) (not e!453628))))

(declare-datatypes ((array!45066 0))(
  ( (array!45067 (arr!21585 (Array (_ BitVec 32) (_ BitVec 64))) (size!22006 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45066)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45066 (_ BitVec 32)) Bool)

(assert (=> b!817413 (= res!558066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!817414 () Bool)

(declare-fun e!453632 () Bool)

(declare-fun e!453630 () Bool)

(assert (=> b!817414 (= e!453632 (and e!453630 mapRes!23260))))

(declare-fun condMapEmpty!23260 () Bool)

(declare-fun mapDefault!23260 () ValueCell!6807)

(assert (=> b!817414 (= condMapEmpty!23260 (= (arr!21584 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6807)) mapDefault!23260)))))

(declare-fun b!817415 () Bool)

(declare-fun tp_is_empty!14445 () Bool)

(assert (=> b!817415 (= e!453630 tp_is_empty!14445)))

(declare-fun b!817416 () Bool)

(assert (=> b!817416 (= e!453631 tp_is_empty!14445)))

(declare-fun res!558069 () Bool)

(assert (=> start!70402 (=> (not res!558069) (not e!453628))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70402 (= res!558069 (validMask!0 mask!1312))))

(assert (=> start!70402 e!453628))

(assert (=> start!70402 tp_is_empty!14445))

(declare-fun array_inv!17239 (array!45066) Bool)

(assert (=> start!70402 (array_inv!17239 _keys!976)))

(assert (=> start!70402 true))

(declare-fun array_inv!17240 (array!45064) Bool)

(assert (=> start!70402 (and (array_inv!17240 _values!788) e!453632)))

(assert (=> start!70402 tp!44932))

(declare-fun b!817417 () Bool)

(declare-fun res!558067 () Bool)

(assert (=> b!817417 (=> (not res!558067) (not e!453628))))

(declare-datatypes ((List!15425 0))(
  ( (Nil!15422) (Cons!15421 (h!16550 (_ BitVec 64)) (t!21758 List!15425)) )
))
(declare-fun arrayNoDuplicates!0 (array!45066 (_ BitVec 32) List!15425) Bool)

(assert (=> b!817417 (= res!558067 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15422))))

(declare-fun b!817418 () Bool)

(assert (=> b!817418 (= e!453628 (not true))))

(declare-datatypes ((tuple2!9556 0))(
  ( (tuple2!9557 (_1!4788 (_ BitVec 64)) (_2!4788 V!24261)) )
))
(declare-datatypes ((List!15426 0))(
  ( (Nil!15423) (Cons!15422 (h!16551 tuple2!9556) (t!21759 List!15426)) )
))
(declare-datatypes ((ListLongMap!8393 0))(
  ( (ListLongMap!8394 (toList!4212 List!15426)) )
))
(declare-fun lt!366252 () ListLongMap!8393)

(declare-fun lt!366254 () ListLongMap!8393)

(assert (=> b!817418 (= lt!366252 lt!366254)))

(declare-fun zeroValueBefore!34 () V!24261)

(declare-fun zeroValueAfter!34 () V!24261)

(declare-fun minValue!754 () V!24261)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27878 0))(
  ( (Unit!27879) )
))
(declare-fun lt!366253 () Unit!27878)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!374 (array!45066 array!45064 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24261 V!24261 V!24261 V!24261 (_ BitVec 32) Int) Unit!27878)

(assert (=> b!817418 (= lt!366253 (lemmaNoChangeToArrayThenSameMapNoExtras!374 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2258 (array!45066 array!45064 (_ BitVec 32) (_ BitVec 32) V!24261 V!24261 (_ BitVec 32) Int) ListLongMap!8393)

(assert (=> b!817418 (= lt!366254 (getCurrentListMapNoExtraKeys!2258 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817418 (= lt!366252 (getCurrentListMapNoExtraKeys!2258 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817419 () Bool)

(declare-fun res!558068 () Bool)

(assert (=> b!817419 (=> (not res!558068) (not e!453628))))

(assert (=> b!817419 (= res!558068 (and (= (size!22005 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22006 _keys!976) (size!22005 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23260 () Bool)

(assert (=> mapIsEmpty!23260 mapRes!23260))

(assert (= (and start!70402 res!558069) b!817419))

(assert (= (and b!817419 res!558068) b!817413))

(assert (= (and b!817413 res!558066) b!817417))

(assert (= (and b!817417 res!558067) b!817418))

(assert (= (and b!817414 condMapEmpty!23260) mapIsEmpty!23260))

(assert (= (and b!817414 (not condMapEmpty!23260)) mapNonEmpty!23260))

(get-info :version)

(assert (= (and mapNonEmpty!23260 ((_ is ValueCellFull!6807) mapValue!23260)) b!817416))

(assert (= (and b!817414 ((_ is ValueCellFull!6807) mapDefault!23260)) b!817415))

(assert (= start!70402 b!817414))

(declare-fun m!759069 () Bool)

(assert (=> b!817413 m!759069))

(declare-fun m!759071 () Bool)

(assert (=> b!817418 m!759071))

(declare-fun m!759073 () Bool)

(assert (=> b!817418 m!759073))

(declare-fun m!759075 () Bool)

(assert (=> b!817418 m!759075))

(declare-fun m!759077 () Bool)

(assert (=> mapNonEmpty!23260 m!759077))

(declare-fun m!759079 () Bool)

(assert (=> start!70402 m!759079))

(declare-fun m!759081 () Bool)

(assert (=> start!70402 m!759081))

(declare-fun m!759083 () Bool)

(assert (=> start!70402 m!759083))

(declare-fun m!759085 () Bool)

(assert (=> b!817417 m!759085))

(check-sat (not b!817418) tp_is_empty!14445 (not b!817413) (not b_next!12735) b_and!21565 (not mapNonEmpty!23260) (not start!70402) (not b!817417))
(check-sat b_and!21565 (not b_next!12735))
