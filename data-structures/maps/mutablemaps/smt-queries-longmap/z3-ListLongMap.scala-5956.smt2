; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77592 () Bool)

(assert start!77592)

(declare-fun b_free!16149 () Bool)

(declare-fun b_next!16149 () Bool)

(assert (=> start!77592 (= b_free!16149 (not b_next!16149))))

(declare-fun tp!56709 () Bool)

(declare-fun b_and!26533 () Bool)

(assert (=> start!77592 (= tp!56709 b_and!26533)))

(declare-fun b!903573 () Bool)

(declare-fun e!506329 () Bool)

(declare-fun e!506328 () Bool)

(assert (=> b!903573 (= e!506329 (not e!506328))))

(declare-fun res!609730 () Bool)

(assert (=> b!903573 (=> res!609730 e!506328)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53170 0))(
  ( (array!53171 (arr!25540 (Array (_ BitVec 32) (_ BitVec 64))) (size!26000 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53170)

(assert (=> b!903573 (= res!609730 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26000 _keys!1386))))))

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53170 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!903573 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((V!29721 0))(
  ( (V!29722 (val!9334 Int)) )
))
(declare-fun zeroValue!1094 () V!29721)

(declare-datatypes ((ValueCell!8802 0))(
  ( (ValueCellFull!8802 (v!11839 V!29721)) (EmptyCell!8802) )
))
(declare-datatypes ((array!53172 0))(
  ( (array!53173 (arr!25541 (Array (_ BitVec 32) ValueCell!8802)) (size!26001 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53172)

(declare-datatypes ((Unit!30613 0))(
  ( (Unit!30614) )
))
(declare-fun lt!408000 () Unit!30613)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29721)

(declare-fun lemmaKeyInListMapIsInArray!169 (array!53170 array!53172 (_ BitVec 32) (_ BitVec 32) V!29721 V!29721 (_ BitVec 64) Int) Unit!30613)

(assert (=> b!903573 (= lt!408000 (lemmaKeyInListMapIsInArray!169 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!903574 () Bool)

(declare-fun res!609729 () Bool)

(assert (=> b!903574 (=> (not res!609729) (not e!506329))))

(assert (=> b!903574 (= res!609729 (and (= (size!26001 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26000 _keys!1386) (size!26001 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!903575 () Bool)

(declare-fun e!506325 () Bool)

(assert (=> b!903575 (= e!506325 true)))

(declare-fun lt!408002 () V!29721)

(declare-datatypes ((tuple2!12138 0))(
  ( (tuple2!12139 (_1!6079 (_ BitVec 64)) (_2!6079 V!29721)) )
))
(declare-datatypes ((List!18014 0))(
  ( (Nil!18011) (Cons!18010 (h!19156 tuple2!12138) (t!25405 List!18014)) )
))
(declare-datatypes ((ListLongMap!10849 0))(
  ( (ListLongMap!10850 (toList!5440 List!18014)) )
))
(declare-fun lt!408001 () ListLongMap!10849)

(declare-fun apply!423 (ListLongMap!10849 (_ BitVec 64)) V!29721)

(assert (=> b!903575 (= lt!408002 (apply!423 lt!408001 k0!1033))))

(declare-fun b!903576 () Bool)

(declare-fun e!506326 () Bool)

(declare-fun tp_is_empty!18567 () Bool)

(assert (=> b!903576 (= e!506326 tp_is_empty!18567)))

(declare-fun b!903577 () Bool)

(declare-fun e!506324 () Bool)

(assert (=> b!903577 (= e!506324 tp_is_empty!18567)))

(declare-fun b!903578 () Bool)

(declare-fun res!609731 () Bool)

(assert (=> b!903578 (=> (not res!609731) (not e!506329))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!903578 (= res!609731 (inRange!0 i!717 mask!1756))))

(declare-fun mapIsEmpty!29563 () Bool)

(declare-fun mapRes!29563 () Bool)

(assert (=> mapIsEmpty!29563 mapRes!29563))

(declare-fun b!903579 () Bool)

(assert (=> b!903579 (= e!506328 e!506325)))

(declare-fun res!609733 () Bool)

(assert (=> b!903579 (=> res!609733 e!506325)))

(declare-fun contains!4453 (ListLongMap!10849 (_ BitVec 64)) Bool)

(assert (=> b!903579 (= res!609733 (not (contains!4453 lt!408001 k0!1033)))))

(declare-fun getCurrentListMap!2677 (array!53170 array!53172 (_ BitVec 32) (_ BitVec 32) V!29721 V!29721 (_ BitVec 32) Int) ListLongMap!10849)

(assert (=> b!903579 (= lt!408001 (getCurrentListMap!2677 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun res!609732 () Bool)

(assert (=> start!77592 (=> (not res!609732) (not e!506329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77592 (= res!609732 (validMask!0 mask!1756))))

(assert (=> start!77592 e!506329))

(declare-fun e!506327 () Bool)

(declare-fun array_inv!19988 (array!53172) Bool)

(assert (=> start!77592 (and (array_inv!19988 _values!1152) e!506327)))

(assert (=> start!77592 tp!56709))

(assert (=> start!77592 true))

(assert (=> start!77592 tp_is_empty!18567))

(declare-fun array_inv!19989 (array!53170) Bool)

(assert (=> start!77592 (array_inv!19989 _keys!1386)))

(declare-fun mapNonEmpty!29563 () Bool)

(declare-fun tp!56710 () Bool)

(assert (=> mapNonEmpty!29563 (= mapRes!29563 (and tp!56710 e!506324))))

(declare-fun mapValue!29563 () ValueCell!8802)

(declare-fun mapRest!29563 () (Array (_ BitVec 32) ValueCell!8802))

(declare-fun mapKey!29563 () (_ BitVec 32))

(assert (=> mapNonEmpty!29563 (= (arr!25541 _values!1152) (store mapRest!29563 mapKey!29563 mapValue!29563))))

(declare-fun b!903580 () Bool)

(assert (=> b!903580 (= e!506327 (and e!506326 mapRes!29563))))

(declare-fun condMapEmpty!29563 () Bool)

(declare-fun mapDefault!29563 () ValueCell!8802)

(assert (=> b!903580 (= condMapEmpty!29563 (= (arr!25541 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8802)) mapDefault!29563)))))

(declare-fun b!903581 () Bool)

(declare-fun res!609728 () Bool)

(assert (=> b!903581 (=> (not res!609728) (not e!506329))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53170 (_ BitVec 32)) Bool)

(assert (=> b!903581 (= res!609728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!903582 () Bool)

(declare-fun res!609735 () Bool)

(assert (=> b!903582 (=> (not res!609735) (not e!506329))))

(declare-datatypes ((List!18015 0))(
  ( (Nil!18012) (Cons!18011 (h!19157 (_ BitVec 64)) (t!25406 List!18015)) )
))
(declare-fun arrayNoDuplicates!0 (array!53170 (_ BitVec 32) List!18015) Bool)

(assert (=> b!903582 (= res!609735 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18012))))

(declare-fun b!903583 () Bool)

(declare-fun res!609734 () Bool)

(assert (=> b!903583 (=> (not res!609734) (not e!506329))))

(assert (=> b!903583 (= res!609734 (contains!4453 (getCurrentListMap!2677 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun b!903584 () Bool)

(declare-fun res!609727 () Bool)

(assert (=> b!903584 (=> (not res!609727) (not e!506329))))

(assert (=> b!903584 (= res!609727 (and (= (select (arr!25540 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!77592 res!609732) b!903574))

(assert (= (and b!903574 res!609729) b!903581))

(assert (= (and b!903581 res!609728) b!903582))

(assert (= (and b!903582 res!609735) b!903583))

(assert (= (and b!903583 res!609734) b!903578))

(assert (= (and b!903578 res!609731) b!903584))

(assert (= (and b!903584 res!609727) b!903573))

(assert (= (and b!903573 (not res!609730)) b!903579))

(assert (= (and b!903579 (not res!609733)) b!903575))

(assert (= (and b!903580 condMapEmpty!29563) mapIsEmpty!29563))

(assert (= (and b!903580 (not condMapEmpty!29563)) mapNonEmpty!29563))

(get-info :version)

(assert (= (and mapNonEmpty!29563 ((_ is ValueCellFull!8802) mapValue!29563)) b!903577))

(assert (= (and b!903580 ((_ is ValueCellFull!8802) mapDefault!29563)) b!903576))

(assert (= start!77592 b!903580))

(declare-fun m!839291 () Bool)

(assert (=> b!903581 m!839291))

(declare-fun m!839293 () Bool)

(assert (=> b!903582 m!839293))

(declare-fun m!839295 () Bool)

(assert (=> b!903575 m!839295))

(declare-fun m!839297 () Bool)

(assert (=> mapNonEmpty!29563 m!839297))

(declare-fun m!839299 () Bool)

(assert (=> b!903579 m!839299))

(declare-fun m!839301 () Bool)

(assert (=> b!903579 m!839301))

(declare-fun m!839303 () Bool)

(assert (=> b!903583 m!839303))

(assert (=> b!903583 m!839303))

(declare-fun m!839305 () Bool)

(assert (=> b!903583 m!839305))

(declare-fun m!839307 () Bool)

(assert (=> b!903578 m!839307))

(declare-fun m!839309 () Bool)

(assert (=> b!903584 m!839309))

(declare-fun m!839311 () Bool)

(assert (=> start!77592 m!839311))

(declare-fun m!839313 () Bool)

(assert (=> start!77592 m!839313))

(declare-fun m!839315 () Bool)

(assert (=> start!77592 m!839315))

(declare-fun m!839317 () Bool)

(assert (=> b!903573 m!839317))

(declare-fun m!839319 () Bool)

(assert (=> b!903573 m!839319))

(check-sat (not b!903575) b_and!26533 tp_is_empty!18567 (not b!903573) (not start!77592) (not b!903579) (not b!903581) (not b_next!16149) (not b!903583) (not b!903578) (not b!903582) (not mapNonEmpty!29563))
(check-sat b_and!26533 (not b_next!16149))
