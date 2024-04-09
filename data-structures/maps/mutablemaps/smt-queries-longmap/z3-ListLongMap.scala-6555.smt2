; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83244 () Bool)

(assert start!83244)

(declare-fun b_free!19209 () Bool)

(declare-fun b_next!19209 () Bool)

(assert (=> start!83244 (= b_free!19209 (not b_next!19209))))

(declare-fun tp!66907 () Bool)

(declare-fun b_and!30715 () Bool)

(assert (=> start!83244 (= tp!66907 b_and!30715)))

(declare-fun mapNonEmpty!35170 () Bool)

(declare-fun mapRes!35170 () Bool)

(declare-fun tp!66906 () Bool)

(declare-fun e!547317 () Bool)

(assert (=> mapNonEmpty!35170 (= mapRes!35170 (and tp!66906 e!547317))))

(declare-datatypes ((V!34459 0))(
  ( (V!34460 (val!11104 Int)) )
))
(declare-datatypes ((ValueCell!10572 0))(
  ( (ValueCellFull!10572 (v!13663 V!34459)) (EmptyCell!10572) )
))
(declare-datatypes ((array!60247 0))(
  ( (array!60248 (arr!28983 (Array (_ BitVec 32) ValueCell!10572)) (size!29463 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60247)

(declare-fun mapRest!35170 () (Array (_ BitVec 32) ValueCell!10572))

(declare-fun mapValue!35170 () ValueCell!10572)

(declare-fun mapKey!35170 () (_ BitVec 32))

(assert (=> mapNonEmpty!35170 (= (arr!28983 _values!1425) (store mapRest!35170 mapKey!35170 mapValue!35170))))

(declare-fun mapIsEmpty!35170 () Bool)

(assert (=> mapIsEmpty!35170 mapRes!35170))

(declare-fun b!970789 () Bool)

(declare-fun res!649881 () Bool)

(declare-fun e!547314 () Bool)

(assert (=> b!970789 (=> (not res!649881) (not e!547314))))

(declare-datatypes ((array!60249 0))(
  ( (array!60250 (arr!28984 (Array (_ BitVec 32) (_ BitVec 64))) (size!29464 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60249)

(declare-datatypes ((List!20219 0))(
  ( (Nil!20216) (Cons!20215 (h!21377 (_ BitVec 64)) (t!28590 List!20219)) )
))
(declare-fun arrayNoDuplicates!0 (array!60249 (_ BitVec 32) List!20219) Bool)

(assert (=> b!970789 (= res!649881 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20216))))

(declare-fun b!970790 () Bool)

(declare-fun tp_is_empty!22107 () Bool)

(assert (=> b!970790 (= e!547317 tp_is_empty!22107)))

(declare-fun b!970791 () Bool)

(declare-fun e!547313 () Bool)

(declare-fun e!547315 () Bool)

(assert (=> b!970791 (= e!547313 (and e!547315 mapRes!35170))))

(declare-fun condMapEmpty!35170 () Bool)

(declare-fun mapDefault!35170 () ValueCell!10572)

(assert (=> b!970791 (= condMapEmpty!35170 (= (arr!28983 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10572)) mapDefault!35170)))))

(declare-fun b!970792 () Bool)

(declare-fun res!649882 () Bool)

(assert (=> b!970792 (=> (not res!649882) (not e!547314))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60249 (_ BitVec 32)) Bool)

(assert (=> b!970792 (= res!649882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970793 () Bool)

(declare-fun res!649883 () Bool)

(assert (=> b!970793 (=> (not res!649883) (not e!547314))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!970793 (= res!649883 (and (= (size!29463 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29464 _keys!1717) (size!29463 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!970794 () Bool)

(declare-fun res!649884 () Bool)

(assert (=> b!970794 (=> (not res!649884) (not e!547314))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!970794 (= res!649884 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29464 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29464 _keys!1717))))))

(declare-fun res!649885 () Bool)

(assert (=> start!83244 (=> (not res!649885) (not e!547314))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83244 (= res!649885 (validMask!0 mask!2147))))

(assert (=> start!83244 e!547314))

(assert (=> start!83244 true))

(declare-fun array_inv!22323 (array!60247) Bool)

(assert (=> start!83244 (and (array_inv!22323 _values!1425) e!547313)))

(assert (=> start!83244 tp_is_empty!22107))

(assert (=> start!83244 tp!66907))

(declare-fun array_inv!22324 (array!60249) Bool)

(assert (=> start!83244 (array_inv!22324 _keys!1717)))

(declare-fun b!970795 () Bool)

(declare-fun res!649880 () Bool)

(assert (=> b!970795 (=> (not res!649880) (not e!547314))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970795 (= res!649880 (validKeyInArray!0 (select (arr!28984 _keys!1717) i!822)))))

(declare-fun b!970796 () Bool)

(assert (=> b!970796 (= e!547314 false)))

(declare-datatypes ((tuple2!14328 0))(
  ( (tuple2!14329 (_1!7174 (_ BitVec 64)) (_2!7174 V!34459)) )
))
(declare-datatypes ((List!20220 0))(
  ( (Nil!20217) (Cons!20216 (h!21378 tuple2!14328) (t!28591 List!20220)) )
))
(declare-datatypes ((ListLongMap!13039 0))(
  ( (ListLongMap!13040 (toList!6535 List!20220)) )
))
(declare-fun lt!431728 () ListLongMap!13039)

(declare-fun zeroValue!1367 () V!34459)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34459)

(declare-fun getCurrentListMap!3720 (array!60249 array!60247 (_ BitVec 32) (_ BitVec 32) V!34459 V!34459 (_ BitVec 32) Int) ListLongMap!13039)

(assert (=> b!970796 (= lt!431728 (getCurrentListMap!3720 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!970797 () Bool)

(declare-fun res!649879 () Bool)

(assert (=> b!970797 (=> (not res!649879) (not e!547314))))

(declare-fun contains!5590 (ListLongMap!13039 (_ BitVec 64)) Bool)

(assert (=> b!970797 (= res!649879 (contains!5590 (getCurrentListMap!3720 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28984 _keys!1717) i!822)))))

(declare-fun b!970798 () Bool)

(assert (=> b!970798 (= e!547315 tp_is_empty!22107)))

(assert (= (and start!83244 res!649885) b!970793))

(assert (= (and b!970793 res!649883) b!970792))

(assert (= (and b!970792 res!649882) b!970789))

(assert (= (and b!970789 res!649881) b!970794))

(assert (= (and b!970794 res!649884) b!970795))

(assert (= (and b!970795 res!649880) b!970797))

(assert (= (and b!970797 res!649879) b!970796))

(assert (= (and b!970791 condMapEmpty!35170) mapIsEmpty!35170))

(assert (= (and b!970791 (not condMapEmpty!35170)) mapNonEmpty!35170))

(get-info :version)

(assert (= (and mapNonEmpty!35170 ((_ is ValueCellFull!10572) mapValue!35170)) b!970790))

(assert (= (and b!970791 ((_ is ValueCellFull!10572) mapDefault!35170)) b!970798))

(assert (= start!83244 b!970791))

(declare-fun m!898485 () Bool)

(assert (=> mapNonEmpty!35170 m!898485))

(declare-fun m!898487 () Bool)

(assert (=> b!970796 m!898487))

(declare-fun m!898489 () Bool)

(assert (=> b!970795 m!898489))

(assert (=> b!970795 m!898489))

(declare-fun m!898491 () Bool)

(assert (=> b!970795 m!898491))

(declare-fun m!898493 () Bool)

(assert (=> b!970797 m!898493))

(assert (=> b!970797 m!898489))

(assert (=> b!970797 m!898493))

(assert (=> b!970797 m!898489))

(declare-fun m!898495 () Bool)

(assert (=> b!970797 m!898495))

(declare-fun m!898497 () Bool)

(assert (=> b!970792 m!898497))

(declare-fun m!898499 () Bool)

(assert (=> start!83244 m!898499))

(declare-fun m!898501 () Bool)

(assert (=> start!83244 m!898501))

(declare-fun m!898503 () Bool)

(assert (=> start!83244 m!898503))

(declare-fun m!898505 () Bool)

(assert (=> b!970789 m!898505))

(check-sat (not mapNonEmpty!35170) b_and!30715 tp_is_empty!22107 (not b!970797) (not b!970796) (not b!970792) (not b_next!19209) (not b!970789) (not start!83244) (not b!970795))
(check-sat b_and!30715 (not b_next!19209))
