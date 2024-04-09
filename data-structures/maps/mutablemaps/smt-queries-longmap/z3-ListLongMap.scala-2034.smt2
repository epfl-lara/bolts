; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35382 () Bool)

(assert start!35382)

(declare-fun b!353949 () Bool)

(declare-fun res!196291 () Bool)

(declare-fun e!216886 () Bool)

(assert (=> b!353949 (=> (not res!196291) (not e!216886))))

(declare-datatypes ((array!19211 0))(
  ( (array!19212 (arr!9096 (Array (_ BitVec 32) (_ BitVec 64))) (size!9448 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19211)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19211 (_ BitVec 32)) Bool)

(assert (=> b!353949 (= res!196291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun res!196289 () Bool)

(assert (=> start!35382 (=> (not res!196289) (not e!216886))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35382 (= res!196289 (validMask!0 mask!1842))))

(assert (=> start!35382 e!216886))

(assert (=> start!35382 true))

(declare-datatypes ((V!11413 0))(
  ( (V!11414 (val!3958 Int)) )
))
(declare-datatypes ((ValueCell!3570 0))(
  ( (ValueCellFull!3570 (v!6148 V!11413)) (EmptyCell!3570) )
))
(declare-datatypes ((array!19213 0))(
  ( (array!19214 (arr!9097 (Array (_ BitVec 32) ValueCell!3570)) (size!9449 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19213)

(declare-fun e!216889 () Bool)

(declare-fun array_inv!6692 (array!19213) Bool)

(assert (=> start!35382 (and (array_inv!6692 _values!1208) e!216889)))

(declare-fun array_inv!6693 (array!19211) Bool)

(assert (=> start!35382 (array_inv!6693 _keys!1456)))

(declare-fun b!353950 () Bool)

(assert (=> b!353950 (= e!216886 false)))

(declare-fun lt!165616 () Bool)

(declare-datatypes ((List!5307 0))(
  ( (Nil!5304) (Cons!5303 (h!6159 (_ BitVec 64)) (t!10465 List!5307)) )
))
(declare-fun arrayNoDuplicates!0 (array!19211 (_ BitVec 32) List!5307) Bool)

(assert (=> b!353950 (= lt!165616 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5304))))

(declare-fun b!353951 () Bool)

(declare-fun e!216888 () Bool)

(declare-fun tp_is_empty!7827 () Bool)

(assert (=> b!353951 (= e!216888 tp_is_empty!7827)))

(declare-fun mapIsEmpty!13248 () Bool)

(declare-fun mapRes!13248 () Bool)

(assert (=> mapIsEmpty!13248 mapRes!13248))

(declare-fun b!353952 () Bool)

(declare-fun e!216887 () Bool)

(assert (=> b!353952 (= e!216889 (and e!216887 mapRes!13248))))

(declare-fun condMapEmpty!13248 () Bool)

(declare-fun mapDefault!13248 () ValueCell!3570)

(assert (=> b!353952 (= condMapEmpty!13248 (= (arr!9097 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3570)) mapDefault!13248)))))

(declare-fun mapNonEmpty!13248 () Bool)

(declare-fun tp!27144 () Bool)

(assert (=> mapNonEmpty!13248 (= mapRes!13248 (and tp!27144 e!216888))))

(declare-fun mapValue!13248 () ValueCell!3570)

(declare-fun mapKey!13248 () (_ BitVec 32))

(declare-fun mapRest!13248 () (Array (_ BitVec 32) ValueCell!3570))

(assert (=> mapNonEmpty!13248 (= (arr!9097 _values!1208) (store mapRest!13248 mapKey!13248 mapValue!13248))))

(declare-fun b!353953 () Bool)

(declare-fun res!196290 () Bool)

(assert (=> b!353953 (=> (not res!196290) (not e!216886))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!353953 (= res!196290 (and (= (size!9449 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9448 _keys!1456) (size!9449 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!353954 () Bool)

(assert (=> b!353954 (= e!216887 tp_is_empty!7827)))

(assert (= (and start!35382 res!196289) b!353953))

(assert (= (and b!353953 res!196290) b!353949))

(assert (= (and b!353949 res!196291) b!353950))

(assert (= (and b!353952 condMapEmpty!13248) mapIsEmpty!13248))

(assert (= (and b!353952 (not condMapEmpty!13248)) mapNonEmpty!13248))

(get-info :version)

(assert (= (and mapNonEmpty!13248 ((_ is ValueCellFull!3570) mapValue!13248)) b!353951))

(assert (= (and b!353952 ((_ is ValueCellFull!3570) mapDefault!13248)) b!353954))

(assert (= start!35382 b!353952))

(declare-fun m!353103 () Bool)

(assert (=> b!353949 m!353103))

(declare-fun m!353105 () Bool)

(assert (=> start!35382 m!353105))

(declare-fun m!353107 () Bool)

(assert (=> start!35382 m!353107))

(declare-fun m!353109 () Bool)

(assert (=> start!35382 m!353109))

(declare-fun m!353111 () Bool)

(assert (=> b!353950 m!353111))

(declare-fun m!353113 () Bool)

(assert (=> mapNonEmpty!13248 m!353113))

(check-sat (not start!35382) (not b!353949) (not mapNonEmpty!13248) tp_is_empty!7827 (not b!353950))
(check-sat)
