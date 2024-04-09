; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77400 () Bool)

(assert start!77400)

(declare-datatypes ((V!29537 0))(
  ( (V!29538 (val!9265 Int)) )
))
(declare-datatypes ((ValueCell!8733 0))(
  ( (ValueCellFull!8733 (v!11769 V!29537)) (EmptyCell!8733) )
))
(declare-datatypes ((array!52906 0))(
  ( (array!52907 (arr!25414 (Array (_ BitVec 32) ValueCell!8733)) (size!25874 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52906)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!52908 0))(
  ( (array!52909 (arr!25415 (Array (_ BitVec 32) (_ BitVec 64))) (size!25875 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52908)

(declare-fun b!902040 () Bool)

(declare-fun e!505158 () Bool)

(assert (=> b!902040 (= e!505158 (and (= (size!25874 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25875 _keys!1386) (size!25874 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011) (= (size!25875 _keys!1386) (bvadd #b00000000000000000000000000000001 mask!1756)) (bvsgt #b00000000000000000000000000000000 (size!25875 _keys!1386))))))

(declare-fun mapNonEmpty!29338 () Bool)

(declare-fun mapRes!29338 () Bool)

(declare-fun tp!56398 () Bool)

(declare-fun e!505161 () Bool)

(assert (=> mapNonEmpty!29338 (= mapRes!29338 (and tp!56398 e!505161))))

(declare-fun mapValue!29338 () ValueCell!8733)

(declare-fun mapRest!29338 () (Array (_ BitVec 32) ValueCell!8733))

(declare-fun mapKey!29338 () (_ BitVec 32))

(assert (=> mapNonEmpty!29338 (= (arr!25414 _values!1152) (store mapRest!29338 mapKey!29338 mapValue!29338))))

(declare-fun b!902041 () Bool)

(declare-fun tp_is_empty!18429 () Bool)

(assert (=> b!902041 (= e!505161 tp_is_empty!18429)))

(declare-fun res!608899 () Bool)

(assert (=> start!77400 (=> (not res!608899) (not e!505158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77400 (= res!608899 (validMask!0 mask!1756))))

(assert (=> start!77400 e!505158))

(assert (=> start!77400 true))

(declare-fun e!505157 () Bool)

(declare-fun array_inv!19906 (array!52906) Bool)

(assert (=> start!77400 (and (array_inv!19906 _values!1152) e!505157)))

(declare-fun array_inv!19907 (array!52908) Bool)

(assert (=> start!77400 (array_inv!19907 _keys!1386)))

(declare-fun b!902042 () Bool)

(declare-fun e!505160 () Bool)

(assert (=> b!902042 (= e!505157 (and e!505160 mapRes!29338))))

(declare-fun condMapEmpty!29338 () Bool)

(declare-fun mapDefault!29338 () ValueCell!8733)

(assert (=> b!902042 (= condMapEmpty!29338 (= (arr!25414 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8733)) mapDefault!29338)))))

(declare-fun b!902043 () Bool)

(assert (=> b!902043 (= e!505160 tp_is_empty!18429)))

(declare-fun mapIsEmpty!29338 () Bool)

(assert (=> mapIsEmpty!29338 mapRes!29338))

(assert (= (and start!77400 res!608899) b!902040))

(assert (= (and b!902042 condMapEmpty!29338) mapIsEmpty!29338))

(assert (= (and b!902042 (not condMapEmpty!29338)) mapNonEmpty!29338))

(get-info :version)

(assert (= (and mapNonEmpty!29338 ((_ is ValueCellFull!8733) mapValue!29338)) b!902041))

(assert (= (and b!902042 ((_ is ValueCellFull!8733) mapDefault!29338)) b!902043))

(assert (= start!77400 b!902042))

(declare-fun m!838251 () Bool)

(assert (=> mapNonEmpty!29338 m!838251))

(declare-fun m!838253 () Bool)

(assert (=> start!77400 m!838253))

(declare-fun m!838255 () Bool)

(assert (=> start!77400 m!838255))

(declare-fun m!838257 () Bool)

(assert (=> start!77400 m!838257))

(check-sat (not start!77400) (not mapNonEmpty!29338) tp_is_empty!18429)
(check-sat)
(get-model)

(declare-fun d!111843 () Bool)

(assert (=> d!111843 (= (validMask!0 mask!1756) (and (or (= mask!1756 #b00000000000000000000000000000111) (= mask!1756 #b00000000000000000000000000001111) (= mask!1756 #b00000000000000000000000000011111) (= mask!1756 #b00000000000000000000000000111111) (= mask!1756 #b00000000000000000000000001111111) (= mask!1756 #b00000000000000000000000011111111) (= mask!1756 #b00000000000000000000000111111111) (= mask!1756 #b00000000000000000000001111111111) (= mask!1756 #b00000000000000000000011111111111) (= mask!1756 #b00000000000000000000111111111111) (= mask!1756 #b00000000000000000001111111111111) (= mask!1756 #b00000000000000000011111111111111) (= mask!1756 #b00000000000000000111111111111111) (= mask!1756 #b00000000000000001111111111111111) (= mask!1756 #b00000000000000011111111111111111) (= mask!1756 #b00000000000000111111111111111111) (= mask!1756 #b00000000000001111111111111111111) (= mask!1756 #b00000000000011111111111111111111) (= mask!1756 #b00000000000111111111111111111111) (= mask!1756 #b00000000001111111111111111111111) (= mask!1756 #b00000000011111111111111111111111) (= mask!1756 #b00000000111111111111111111111111) (= mask!1756 #b00000001111111111111111111111111) (= mask!1756 #b00000011111111111111111111111111) (= mask!1756 #b00000111111111111111111111111111) (= mask!1756 #b00001111111111111111111111111111) (= mask!1756 #b00011111111111111111111111111111) (= mask!1756 #b00111111111111111111111111111111)) (bvsle mask!1756 #b00111111111111111111111111111111)))))

(assert (=> start!77400 d!111843))

(declare-fun d!111845 () Bool)

(assert (=> d!111845 (= (array_inv!19906 _values!1152) (bvsge (size!25874 _values!1152) #b00000000000000000000000000000000))))

(assert (=> start!77400 d!111845))

(declare-fun d!111847 () Bool)

(assert (=> d!111847 (= (array_inv!19907 _keys!1386) (bvsge (size!25875 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> start!77400 d!111847))

(declare-fun condMapEmpty!29344 () Bool)

(declare-fun mapDefault!29344 () ValueCell!8733)

(assert (=> mapNonEmpty!29338 (= condMapEmpty!29344 (= mapRest!29338 ((as const (Array (_ BitVec 32) ValueCell!8733)) mapDefault!29344)))))

(declare-fun e!505182 () Bool)

(declare-fun mapRes!29344 () Bool)

(assert (=> mapNonEmpty!29338 (= tp!56398 (and e!505182 mapRes!29344))))

(declare-fun b!902063 () Bool)

(assert (=> b!902063 (= e!505182 tp_is_empty!18429)))

(declare-fun b!902062 () Bool)

(declare-fun e!505181 () Bool)

(assert (=> b!902062 (= e!505181 tp_is_empty!18429)))

(declare-fun mapIsEmpty!29344 () Bool)

(assert (=> mapIsEmpty!29344 mapRes!29344))

(declare-fun mapNonEmpty!29344 () Bool)

(declare-fun tp!56404 () Bool)

(assert (=> mapNonEmpty!29344 (= mapRes!29344 (and tp!56404 e!505181))))

(declare-fun mapKey!29344 () (_ BitVec 32))

(declare-fun mapValue!29344 () ValueCell!8733)

(declare-fun mapRest!29344 () (Array (_ BitVec 32) ValueCell!8733))

(assert (=> mapNonEmpty!29344 (= mapRest!29338 (store mapRest!29344 mapKey!29344 mapValue!29344))))

(assert (= (and mapNonEmpty!29338 condMapEmpty!29344) mapIsEmpty!29344))

(assert (= (and mapNonEmpty!29338 (not condMapEmpty!29344)) mapNonEmpty!29344))

(assert (= (and mapNonEmpty!29344 ((_ is ValueCellFull!8733) mapValue!29344)) b!902062))

(assert (= (and mapNonEmpty!29338 ((_ is ValueCellFull!8733) mapDefault!29344)) b!902063))

(declare-fun m!838267 () Bool)

(assert (=> mapNonEmpty!29344 m!838267))

(check-sat (not mapNonEmpty!29344) tp_is_empty!18429)
(check-sat)
