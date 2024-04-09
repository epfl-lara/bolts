; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41288 () Bool)

(assert start!41288)

(declare-fun mapNonEmpty!20317 () Bool)

(declare-fun mapRes!20317 () Bool)

(declare-fun tp!39136 () Bool)

(declare-fun e!269266 () Bool)

(assert (=> mapNonEmpty!20317 (= mapRes!20317 (and tp!39136 e!269266))))

(declare-datatypes ((V!17693 0))(
  ( (V!17694 (val!6265 Int)) )
))
(declare-datatypes ((ValueCell!5877 0))(
  ( (ValueCellFull!5877 (v!8547 V!17693)) (EmptyCell!5877) )
))
(declare-fun mapValue!20317 () ValueCell!5877)

(declare-fun mapRest!20317 () (Array (_ BitVec 32) ValueCell!5877))

(declare-datatypes ((array!28643 0))(
  ( (array!28644 (arr!13757 (Array (_ BitVec 32) ValueCell!5877)) (size!14109 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28643)

(declare-fun mapKey!20317 () (_ BitVec 32))

(assert (=> mapNonEmpty!20317 (= (arr!13757 _values!833) (store mapRest!20317 mapKey!20317 mapValue!20317))))

(declare-fun b!461656 () Bool)

(declare-fun e!269268 () Bool)

(declare-fun tp_is_empty!12441 () Bool)

(assert (=> b!461656 (= e!269268 tp_is_empty!12441)))

(declare-fun b!461657 () Bool)

(declare-fun e!269269 () Bool)

(assert (=> b!461657 (= e!269269 (and e!269268 mapRes!20317))))

(declare-fun condMapEmpty!20317 () Bool)

(declare-fun mapDefault!20317 () ValueCell!5877)

(assert (=> b!461657 (= condMapEmpty!20317 (= (arr!13757 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5877)) mapDefault!20317)))))

(declare-fun res!276222 () Bool)

(declare-fun e!269267 () Bool)

(assert (=> start!41288 (=> (not res!276222) (not e!269267))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41288 (= res!276222 (validMask!0 mask!1365))))

(assert (=> start!41288 e!269267))

(assert (=> start!41288 true))

(declare-datatypes ((array!28645 0))(
  ( (array!28646 (arr!13758 (Array (_ BitVec 32) (_ BitVec 64))) (size!14110 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28645)

(declare-fun array_inv!9934 (array!28645) Bool)

(assert (=> start!41288 (array_inv!9934 _keys!1025)))

(declare-fun array_inv!9935 (array!28643) Bool)

(assert (=> start!41288 (and (array_inv!9935 _values!833) e!269269)))

(declare-fun b!461658 () Bool)

(assert (=> b!461658 (= e!269266 tp_is_empty!12441)))

(declare-fun mapIsEmpty!20317 () Bool)

(assert (=> mapIsEmpty!20317 mapRes!20317))

(declare-fun b!461659 () Bool)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!461659 (= e!269267 (and (= (size!14109 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14110 _keys!1025) (size!14109 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (size!14110 _keys!1025) (bvadd #b00000000000000000000000000000001 mask!1365)) (bvsgt #b00000000000000000000000000000000 (size!14110 _keys!1025))))))

(assert (= (and start!41288 res!276222) b!461659))

(assert (= (and b!461657 condMapEmpty!20317) mapIsEmpty!20317))

(assert (= (and b!461657 (not condMapEmpty!20317)) mapNonEmpty!20317))

(get-info :version)

(assert (= (and mapNonEmpty!20317 ((_ is ValueCellFull!5877) mapValue!20317)) b!461658))

(assert (= (and b!461657 ((_ is ValueCellFull!5877) mapDefault!20317)) b!461656))

(assert (= start!41288 b!461657))

(declare-fun m!444849 () Bool)

(assert (=> mapNonEmpty!20317 m!444849))

(declare-fun m!444851 () Bool)

(assert (=> start!41288 m!444851))

(declare-fun m!444853 () Bool)

(assert (=> start!41288 m!444853))

(declare-fun m!444855 () Bool)

(assert (=> start!41288 m!444855))

(check-sat (not start!41288) (not mapNonEmpty!20317) tp_is_empty!12441)
(check-sat)
(get-model)

(declare-fun d!74775 () Bool)

(assert (=> d!74775 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!41288 d!74775))

(declare-fun d!74777 () Bool)

(assert (=> d!74777 (= (array_inv!9934 _keys!1025) (bvsge (size!14110 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!41288 d!74777))

(declare-fun d!74779 () Bool)

(assert (=> d!74779 (= (array_inv!9935 _values!833) (bvsge (size!14109 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!41288 d!74779))

(declare-fun b!461679 () Bool)

(declare-fun e!269290 () Bool)

(assert (=> b!461679 (= e!269290 tp_is_empty!12441)))

(declare-fun condMapEmpty!20323 () Bool)

(declare-fun mapDefault!20323 () ValueCell!5877)

(assert (=> mapNonEmpty!20317 (= condMapEmpty!20323 (= mapRest!20317 ((as const (Array (_ BitVec 32) ValueCell!5877)) mapDefault!20323)))))

(declare-fun mapRes!20323 () Bool)

(assert (=> mapNonEmpty!20317 (= tp!39136 (and e!269290 mapRes!20323))))

(declare-fun b!461678 () Bool)

(declare-fun e!269291 () Bool)

(assert (=> b!461678 (= e!269291 tp_is_empty!12441)))

(declare-fun mapNonEmpty!20323 () Bool)

(declare-fun tp!39142 () Bool)

(assert (=> mapNonEmpty!20323 (= mapRes!20323 (and tp!39142 e!269291))))

(declare-fun mapRest!20323 () (Array (_ BitVec 32) ValueCell!5877))

(declare-fun mapKey!20323 () (_ BitVec 32))

(declare-fun mapValue!20323 () ValueCell!5877)

(assert (=> mapNonEmpty!20323 (= mapRest!20317 (store mapRest!20323 mapKey!20323 mapValue!20323))))

(declare-fun mapIsEmpty!20323 () Bool)

(assert (=> mapIsEmpty!20323 mapRes!20323))

(assert (= (and mapNonEmpty!20317 condMapEmpty!20323) mapIsEmpty!20323))

(assert (= (and mapNonEmpty!20317 (not condMapEmpty!20323)) mapNonEmpty!20323))

(assert (= (and mapNonEmpty!20323 ((_ is ValueCellFull!5877) mapValue!20323)) b!461678))

(assert (= (and mapNonEmpty!20317 ((_ is ValueCellFull!5877) mapDefault!20323)) b!461679))

(declare-fun m!444865 () Bool)

(assert (=> mapNonEmpty!20323 m!444865))

(check-sat (not mapNonEmpty!20323) tp_is_empty!12441)
(check-sat)
