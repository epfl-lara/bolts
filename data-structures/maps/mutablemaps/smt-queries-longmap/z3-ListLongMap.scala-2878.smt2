; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41398 () Bool)

(assert start!41398)

(declare-fun b!462386 () Bool)

(declare-fun e!269857 () Bool)

(declare-fun tp_is_empty!12507 () Bool)

(assert (=> b!462386 (= e!269857 tp_is_empty!12507)))

(declare-fun mapNonEmpty!20431 () Bool)

(declare-fun mapRes!20431 () Bool)

(declare-fun tp!39250 () Bool)

(assert (=> mapNonEmpty!20431 (= mapRes!20431 (and tp!39250 e!269857))))

(declare-datatypes ((V!17781 0))(
  ( (V!17782 (val!6298 Int)) )
))
(declare-datatypes ((ValueCell!5910 0))(
  ( (ValueCellFull!5910 (v!8581 V!17781)) (EmptyCell!5910) )
))
(declare-datatypes ((array!28781 0))(
  ( (array!28782 (arr!13821 (Array (_ BitVec 32) ValueCell!5910)) (size!14173 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28781)

(declare-fun mapValue!20431 () ValueCell!5910)

(declare-fun mapKey!20431 () (_ BitVec 32))

(declare-fun mapRest!20431 () (Array (_ BitVec 32) ValueCell!5910))

(assert (=> mapNonEmpty!20431 (= (arr!13821 _values!833) (store mapRest!20431 mapKey!20431 mapValue!20431))))

(declare-fun b!462387 () Bool)

(declare-fun e!269856 () Bool)

(assert (=> b!462387 (= e!269856 tp_is_empty!12507)))

(declare-fun mapIsEmpty!20431 () Bool)

(assert (=> mapIsEmpty!20431 mapRes!20431))

(declare-fun b!462388 () Bool)

(declare-fun e!269860 () Bool)

(assert (=> b!462388 (= e!269860 false)))

(declare-fun lt!209196 () Bool)

(declare-datatypes ((array!28783 0))(
  ( (array!28784 (arr!13822 (Array (_ BitVec 32) (_ BitVec 64))) (size!14174 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28783)

(declare-datatypes ((List!8353 0))(
  ( (Nil!8350) (Cons!8349 (h!9205 (_ BitVec 64)) (t!14305 List!8353)) )
))
(declare-fun arrayNoDuplicates!0 (array!28783 (_ BitVec 32) List!8353) Bool)

(assert (=> b!462388 (= lt!209196 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8350))))

(declare-fun res!276591 () Bool)

(assert (=> start!41398 (=> (not res!276591) (not e!269860))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41398 (= res!276591 (validMask!0 mask!1365))))

(assert (=> start!41398 e!269860))

(assert (=> start!41398 true))

(declare-fun array_inv!9976 (array!28783) Bool)

(assert (=> start!41398 (array_inv!9976 _keys!1025)))

(declare-fun e!269858 () Bool)

(declare-fun array_inv!9977 (array!28781) Bool)

(assert (=> start!41398 (and (array_inv!9977 _values!833) e!269858)))

(declare-fun b!462389 () Bool)

(declare-fun res!276593 () Bool)

(assert (=> b!462389 (=> (not res!276593) (not e!269860))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28783 (_ BitVec 32)) Bool)

(assert (=> b!462389 (= res!276593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462390 () Bool)

(declare-fun res!276592 () Bool)

(assert (=> b!462390 (=> (not res!276592) (not e!269860))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!462390 (= res!276592 (and (= (size!14173 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14174 _keys!1025) (size!14173 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462391 () Bool)

(assert (=> b!462391 (= e!269858 (and e!269856 mapRes!20431))))

(declare-fun condMapEmpty!20431 () Bool)

(declare-fun mapDefault!20431 () ValueCell!5910)

(assert (=> b!462391 (= condMapEmpty!20431 (= (arr!13821 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5910)) mapDefault!20431)))))

(assert (= (and start!41398 res!276591) b!462390))

(assert (= (and b!462390 res!276592) b!462389))

(assert (= (and b!462389 res!276593) b!462388))

(assert (= (and b!462391 condMapEmpty!20431) mapIsEmpty!20431))

(assert (= (and b!462391 (not condMapEmpty!20431)) mapNonEmpty!20431))

(get-info :version)

(assert (= (and mapNonEmpty!20431 ((_ is ValueCellFull!5910) mapValue!20431)) b!462386))

(assert (= (and b!462391 ((_ is ValueCellFull!5910) mapDefault!20431)) b!462387))

(assert (= start!41398 b!462391))

(declare-fun m!445313 () Bool)

(assert (=> mapNonEmpty!20431 m!445313))

(declare-fun m!445315 () Bool)

(assert (=> b!462388 m!445315))

(declare-fun m!445317 () Bool)

(assert (=> start!41398 m!445317))

(declare-fun m!445319 () Bool)

(assert (=> start!41398 m!445319))

(declare-fun m!445321 () Bool)

(assert (=> start!41398 m!445321))

(declare-fun m!445323 () Bool)

(assert (=> b!462389 m!445323))

(check-sat (not b!462389) (not b!462388) (not start!41398) (not mapNonEmpty!20431) tp_is_empty!12507)
(check-sat)
