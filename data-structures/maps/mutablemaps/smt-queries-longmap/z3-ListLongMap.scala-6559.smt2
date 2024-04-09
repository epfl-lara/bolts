; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83268 () Bool)

(assert start!83268)

(declare-fun b_free!19233 () Bool)

(declare-fun b_next!19233 () Bool)

(assert (=> start!83268 (= b_free!19233 (not b_next!19233))))

(declare-fun tp!66979 () Bool)

(declare-fun b_and!30739 () Bool)

(assert (=> start!83268 (= tp!66979 b_and!30739)))

(declare-fun b!971149 () Bool)

(declare-fun e!547496 () Bool)

(declare-fun e!547497 () Bool)

(declare-fun mapRes!35206 () Bool)

(assert (=> b!971149 (= e!547496 (and e!547497 mapRes!35206))))

(declare-fun condMapEmpty!35206 () Bool)

(declare-datatypes ((V!34491 0))(
  ( (V!34492 (val!11116 Int)) )
))
(declare-datatypes ((ValueCell!10584 0))(
  ( (ValueCellFull!10584 (v!13675 V!34491)) (EmptyCell!10584) )
))
(declare-datatypes ((array!60295 0))(
  ( (array!60296 (arr!29007 (Array (_ BitVec 32) ValueCell!10584)) (size!29487 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60295)

(declare-fun mapDefault!35206 () ValueCell!10584)

(assert (=> b!971149 (= condMapEmpty!35206 (= (arr!29007 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10584)) mapDefault!35206)))))

(declare-fun res!650134 () Bool)

(declare-fun e!547495 () Bool)

(assert (=> start!83268 (=> (not res!650134) (not e!547495))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83268 (= res!650134 (validMask!0 mask!2147))))

(assert (=> start!83268 e!547495))

(assert (=> start!83268 true))

(declare-fun array_inv!22339 (array!60295) Bool)

(assert (=> start!83268 (and (array_inv!22339 _values!1425) e!547496)))

(declare-fun tp_is_empty!22131 () Bool)

(assert (=> start!83268 tp_is_empty!22131))

(assert (=> start!83268 tp!66979))

(declare-datatypes ((array!60297 0))(
  ( (array!60298 (arr!29008 (Array (_ BitVec 32) (_ BitVec 64))) (size!29488 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60297)

(declare-fun array_inv!22340 (array!60297) Bool)

(assert (=> start!83268 (array_inv!22340 _keys!1717)))

(declare-fun b!971150 () Bool)

(declare-fun res!650133 () Bool)

(assert (=> b!971150 (=> (not res!650133) (not e!547495))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971150 (= res!650133 (validKeyInArray!0 (select (arr!29008 _keys!1717) i!822)))))

(declare-fun b!971151 () Bool)

(declare-fun res!650131 () Bool)

(assert (=> b!971151 (=> (not res!650131) (not e!547495))))

(declare-datatypes ((List!20241 0))(
  ( (Nil!20238) (Cons!20237 (h!21399 (_ BitVec 64)) (t!28612 List!20241)) )
))
(declare-fun arrayNoDuplicates!0 (array!60297 (_ BitVec 32) List!20241) Bool)

(assert (=> b!971151 (= res!650131 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20238))))

(declare-fun b!971152 () Bool)

(declare-fun res!650137 () Bool)

(assert (=> b!971152 (=> (not res!650137) (not e!547495))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60297 (_ BitVec 32)) Bool)

(assert (=> b!971152 (= res!650137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun mapIsEmpty!35206 () Bool)

(assert (=> mapIsEmpty!35206 mapRes!35206))

(declare-fun b!971153 () Bool)

(declare-fun res!650135 () Bool)

(assert (=> b!971153 (=> (not res!650135) (not e!547495))))

(declare-fun zeroValue!1367 () V!34491)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun minValue!1367 () V!34491)

(declare-datatypes ((tuple2!14350 0))(
  ( (tuple2!14351 (_1!7185 (_ BitVec 64)) (_2!7185 V!34491)) )
))
(declare-datatypes ((List!20242 0))(
  ( (Nil!20239) (Cons!20238 (h!21400 tuple2!14350) (t!28613 List!20242)) )
))
(declare-datatypes ((ListLongMap!13061 0))(
  ( (ListLongMap!13062 (toList!6546 List!20242)) )
))
(declare-fun contains!5598 (ListLongMap!13061 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3731 (array!60297 array!60295 (_ BitVec 32) (_ BitVec 32) V!34491 V!34491 (_ BitVec 32) Int) ListLongMap!13061)

(assert (=> b!971153 (= res!650135 (contains!5598 (getCurrentListMap!3731 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29008 _keys!1717) i!822)))))

(declare-fun b!971154 () Bool)

(declare-fun res!650132 () Bool)

(assert (=> b!971154 (=> (not res!650132) (not e!547495))))

(assert (=> b!971154 (= res!650132 (and (= (size!29487 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29488 _keys!1717) (size!29487 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!971155 () Bool)

(assert (=> b!971155 (= e!547497 tp_is_empty!22131)))

(declare-fun b!971156 () Bool)

(declare-fun e!547493 () Bool)

(assert (=> b!971156 (= e!547493 tp_is_empty!22131)))

(declare-fun b!971157 () Bool)

(assert (=> b!971157 (= e!547495 false)))

(declare-fun lt!431764 () ListLongMap!13061)

(assert (=> b!971157 (= lt!431764 (getCurrentListMap!3731 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun mapNonEmpty!35206 () Bool)

(declare-fun tp!66978 () Bool)

(assert (=> mapNonEmpty!35206 (= mapRes!35206 (and tp!66978 e!547493))))

(declare-fun mapValue!35206 () ValueCell!10584)

(declare-fun mapRest!35206 () (Array (_ BitVec 32) ValueCell!10584))

(declare-fun mapKey!35206 () (_ BitVec 32))

(assert (=> mapNonEmpty!35206 (= (arr!29007 _values!1425) (store mapRest!35206 mapKey!35206 mapValue!35206))))

(declare-fun b!971158 () Bool)

(declare-fun res!650136 () Bool)

(assert (=> b!971158 (=> (not res!650136) (not e!547495))))

(assert (=> b!971158 (= res!650136 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29488 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29488 _keys!1717))))))

(assert (= (and start!83268 res!650134) b!971154))

(assert (= (and b!971154 res!650132) b!971152))

(assert (= (and b!971152 res!650137) b!971151))

(assert (= (and b!971151 res!650131) b!971158))

(assert (= (and b!971158 res!650136) b!971150))

(assert (= (and b!971150 res!650133) b!971153))

(assert (= (and b!971153 res!650135) b!971157))

(assert (= (and b!971149 condMapEmpty!35206) mapIsEmpty!35206))

(assert (= (and b!971149 (not condMapEmpty!35206)) mapNonEmpty!35206))

(get-info :version)

(assert (= (and mapNonEmpty!35206 ((_ is ValueCellFull!10584) mapValue!35206)) b!971156))

(assert (= (and b!971149 ((_ is ValueCellFull!10584) mapDefault!35206)) b!971155))

(assert (= start!83268 b!971149))

(declare-fun m!898749 () Bool)

(assert (=> b!971153 m!898749))

(declare-fun m!898751 () Bool)

(assert (=> b!971153 m!898751))

(assert (=> b!971153 m!898749))

(assert (=> b!971153 m!898751))

(declare-fun m!898753 () Bool)

(assert (=> b!971153 m!898753))

(declare-fun m!898755 () Bool)

(assert (=> start!83268 m!898755))

(declare-fun m!898757 () Bool)

(assert (=> start!83268 m!898757))

(declare-fun m!898759 () Bool)

(assert (=> start!83268 m!898759))

(declare-fun m!898761 () Bool)

(assert (=> b!971152 m!898761))

(assert (=> b!971150 m!898751))

(assert (=> b!971150 m!898751))

(declare-fun m!898763 () Bool)

(assert (=> b!971150 m!898763))

(declare-fun m!898765 () Bool)

(assert (=> mapNonEmpty!35206 m!898765))

(declare-fun m!898767 () Bool)

(assert (=> b!971157 m!898767))

(declare-fun m!898769 () Bool)

(assert (=> b!971151 m!898769))

(check-sat (not b!971150) (not mapNonEmpty!35206) (not b!971153) (not start!83268) (not b!971152) (not b!971151) (not b_next!19233) b_and!30739 (not b!971157) tp_is_empty!22131)
(check-sat b_and!30739 (not b_next!19233))
