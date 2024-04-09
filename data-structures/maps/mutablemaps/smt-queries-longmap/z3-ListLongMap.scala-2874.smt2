; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41374 () Bool)

(assert start!41374)

(declare-fun b!462170 () Bool)

(declare-fun res!276483 () Bool)

(declare-fun e!269680 () Bool)

(assert (=> b!462170 (=> (not res!276483) (not e!269680))))

(declare-datatypes ((array!28733 0))(
  ( (array!28734 (arr!13797 (Array (_ BitVec 32) (_ BitVec 64))) (size!14149 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28733)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28733 (_ BitVec 32)) Bool)

(assert (=> b!462170 (= res!276483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462171 () Bool)

(declare-fun e!269677 () Bool)

(declare-fun tp_is_empty!12483 () Bool)

(assert (=> b!462171 (= e!269677 tp_is_empty!12483)))

(declare-fun b!462172 () Bool)

(declare-fun e!269679 () Bool)

(assert (=> b!462172 (= e!269679 tp_is_empty!12483)))

(declare-fun b!462173 () Bool)

(declare-fun e!269678 () Bool)

(declare-fun mapRes!20395 () Bool)

(assert (=> b!462173 (= e!269678 (and e!269679 mapRes!20395))))

(declare-fun condMapEmpty!20395 () Bool)

(declare-datatypes ((V!17749 0))(
  ( (V!17750 (val!6286 Int)) )
))
(declare-datatypes ((ValueCell!5898 0))(
  ( (ValueCellFull!5898 (v!8569 V!17749)) (EmptyCell!5898) )
))
(declare-datatypes ((array!28735 0))(
  ( (array!28736 (arr!13798 (Array (_ BitVec 32) ValueCell!5898)) (size!14150 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28735)

(declare-fun mapDefault!20395 () ValueCell!5898)

(assert (=> b!462173 (= condMapEmpty!20395 (= (arr!13798 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5898)) mapDefault!20395)))))

(declare-fun res!276485 () Bool)

(assert (=> start!41374 (=> (not res!276485) (not e!269680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41374 (= res!276485 (validMask!0 mask!1365))))

(assert (=> start!41374 e!269680))

(assert (=> start!41374 true))

(declare-fun array_inv!9958 (array!28733) Bool)

(assert (=> start!41374 (array_inv!9958 _keys!1025)))

(declare-fun array_inv!9959 (array!28735) Bool)

(assert (=> start!41374 (and (array_inv!9959 _values!833) e!269678)))

(declare-fun mapNonEmpty!20395 () Bool)

(declare-fun tp!39214 () Bool)

(assert (=> mapNonEmpty!20395 (= mapRes!20395 (and tp!39214 e!269677))))

(declare-fun mapRest!20395 () (Array (_ BitVec 32) ValueCell!5898))

(declare-fun mapValue!20395 () ValueCell!5898)

(declare-fun mapKey!20395 () (_ BitVec 32))

(assert (=> mapNonEmpty!20395 (= (arr!13798 _values!833) (store mapRest!20395 mapKey!20395 mapValue!20395))))

(declare-fun b!462174 () Bool)

(assert (=> b!462174 (= e!269680 false)))

(declare-fun lt!209160 () Bool)

(declare-datatypes ((List!8344 0))(
  ( (Nil!8341) (Cons!8340 (h!9196 (_ BitVec 64)) (t!14296 List!8344)) )
))
(declare-fun arrayNoDuplicates!0 (array!28733 (_ BitVec 32) List!8344) Bool)

(assert (=> b!462174 (= lt!209160 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8341))))

(declare-fun b!462175 () Bool)

(declare-fun res!276484 () Bool)

(assert (=> b!462175 (=> (not res!276484) (not e!269680))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!462175 (= res!276484 (and (= (size!14150 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14149 _keys!1025) (size!14150 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!20395 () Bool)

(assert (=> mapIsEmpty!20395 mapRes!20395))

(assert (= (and start!41374 res!276485) b!462175))

(assert (= (and b!462175 res!276484) b!462170))

(assert (= (and b!462170 res!276483) b!462174))

(assert (= (and b!462173 condMapEmpty!20395) mapIsEmpty!20395))

(assert (= (and b!462173 (not condMapEmpty!20395)) mapNonEmpty!20395))

(get-info :version)

(assert (= (and mapNonEmpty!20395 ((_ is ValueCellFull!5898) mapValue!20395)) b!462171))

(assert (= (and b!462173 ((_ is ValueCellFull!5898) mapDefault!20395)) b!462172))

(assert (= start!41374 b!462173))

(declare-fun m!445169 () Bool)

(assert (=> b!462170 m!445169))

(declare-fun m!445171 () Bool)

(assert (=> start!41374 m!445171))

(declare-fun m!445173 () Bool)

(assert (=> start!41374 m!445173))

(declare-fun m!445175 () Bool)

(assert (=> start!41374 m!445175))

(declare-fun m!445177 () Bool)

(assert (=> mapNonEmpty!20395 m!445177))

(declare-fun m!445179 () Bool)

(assert (=> b!462174 m!445179))

(check-sat (not start!41374) (not b!462174) (not mapNonEmpty!20395) (not b!462170) tp_is_empty!12483)
(check-sat)
