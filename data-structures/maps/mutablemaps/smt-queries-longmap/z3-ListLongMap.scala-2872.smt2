; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41362 () Bool)

(assert start!41362)

(declare-fun b!462062 () Bool)

(declare-fun e!269586 () Bool)

(assert (=> b!462062 (= e!269586 false)))

(declare-fun lt!209142 () Bool)

(declare-datatypes ((array!28711 0))(
  ( (array!28712 (arr!13786 (Array (_ BitVec 32) (_ BitVec 64))) (size!14138 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28711)

(declare-datatypes ((List!8339 0))(
  ( (Nil!8336) (Cons!8335 (h!9191 (_ BitVec 64)) (t!14291 List!8339)) )
))
(declare-fun arrayNoDuplicates!0 (array!28711 (_ BitVec 32) List!8339) Bool)

(assert (=> b!462062 (= lt!209142 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8336))))

(declare-fun b!462063 () Bool)

(declare-fun res!276430 () Bool)

(assert (=> b!462063 (=> (not res!276430) (not e!269586))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!17733 0))(
  ( (V!17734 (val!6280 Int)) )
))
(declare-datatypes ((ValueCell!5892 0))(
  ( (ValueCellFull!5892 (v!8563 V!17733)) (EmptyCell!5892) )
))
(declare-datatypes ((array!28713 0))(
  ( (array!28714 (arr!13787 (Array (_ BitVec 32) ValueCell!5892)) (size!14139 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28713)

(assert (=> b!462063 (= res!276430 (and (= (size!14139 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14138 _keys!1025) (size!14139 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462064 () Bool)

(declare-fun e!269590 () Bool)

(declare-fun tp_is_empty!12471 () Bool)

(assert (=> b!462064 (= e!269590 tp_is_empty!12471)))

(declare-fun mapIsEmpty!20377 () Bool)

(declare-fun mapRes!20377 () Bool)

(assert (=> mapIsEmpty!20377 mapRes!20377))

(declare-fun b!462065 () Bool)

(declare-fun e!269588 () Bool)

(assert (=> b!462065 (= e!269588 (and e!269590 mapRes!20377))))

(declare-fun condMapEmpty!20377 () Bool)

(declare-fun mapDefault!20377 () ValueCell!5892)

(assert (=> b!462065 (= condMapEmpty!20377 (= (arr!13787 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5892)) mapDefault!20377)))))

(declare-fun mapNonEmpty!20377 () Bool)

(declare-fun tp!39196 () Bool)

(declare-fun e!269589 () Bool)

(assert (=> mapNonEmpty!20377 (= mapRes!20377 (and tp!39196 e!269589))))

(declare-fun mapKey!20377 () (_ BitVec 32))

(declare-fun mapRest!20377 () (Array (_ BitVec 32) ValueCell!5892))

(declare-fun mapValue!20377 () ValueCell!5892)

(assert (=> mapNonEmpty!20377 (= (arr!13787 _values!833) (store mapRest!20377 mapKey!20377 mapValue!20377))))

(declare-fun b!462066 () Bool)

(declare-fun res!276429 () Bool)

(assert (=> b!462066 (=> (not res!276429) (not e!269586))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28711 (_ BitVec 32)) Bool)

(assert (=> b!462066 (= res!276429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462067 () Bool)

(assert (=> b!462067 (= e!269589 tp_is_empty!12471)))

(declare-fun res!276431 () Bool)

(assert (=> start!41362 (=> (not res!276431) (not e!269586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41362 (= res!276431 (validMask!0 mask!1365))))

(assert (=> start!41362 e!269586))

(assert (=> start!41362 true))

(declare-fun array_inv!9950 (array!28711) Bool)

(assert (=> start!41362 (array_inv!9950 _keys!1025)))

(declare-fun array_inv!9951 (array!28713) Bool)

(assert (=> start!41362 (and (array_inv!9951 _values!833) e!269588)))

(assert (= (and start!41362 res!276431) b!462063))

(assert (= (and b!462063 res!276430) b!462066))

(assert (= (and b!462066 res!276429) b!462062))

(assert (= (and b!462065 condMapEmpty!20377) mapIsEmpty!20377))

(assert (= (and b!462065 (not condMapEmpty!20377)) mapNonEmpty!20377))

(get-info :version)

(assert (= (and mapNonEmpty!20377 ((_ is ValueCellFull!5892) mapValue!20377)) b!462067))

(assert (= (and b!462065 ((_ is ValueCellFull!5892) mapDefault!20377)) b!462064))

(assert (= start!41362 b!462065))

(declare-fun m!445097 () Bool)

(assert (=> b!462062 m!445097))

(declare-fun m!445099 () Bool)

(assert (=> mapNonEmpty!20377 m!445099))

(declare-fun m!445101 () Bool)

(assert (=> b!462066 m!445101))

(declare-fun m!445103 () Bool)

(assert (=> start!41362 m!445103))

(declare-fun m!445105 () Bool)

(assert (=> start!41362 m!445105))

(declare-fun m!445107 () Bool)

(assert (=> start!41362 m!445107))

(check-sat (not b!462062) (not start!41362) tp_is_empty!12471 (not b!462066) (not mapNonEmpty!20377))
(check-sat)
