; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83238 () Bool)

(assert start!83238)

(declare-fun b_free!19203 () Bool)

(declare-fun b_next!19203 () Bool)

(assert (=> start!83238 (= b_free!19203 (not b_next!19203))))

(declare-fun tp!66888 () Bool)

(declare-fun b_and!30709 () Bool)

(assert (=> start!83238 (= tp!66888 b_and!30709)))

(declare-fun res!649818 () Bool)

(declare-fun e!547272 () Bool)

(assert (=> start!83238 (=> (not res!649818) (not e!547272))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83238 (= res!649818 (validMask!0 mask!2147))))

(assert (=> start!83238 e!547272))

(assert (=> start!83238 true))

(declare-datatypes ((V!34451 0))(
  ( (V!34452 (val!11101 Int)) )
))
(declare-datatypes ((ValueCell!10569 0))(
  ( (ValueCellFull!10569 (v!13660 V!34451)) (EmptyCell!10569) )
))
(declare-datatypes ((array!60237 0))(
  ( (array!60238 (arr!28978 (Array (_ BitVec 32) ValueCell!10569)) (size!29458 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60237)

(declare-fun e!547270 () Bool)

(declare-fun array_inv!22321 (array!60237) Bool)

(assert (=> start!83238 (and (array_inv!22321 _values!1425) e!547270)))

(declare-fun tp_is_empty!22101 () Bool)

(assert (=> start!83238 tp_is_empty!22101))

(assert (=> start!83238 tp!66888))

(declare-datatypes ((array!60239 0))(
  ( (array!60240 (arr!28979 (Array (_ BitVec 32) (_ BitVec 64))) (size!29459 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60239)

(declare-fun array_inv!22322 (array!60239) Bool)

(assert (=> start!83238 (array_inv!22322 _keys!1717)))

(declare-fun b!970699 () Bool)

(declare-fun res!649819 () Bool)

(assert (=> b!970699 (=> (not res!649819) (not e!547272))))

(declare-fun zeroValue!1367 () V!34451)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34451)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(declare-datatypes ((tuple2!14326 0))(
  ( (tuple2!14327 (_1!7173 (_ BitVec 64)) (_2!7173 V!34451)) )
))
(declare-datatypes ((List!20216 0))(
  ( (Nil!20213) (Cons!20212 (h!21374 tuple2!14326) (t!28587 List!20216)) )
))
(declare-datatypes ((ListLongMap!13037 0))(
  ( (ListLongMap!13038 (toList!6534 List!20216)) )
))
(declare-fun contains!5589 (ListLongMap!13037 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3719 (array!60239 array!60237 (_ BitVec 32) (_ BitVec 32) V!34451 V!34451 (_ BitVec 32) Int) ListLongMap!13037)

(assert (=> b!970699 (= res!649819 (contains!5589 (getCurrentListMap!3719 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28979 _keys!1717) i!822)))))

(declare-fun b!970700 () Bool)

(declare-fun e!547269 () Bool)

(declare-fun mapRes!35161 () Bool)

(assert (=> b!970700 (= e!547270 (and e!547269 mapRes!35161))))

(declare-fun condMapEmpty!35161 () Bool)

(declare-fun mapDefault!35161 () ValueCell!10569)

(assert (=> b!970700 (= condMapEmpty!35161 (= (arr!28978 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10569)) mapDefault!35161)))))

(declare-fun b!970701 () Bool)

(declare-fun res!649816 () Bool)

(assert (=> b!970701 (=> (not res!649816) (not e!547272))))

(assert (=> b!970701 (= res!649816 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29459 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29459 _keys!1717))))))

(declare-fun b!970702 () Bool)

(declare-fun res!649817 () Bool)

(assert (=> b!970702 (=> (not res!649817) (not e!547272))))

(assert (=> b!970702 (= res!649817 (and (= (size!29458 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29459 _keys!1717) (size!29458 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!970703 () Bool)

(declare-fun e!547271 () Bool)

(assert (=> b!970703 (= e!547271 tp_is_empty!22101)))

(declare-fun b!970704 () Bool)

(assert (=> b!970704 (= e!547272 (bvsgt (bvsub from!2118 #b00000000000000000000000000000001) (size!29459 _keys!1717)))))

(declare-fun b!970705 () Bool)

(assert (=> b!970705 (= e!547269 tp_is_empty!22101)))

(declare-fun b!970706 () Bool)

(declare-fun res!649820 () Bool)

(assert (=> b!970706 (=> (not res!649820) (not e!547272))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970706 (= res!649820 (validKeyInArray!0 (select (arr!28979 _keys!1717) i!822)))))

(declare-fun b!970707 () Bool)

(declare-fun res!649821 () Bool)

(assert (=> b!970707 (=> (not res!649821) (not e!547272))))

(declare-datatypes ((List!20217 0))(
  ( (Nil!20214) (Cons!20213 (h!21375 (_ BitVec 64)) (t!28588 List!20217)) )
))
(declare-fun arrayNoDuplicates!0 (array!60239 (_ BitVec 32) List!20217) Bool)

(assert (=> b!970707 (= res!649821 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20214))))

(declare-fun mapIsEmpty!35161 () Bool)

(assert (=> mapIsEmpty!35161 mapRes!35161))

(declare-fun b!970708 () Bool)

(declare-fun res!649822 () Bool)

(assert (=> b!970708 (=> (not res!649822) (not e!547272))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60239 (_ BitVec 32)) Bool)

(assert (=> b!970708 (= res!649822 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun mapNonEmpty!35161 () Bool)

(declare-fun tp!66889 () Bool)

(assert (=> mapNonEmpty!35161 (= mapRes!35161 (and tp!66889 e!547271))))

(declare-fun mapRest!35161 () (Array (_ BitVec 32) ValueCell!10569))

(declare-fun mapKey!35161 () (_ BitVec 32))

(declare-fun mapValue!35161 () ValueCell!10569)

(assert (=> mapNonEmpty!35161 (= (arr!28978 _values!1425) (store mapRest!35161 mapKey!35161 mapValue!35161))))

(assert (= (and start!83238 res!649818) b!970702))

(assert (= (and b!970702 res!649817) b!970708))

(assert (= (and b!970708 res!649822) b!970707))

(assert (= (and b!970707 res!649821) b!970701))

(assert (= (and b!970701 res!649816) b!970706))

(assert (= (and b!970706 res!649820) b!970699))

(assert (= (and b!970699 res!649819) b!970704))

(assert (= (and b!970700 condMapEmpty!35161) mapIsEmpty!35161))

(assert (= (and b!970700 (not condMapEmpty!35161)) mapNonEmpty!35161))

(get-info :version)

(assert (= (and mapNonEmpty!35161 ((_ is ValueCellFull!10569) mapValue!35161)) b!970703))

(assert (= (and b!970700 ((_ is ValueCellFull!10569) mapDefault!35161)) b!970705))

(assert (= start!83238 b!970700))

(declare-fun m!898423 () Bool)

(assert (=> b!970707 m!898423))

(declare-fun m!898425 () Bool)

(assert (=> b!970708 m!898425))

(declare-fun m!898427 () Bool)

(assert (=> mapNonEmpty!35161 m!898427))

(declare-fun m!898429 () Bool)

(assert (=> start!83238 m!898429))

(declare-fun m!898431 () Bool)

(assert (=> start!83238 m!898431))

(declare-fun m!898433 () Bool)

(assert (=> start!83238 m!898433))

(declare-fun m!898435 () Bool)

(assert (=> b!970706 m!898435))

(assert (=> b!970706 m!898435))

(declare-fun m!898437 () Bool)

(assert (=> b!970706 m!898437))

(declare-fun m!898439 () Bool)

(assert (=> b!970699 m!898439))

(assert (=> b!970699 m!898435))

(assert (=> b!970699 m!898439))

(assert (=> b!970699 m!898435))

(declare-fun m!898441 () Bool)

(assert (=> b!970699 m!898441))

(check-sat (not b!970707) (not b_next!19203) tp_is_empty!22101 (not start!83238) b_and!30709 (not b!970708) (not b!970699) (not b!970706) (not mapNonEmpty!35161))
(check-sat b_and!30709 (not b_next!19203))
