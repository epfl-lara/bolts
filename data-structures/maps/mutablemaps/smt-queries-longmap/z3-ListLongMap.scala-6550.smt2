; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83214 () Bool)

(assert start!83214)

(declare-fun b_free!19179 () Bool)

(declare-fun b_next!19179 () Bool)

(assert (=> start!83214 (= b_free!19179 (not b_next!19179))))

(declare-fun tp!66817 () Bool)

(declare-fun b_and!30685 () Bool)

(assert (=> start!83214 (= tp!66817 b_and!30685)))

(declare-fun b!970370 () Bool)

(declare-fun e!547088 () Bool)

(declare-fun e!547091 () Bool)

(declare-fun mapRes!35125 () Bool)

(assert (=> b!970370 (= e!547088 (and e!547091 mapRes!35125))))

(declare-fun condMapEmpty!35125 () Bool)

(declare-datatypes ((V!34419 0))(
  ( (V!34420 (val!11089 Int)) )
))
(declare-datatypes ((ValueCell!10557 0))(
  ( (ValueCellFull!10557 (v!13648 V!34419)) (EmptyCell!10557) )
))
(declare-datatypes ((array!60193 0))(
  ( (array!60194 (arr!28956 (Array (_ BitVec 32) ValueCell!10557)) (size!29436 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60193)

(declare-fun mapDefault!35125 () ValueCell!10557)

(assert (=> b!970370 (= condMapEmpty!35125 (= (arr!28956 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10557)) mapDefault!35125)))))

(declare-fun res!649596 () Bool)

(declare-fun e!547090 () Bool)

(assert (=> start!83214 (=> (not res!649596) (not e!547090))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83214 (= res!649596 (validMask!0 mask!2147))))

(assert (=> start!83214 e!547090))

(assert (=> start!83214 true))

(declare-fun array_inv!22301 (array!60193) Bool)

(assert (=> start!83214 (and (array_inv!22301 _values!1425) e!547088)))

(declare-fun tp_is_empty!22077 () Bool)

(assert (=> start!83214 tp_is_empty!22077))

(assert (=> start!83214 tp!66817))

(declare-datatypes ((array!60195 0))(
  ( (array!60196 (arr!28957 (Array (_ BitVec 32) (_ BitVec 64))) (size!29437 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60195)

(declare-fun array_inv!22302 (array!60195) Bool)

(assert (=> start!83214 (array_inv!22302 _keys!1717)))

(declare-fun b!970371 () Bool)

(declare-fun res!649600 () Bool)

(assert (=> b!970371 (=> (not res!649600) (not e!547090))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!970371 (= res!649600 (and (= (size!29436 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29437 _keys!1717) (size!29436 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!35125 () Bool)

(declare-fun tp!66816 () Bool)

(declare-fun e!547089 () Bool)

(assert (=> mapNonEmpty!35125 (= mapRes!35125 (and tp!66816 e!547089))))

(declare-fun mapValue!35125 () ValueCell!10557)

(declare-fun mapRest!35125 () (Array (_ BitVec 32) ValueCell!10557))

(declare-fun mapKey!35125 () (_ BitVec 32))

(assert (=> mapNonEmpty!35125 (= (arr!28956 _values!1425) (store mapRest!35125 mapKey!35125 mapValue!35125))))

(declare-fun b!970372 () Bool)

(declare-fun res!649599 () Bool)

(assert (=> b!970372 (=> (not res!649599) (not e!547090))))

(declare-datatypes ((List!20199 0))(
  ( (Nil!20196) (Cons!20195 (h!21357 (_ BitVec 64)) (t!28570 List!20199)) )
))
(declare-fun arrayNoDuplicates!0 (array!60195 (_ BitVec 32) List!20199) Bool)

(assert (=> b!970372 (= res!649599 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20196))))

(declare-fun b!970373 () Bool)

(assert (=> b!970373 (= e!547090 false)))

(declare-fun zeroValue!1367 () V!34419)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34419)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun lt!431692 () Bool)

(declare-datatypes ((tuple2!14308 0))(
  ( (tuple2!14309 (_1!7164 (_ BitVec 64)) (_2!7164 V!34419)) )
))
(declare-datatypes ((List!20200 0))(
  ( (Nil!20197) (Cons!20196 (h!21358 tuple2!14308) (t!28571 List!20200)) )
))
(declare-datatypes ((ListLongMap!13019 0))(
  ( (ListLongMap!13020 (toList!6525 List!20200)) )
))
(declare-fun contains!5580 (ListLongMap!13019 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3710 (array!60195 array!60193 (_ BitVec 32) (_ BitVec 32) V!34419 V!34419 (_ BitVec 32) Int) ListLongMap!13019)

(assert (=> b!970373 (= lt!431692 (contains!5580 (getCurrentListMap!3710 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28957 _keys!1717) i!822)))))

(declare-fun b!970374 () Bool)

(assert (=> b!970374 (= e!547091 tp_is_empty!22077)))

(declare-fun b!970375 () Bool)

(declare-fun res!649595 () Bool)

(assert (=> b!970375 (=> (not res!649595) (not e!547090))))

(assert (=> b!970375 (= res!649595 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29437 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29437 _keys!1717))))))

(declare-fun b!970376 () Bool)

(declare-fun res!649598 () Bool)

(assert (=> b!970376 (=> (not res!649598) (not e!547090))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60195 (_ BitVec 32)) Bool)

(assert (=> b!970376 (= res!649598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970377 () Bool)

(declare-fun res!649597 () Bool)

(assert (=> b!970377 (=> (not res!649597) (not e!547090))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970377 (= res!649597 (validKeyInArray!0 (select (arr!28957 _keys!1717) i!822)))))

(declare-fun b!970378 () Bool)

(assert (=> b!970378 (= e!547089 tp_is_empty!22077)))

(declare-fun mapIsEmpty!35125 () Bool)

(assert (=> mapIsEmpty!35125 mapRes!35125))

(assert (= (and start!83214 res!649596) b!970371))

(assert (= (and b!970371 res!649600) b!970376))

(assert (= (and b!970376 res!649598) b!970372))

(assert (= (and b!970372 res!649599) b!970375))

(assert (= (and b!970375 res!649595) b!970377))

(assert (= (and b!970377 res!649597) b!970373))

(assert (= (and b!970370 condMapEmpty!35125) mapIsEmpty!35125))

(assert (= (and b!970370 (not condMapEmpty!35125)) mapNonEmpty!35125))

(get-info :version)

(assert (= (and mapNonEmpty!35125 ((_ is ValueCellFull!10557) mapValue!35125)) b!970378))

(assert (= (and b!970370 ((_ is ValueCellFull!10557) mapDefault!35125)) b!970374))

(assert (= start!83214 b!970370))

(declare-fun m!898183 () Bool)

(assert (=> b!970377 m!898183))

(assert (=> b!970377 m!898183))

(declare-fun m!898185 () Bool)

(assert (=> b!970377 m!898185))

(declare-fun m!898187 () Bool)

(assert (=> b!970373 m!898187))

(assert (=> b!970373 m!898183))

(assert (=> b!970373 m!898187))

(assert (=> b!970373 m!898183))

(declare-fun m!898189 () Bool)

(assert (=> b!970373 m!898189))

(declare-fun m!898191 () Bool)

(assert (=> start!83214 m!898191))

(declare-fun m!898193 () Bool)

(assert (=> start!83214 m!898193))

(declare-fun m!898195 () Bool)

(assert (=> start!83214 m!898195))

(declare-fun m!898197 () Bool)

(assert (=> mapNonEmpty!35125 m!898197))

(declare-fun m!898199 () Bool)

(assert (=> b!970376 m!898199))

(declare-fun m!898201 () Bool)

(assert (=> b!970372 m!898201))

(check-sat (not mapNonEmpty!35125) (not b!970376) (not b!970372) (not b!970377) (not b_next!19179) b_and!30685 tp_is_empty!22077 (not start!83214) (not b!970373))
(check-sat b_and!30685 (not b_next!19179))
