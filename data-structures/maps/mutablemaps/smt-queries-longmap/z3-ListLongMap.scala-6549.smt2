; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83208 () Bool)

(assert start!83208)

(declare-fun b_free!19173 () Bool)

(declare-fun b_next!19173 () Bool)

(assert (=> start!83208 (= b_free!19173 (not b_next!19173))))

(declare-fun tp!66799 () Bool)

(declare-fun b_and!30679 () Bool)

(assert (=> start!83208 (= tp!66799 b_and!30679)))

(declare-fun b!970289 () Bool)

(declare-fun res!649541 () Bool)

(declare-fun e!547045 () Bool)

(assert (=> b!970289 (=> (not res!649541) (not e!547045))))

(declare-datatypes ((array!60183 0))(
  ( (array!60184 (arr!28951 (Array (_ BitVec 32) (_ BitVec 64))) (size!29431 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60183)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!970289 (= res!649541 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29431 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29431 _keys!1717))))))

(declare-fun b!970290 () Bool)

(declare-fun res!649544 () Bool)

(assert (=> b!970290 (=> (not res!649544) (not e!547045))))

(declare-datatypes ((List!20195 0))(
  ( (Nil!20192) (Cons!20191 (h!21353 (_ BitVec 64)) (t!28566 List!20195)) )
))
(declare-fun arrayNoDuplicates!0 (array!60183 (_ BitVec 32) List!20195) Bool)

(assert (=> b!970290 (= res!649544 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20192))))

(declare-fun b!970291 () Bool)

(declare-fun res!649543 () Bool)

(assert (=> b!970291 (=> (not res!649543) (not e!547045))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60183 (_ BitVec 32)) Bool)

(assert (=> b!970291 (= res!649543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970292 () Bool)

(declare-fun e!547047 () Bool)

(declare-fun tp_is_empty!22071 () Bool)

(assert (=> b!970292 (= e!547047 tp_is_empty!22071)))

(declare-fun b!970293 () Bool)

(declare-fun res!649546 () Bool)

(assert (=> b!970293 (=> (not res!649546) (not e!547045))))

(declare-datatypes ((V!34411 0))(
  ( (V!34412 (val!11086 Int)) )
))
(declare-datatypes ((ValueCell!10554 0))(
  ( (ValueCellFull!10554 (v!13645 V!34411)) (EmptyCell!10554) )
))
(declare-datatypes ((array!60185 0))(
  ( (array!60186 (arr!28952 (Array (_ BitVec 32) ValueCell!10554)) (size!29432 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60185)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!970293 (= res!649546 (and (= (size!29432 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29431 _keys!1717) (size!29432 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!35116 () Bool)

(declare-fun mapRes!35116 () Bool)

(declare-fun tp!66798 () Bool)

(assert (=> mapNonEmpty!35116 (= mapRes!35116 (and tp!66798 e!547047))))

(declare-fun mapKey!35116 () (_ BitVec 32))

(declare-fun mapValue!35116 () ValueCell!10554)

(declare-fun mapRest!35116 () (Array (_ BitVec 32) ValueCell!10554))

(assert (=> mapNonEmpty!35116 (= (arr!28952 _values!1425) (store mapRest!35116 mapKey!35116 mapValue!35116))))

(declare-fun b!970294 () Bool)

(declare-fun res!649542 () Bool)

(assert (=> b!970294 (=> (not res!649542) (not e!547045))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970294 (= res!649542 (validKeyInArray!0 (select (arr!28951 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35116 () Bool)

(assert (=> mapIsEmpty!35116 mapRes!35116))

(declare-fun b!970296 () Bool)

(declare-fun e!547044 () Bool)

(assert (=> b!970296 (= e!547044 tp_is_empty!22071)))

(declare-fun b!970297 () Bool)

(assert (=> b!970297 (= e!547045 false)))

(declare-fun zeroValue!1367 () V!34411)

(declare-fun lt!431683 () Bool)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34411)

(declare-datatypes ((tuple2!14304 0))(
  ( (tuple2!14305 (_1!7162 (_ BitVec 64)) (_2!7162 V!34411)) )
))
(declare-datatypes ((List!20196 0))(
  ( (Nil!20193) (Cons!20192 (h!21354 tuple2!14304) (t!28567 List!20196)) )
))
(declare-datatypes ((ListLongMap!13015 0))(
  ( (ListLongMap!13016 (toList!6523 List!20196)) )
))
(declare-fun contains!5578 (ListLongMap!13015 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3708 (array!60183 array!60185 (_ BitVec 32) (_ BitVec 32) V!34411 V!34411 (_ BitVec 32) Int) ListLongMap!13015)

(assert (=> b!970297 (= lt!431683 (contains!5578 (getCurrentListMap!3708 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28951 _keys!1717) i!822)))))

(declare-fun res!649545 () Bool)

(assert (=> start!83208 (=> (not res!649545) (not e!547045))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83208 (= res!649545 (validMask!0 mask!2147))))

(assert (=> start!83208 e!547045))

(assert (=> start!83208 true))

(declare-fun e!547043 () Bool)

(declare-fun array_inv!22297 (array!60185) Bool)

(assert (=> start!83208 (and (array_inv!22297 _values!1425) e!547043)))

(assert (=> start!83208 tp_is_empty!22071))

(assert (=> start!83208 tp!66799))

(declare-fun array_inv!22298 (array!60183) Bool)

(assert (=> start!83208 (array_inv!22298 _keys!1717)))

(declare-fun b!970295 () Bool)

(assert (=> b!970295 (= e!547043 (and e!547044 mapRes!35116))))

(declare-fun condMapEmpty!35116 () Bool)

(declare-fun mapDefault!35116 () ValueCell!10554)

(assert (=> b!970295 (= condMapEmpty!35116 (= (arr!28952 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10554)) mapDefault!35116)))))

(assert (= (and start!83208 res!649545) b!970293))

(assert (= (and b!970293 res!649546) b!970291))

(assert (= (and b!970291 res!649543) b!970290))

(assert (= (and b!970290 res!649544) b!970289))

(assert (= (and b!970289 res!649541) b!970294))

(assert (= (and b!970294 res!649542) b!970297))

(assert (= (and b!970295 condMapEmpty!35116) mapIsEmpty!35116))

(assert (= (and b!970295 (not condMapEmpty!35116)) mapNonEmpty!35116))

(get-info :version)

(assert (= (and mapNonEmpty!35116 ((_ is ValueCellFull!10554) mapValue!35116)) b!970292))

(assert (= (and b!970295 ((_ is ValueCellFull!10554) mapDefault!35116)) b!970296))

(assert (= start!83208 b!970295))

(declare-fun m!898123 () Bool)

(assert (=> start!83208 m!898123))

(declare-fun m!898125 () Bool)

(assert (=> start!83208 m!898125))

(declare-fun m!898127 () Bool)

(assert (=> start!83208 m!898127))

(declare-fun m!898129 () Bool)

(assert (=> mapNonEmpty!35116 m!898129))

(declare-fun m!898131 () Bool)

(assert (=> b!970290 m!898131))

(declare-fun m!898133 () Bool)

(assert (=> b!970291 m!898133))

(declare-fun m!898135 () Bool)

(assert (=> b!970294 m!898135))

(assert (=> b!970294 m!898135))

(declare-fun m!898137 () Bool)

(assert (=> b!970294 m!898137))

(declare-fun m!898139 () Bool)

(assert (=> b!970297 m!898139))

(assert (=> b!970297 m!898135))

(assert (=> b!970297 m!898139))

(assert (=> b!970297 m!898135))

(declare-fun m!898141 () Bool)

(assert (=> b!970297 m!898141))

(check-sat (not start!83208) (not mapNonEmpty!35116) (not b_next!19173) (not b!970291) (not b!970290) tp_is_empty!22071 (not b!970294) b_and!30679 (not b!970297))
(check-sat b_and!30679 (not b_next!19173))
