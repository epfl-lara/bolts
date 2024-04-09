; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77492 () Bool)

(assert start!77492)

(declare-fun b!902608 () Bool)

(declare-fun res!609189 () Bool)

(declare-fun e!505613 () Bool)

(assert (=> b!902608 (=> (not res!609189) (not e!505613))))

(declare-datatypes ((array!53006 0))(
  ( (array!53007 (arr!25459 (Array (_ BitVec 32) (_ BitVec 64))) (size!25919 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53006)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53006 (_ BitVec 32)) Bool)

(assert (=> b!902608 (= res!609189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun res!609188 () Bool)

(assert (=> start!77492 (=> (not res!609188) (not e!505613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77492 (= res!609188 (validMask!0 mask!1756))))

(assert (=> start!77492 e!505613))

(assert (=> start!77492 true))

(declare-datatypes ((V!29601 0))(
  ( (V!29602 (val!9289 Int)) )
))
(declare-datatypes ((ValueCell!8757 0))(
  ( (ValueCellFull!8757 (v!11794 V!29601)) (EmptyCell!8757) )
))
(declare-datatypes ((array!53008 0))(
  ( (array!53009 (arr!25460 (Array (_ BitVec 32) ValueCell!8757)) (size!25920 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53008)

(declare-fun e!505615 () Bool)

(declare-fun array_inv!19934 (array!53008) Bool)

(assert (=> start!77492 (and (array_inv!19934 _values!1152) e!505615)))

(declare-fun array_inv!19935 (array!53006) Bool)

(assert (=> start!77492 (array_inv!19935 _keys!1386)))

(declare-fun b!902609 () Bool)

(declare-fun e!505612 () Bool)

(declare-fun tp_is_empty!18477 () Bool)

(assert (=> b!902609 (= e!505612 tp_is_empty!18477)))

(declare-fun b!902610 () Bool)

(declare-fun e!505616 () Bool)

(assert (=> b!902610 (= e!505616 tp_is_empty!18477)))

(declare-fun b!902611 () Bool)

(declare-fun res!609187 () Bool)

(assert (=> b!902611 (=> (not res!609187) (not e!505613))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!902611 (= res!609187 (and (= (size!25920 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25919 _keys!1386) (size!25920 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!902612 () Bool)

(assert (=> b!902612 (= e!505613 false)))

(declare-fun lt!407855 () Bool)

(declare-datatypes ((List!17972 0))(
  ( (Nil!17969) (Cons!17968 (h!19114 (_ BitVec 64)) (t!25363 List!17972)) )
))
(declare-fun arrayNoDuplicates!0 (array!53006 (_ BitVec 32) List!17972) Bool)

(assert (=> b!902612 (= lt!407855 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17969))))

(declare-fun mapNonEmpty!29425 () Bool)

(declare-fun mapRes!29425 () Bool)

(declare-fun tp!56485 () Bool)

(assert (=> mapNonEmpty!29425 (= mapRes!29425 (and tp!56485 e!505612))))

(declare-fun mapKey!29425 () (_ BitVec 32))

(declare-fun mapRest!29425 () (Array (_ BitVec 32) ValueCell!8757))

(declare-fun mapValue!29425 () ValueCell!8757)

(assert (=> mapNonEmpty!29425 (= (arr!25460 _values!1152) (store mapRest!29425 mapKey!29425 mapValue!29425))))

(declare-fun mapIsEmpty!29425 () Bool)

(assert (=> mapIsEmpty!29425 mapRes!29425))

(declare-fun b!902613 () Bool)

(assert (=> b!902613 (= e!505615 (and e!505616 mapRes!29425))))

(declare-fun condMapEmpty!29425 () Bool)

(declare-fun mapDefault!29425 () ValueCell!8757)

(assert (=> b!902613 (= condMapEmpty!29425 (= (arr!25460 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8757)) mapDefault!29425)))))

(assert (= (and start!77492 res!609188) b!902611))

(assert (= (and b!902611 res!609187) b!902608))

(assert (= (and b!902608 res!609189) b!902612))

(assert (= (and b!902613 condMapEmpty!29425) mapIsEmpty!29425))

(assert (= (and b!902613 (not condMapEmpty!29425)) mapNonEmpty!29425))

(get-info :version)

(assert (= (and mapNonEmpty!29425 ((_ is ValueCellFull!8757) mapValue!29425)) b!902609))

(assert (= (and b!902613 ((_ is ValueCellFull!8757) mapDefault!29425)) b!902610))

(assert (= start!77492 b!902613))

(declare-fun m!838607 () Bool)

(assert (=> b!902608 m!838607))

(declare-fun m!838609 () Bool)

(assert (=> start!77492 m!838609))

(declare-fun m!838611 () Bool)

(assert (=> start!77492 m!838611))

(declare-fun m!838613 () Bool)

(assert (=> start!77492 m!838613))

(declare-fun m!838615 () Bool)

(assert (=> b!902612 m!838615))

(declare-fun m!838617 () Bool)

(assert (=> mapNonEmpty!29425 m!838617))

(check-sat (not mapNonEmpty!29425) tp_is_empty!18477 (not start!77492) (not b!902608) (not b!902612))
(check-sat)
