; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41368 () Bool)

(assert start!41368)

(declare-fun b!462116 () Bool)

(declare-fun res!276458 () Bool)

(declare-fun e!269634 () Bool)

(assert (=> b!462116 (=> (not res!276458) (not e!269634))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!28723 0))(
  ( (array!28724 (arr!13792 (Array (_ BitVec 32) (_ BitVec 64))) (size!14144 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28723)

(declare-datatypes ((V!17741 0))(
  ( (V!17742 (val!6283 Int)) )
))
(declare-datatypes ((ValueCell!5895 0))(
  ( (ValueCellFull!5895 (v!8566 V!17741)) (EmptyCell!5895) )
))
(declare-datatypes ((array!28725 0))(
  ( (array!28726 (arr!13793 (Array (_ BitVec 32) ValueCell!5895)) (size!14145 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28725)

(assert (=> b!462116 (= res!276458 (and (= (size!14145 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14144 _keys!1025) (size!14145 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!20386 () Bool)

(declare-fun mapRes!20386 () Bool)

(declare-fun tp!39205 () Bool)

(declare-fun e!269631 () Bool)

(assert (=> mapNonEmpty!20386 (= mapRes!20386 (and tp!39205 e!269631))))

(declare-fun mapRest!20386 () (Array (_ BitVec 32) ValueCell!5895))

(declare-fun mapValue!20386 () ValueCell!5895)

(declare-fun mapKey!20386 () (_ BitVec 32))

(assert (=> mapNonEmpty!20386 (= (arr!13793 _values!833) (store mapRest!20386 mapKey!20386 mapValue!20386))))

(declare-fun b!462117 () Bool)

(assert (=> b!462117 (= e!269634 false)))

(declare-fun lt!209151 () Bool)

(declare-datatypes ((List!8342 0))(
  ( (Nil!8339) (Cons!8338 (h!9194 (_ BitVec 64)) (t!14294 List!8342)) )
))
(declare-fun arrayNoDuplicates!0 (array!28723 (_ BitVec 32) List!8342) Bool)

(assert (=> b!462117 (= lt!209151 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8339))))

(declare-fun b!462118 () Bool)

(declare-fun e!269632 () Bool)

(declare-fun e!269633 () Bool)

(assert (=> b!462118 (= e!269632 (and e!269633 mapRes!20386))))

(declare-fun condMapEmpty!20386 () Bool)

(declare-fun mapDefault!20386 () ValueCell!5895)

(assert (=> b!462118 (= condMapEmpty!20386 (= (arr!13793 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5895)) mapDefault!20386)))))

(declare-fun b!462120 () Bool)

(declare-fun res!276457 () Bool)

(assert (=> b!462120 (=> (not res!276457) (not e!269634))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28723 (_ BitVec 32)) Bool)

(assert (=> b!462120 (= res!276457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!20386 () Bool)

(assert (=> mapIsEmpty!20386 mapRes!20386))

(declare-fun b!462121 () Bool)

(declare-fun tp_is_empty!12477 () Bool)

(assert (=> b!462121 (= e!269631 tp_is_empty!12477)))

(declare-fun res!276456 () Bool)

(assert (=> start!41368 (=> (not res!276456) (not e!269634))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41368 (= res!276456 (validMask!0 mask!1365))))

(assert (=> start!41368 e!269634))

(assert (=> start!41368 true))

(declare-fun array_inv!9956 (array!28723) Bool)

(assert (=> start!41368 (array_inv!9956 _keys!1025)))

(declare-fun array_inv!9957 (array!28725) Bool)

(assert (=> start!41368 (and (array_inv!9957 _values!833) e!269632)))

(declare-fun b!462119 () Bool)

(assert (=> b!462119 (= e!269633 tp_is_empty!12477)))

(assert (= (and start!41368 res!276456) b!462116))

(assert (= (and b!462116 res!276458) b!462120))

(assert (= (and b!462120 res!276457) b!462117))

(assert (= (and b!462118 condMapEmpty!20386) mapIsEmpty!20386))

(assert (= (and b!462118 (not condMapEmpty!20386)) mapNonEmpty!20386))

(get-info :version)

(assert (= (and mapNonEmpty!20386 ((_ is ValueCellFull!5895) mapValue!20386)) b!462121))

(assert (= (and b!462118 ((_ is ValueCellFull!5895) mapDefault!20386)) b!462119))

(assert (= start!41368 b!462118))

(declare-fun m!445133 () Bool)

(assert (=> mapNonEmpty!20386 m!445133))

(declare-fun m!445135 () Bool)

(assert (=> b!462117 m!445135))

(declare-fun m!445137 () Bool)

(assert (=> b!462120 m!445137))

(declare-fun m!445139 () Bool)

(assert (=> start!41368 m!445139))

(declare-fun m!445141 () Bool)

(assert (=> start!41368 m!445141))

(declare-fun m!445143 () Bool)

(assert (=> start!41368 m!445143))

(check-sat (not mapNonEmpty!20386) (not start!41368) (not b!462117) (not b!462120) tp_is_empty!12477)
(check-sat)
