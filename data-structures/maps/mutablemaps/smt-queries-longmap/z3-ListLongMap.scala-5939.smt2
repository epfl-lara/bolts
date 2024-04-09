; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77480 () Bool)

(assert start!77480)

(declare-fun b!902500 () Bool)

(declare-fun e!505526 () Bool)

(declare-fun tp_is_empty!18465 () Bool)

(assert (=> b!902500 (= e!505526 tp_is_empty!18465)))

(declare-fun res!609133 () Bool)

(declare-fun e!505524 () Bool)

(assert (=> start!77480 (=> (not res!609133) (not e!505524))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77480 (= res!609133 (validMask!0 mask!1756))))

(assert (=> start!77480 e!505524))

(assert (=> start!77480 true))

(declare-datatypes ((V!29585 0))(
  ( (V!29586 (val!9283 Int)) )
))
(declare-datatypes ((ValueCell!8751 0))(
  ( (ValueCellFull!8751 (v!11788 V!29585)) (EmptyCell!8751) )
))
(declare-datatypes ((array!52982 0))(
  ( (array!52983 (arr!25447 (Array (_ BitVec 32) ValueCell!8751)) (size!25907 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52982)

(declare-fun e!505525 () Bool)

(declare-fun array_inv!19928 (array!52982) Bool)

(assert (=> start!77480 (and (array_inv!19928 _values!1152) e!505525)))

(declare-datatypes ((array!52984 0))(
  ( (array!52985 (arr!25448 (Array (_ BitVec 32) (_ BitVec 64))) (size!25908 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52984)

(declare-fun array_inv!19929 (array!52984) Bool)

(assert (=> start!77480 (array_inv!19929 _keys!1386)))

(declare-fun b!902501 () Bool)

(declare-fun res!609135 () Bool)

(assert (=> b!902501 (=> (not res!609135) (not e!505524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52984 (_ BitVec 32)) Bool)

(assert (=> b!902501 (= res!609135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!29407 () Bool)

(declare-fun mapRes!29407 () Bool)

(assert (=> mapIsEmpty!29407 mapRes!29407))

(declare-fun mapNonEmpty!29407 () Bool)

(declare-fun tp!56467 () Bool)

(assert (=> mapNonEmpty!29407 (= mapRes!29407 (and tp!56467 e!505526))))

(declare-fun mapKey!29407 () (_ BitVec 32))

(declare-fun mapRest!29407 () (Array (_ BitVec 32) ValueCell!8751))

(declare-fun mapValue!29407 () ValueCell!8751)

(assert (=> mapNonEmpty!29407 (= (arr!25447 _values!1152) (store mapRest!29407 mapKey!29407 mapValue!29407))))

(declare-fun b!902502 () Bool)

(declare-fun e!505523 () Bool)

(assert (=> b!902502 (= e!505523 tp_is_empty!18465)))

(declare-fun b!902503 () Bool)

(assert (=> b!902503 (= e!505524 false)))

(declare-fun lt!407837 () Bool)

(declare-datatypes ((List!17968 0))(
  ( (Nil!17965) (Cons!17964 (h!19110 (_ BitVec 64)) (t!25359 List!17968)) )
))
(declare-fun arrayNoDuplicates!0 (array!52984 (_ BitVec 32) List!17968) Bool)

(assert (=> b!902503 (= lt!407837 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17965))))

(declare-fun b!902504 () Bool)

(assert (=> b!902504 (= e!505525 (and e!505523 mapRes!29407))))

(declare-fun condMapEmpty!29407 () Bool)

(declare-fun mapDefault!29407 () ValueCell!8751)

(assert (=> b!902504 (= condMapEmpty!29407 (= (arr!25447 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8751)) mapDefault!29407)))))

(declare-fun b!902505 () Bool)

(declare-fun res!609134 () Bool)

(assert (=> b!902505 (=> (not res!609134) (not e!505524))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!902505 (= res!609134 (and (= (size!25907 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25908 _keys!1386) (size!25907 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(assert (= (and start!77480 res!609133) b!902505))

(assert (= (and b!902505 res!609134) b!902501))

(assert (= (and b!902501 res!609135) b!902503))

(assert (= (and b!902504 condMapEmpty!29407) mapIsEmpty!29407))

(assert (= (and b!902504 (not condMapEmpty!29407)) mapNonEmpty!29407))

(get-info :version)

(assert (= (and mapNonEmpty!29407 ((_ is ValueCellFull!8751) mapValue!29407)) b!902500))

(assert (= (and b!902504 ((_ is ValueCellFull!8751) mapDefault!29407)) b!902502))

(assert (= start!77480 b!902504))

(declare-fun m!838535 () Bool)

(assert (=> start!77480 m!838535))

(declare-fun m!838537 () Bool)

(assert (=> start!77480 m!838537))

(declare-fun m!838539 () Bool)

(assert (=> start!77480 m!838539))

(declare-fun m!838541 () Bool)

(assert (=> b!902501 m!838541))

(declare-fun m!838543 () Bool)

(assert (=> mapNonEmpty!29407 m!838543))

(declare-fun m!838545 () Bool)

(assert (=> b!902503 m!838545))

(check-sat (not b!902503) (not mapNonEmpty!29407) (not b!902501) (not start!77480) tp_is_empty!18465)
(check-sat)
