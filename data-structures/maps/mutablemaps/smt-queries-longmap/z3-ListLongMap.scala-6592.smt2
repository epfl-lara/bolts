; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83466 () Bool)

(assert start!83466)

(declare-fun b_free!19431 () Bool)

(declare-fun b_next!19431 () Bool)

(assert (=> start!83466 (= b_free!19431 (not b_next!19431))))

(declare-fun tp!67572 () Bool)

(declare-fun b_and!31051 () Bool)

(assert (=> start!83466 (= tp!67572 b_and!31051)))

(declare-fun b!974409 () Bool)

(declare-fun res!652390 () Bool)

(declare-fun e!549237 () Bool)

(assert (=> b!974409 (=> (not res!652390) (not e!549237))))

(declare-datatypes ((array!60677 0))(
  ( (array!60678 (arr!29198 (Array (_ BitVec 32) (_ BitVec 64))) (size!29678 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60677)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974409 (= res!652390 (validKeyInArray!0 (select (arr!29198 _keys!1717) i!822)))))

(declare-fun b!974410 () Bool)

(declare-fun e!549238 () Bool)

(declare-fun e!549236 () Bool)

(declare-fun mapRes!35503 () Bool)

(assert (=> b!974410 (= e!549238 (and e!549236 mapRes!35503))))

(declare-fun condMapEmpty!35503 () Bool)

(declare-datatypes ((V!34755 0))(
  ( (V!34756 (val!11215 Int)) )
))
(declare-datatypes ((ValueCell!10683 0))(
  ( (ValueCellFull!10683 (v!13774 V!34755)) (EmptyCell!10683) )
))
(declare-datatypes ((array!60679 0))(
  ( (array!60680 (arr!29199 (Array (_ BitVec 32) ValueCell!10683)) (size!29679 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60679)

(declare-fun mapDefault!35503 () ValueCell!10683)

(assert (=> b!974410 (= condMapEmpty!35503 (= (arr!29199 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10683)) mapDefault!35503)))))

(declare-fun b!974411 () Bool)

(declare-fun res!652386 () Bool)

(assert (=> b!974411 (=> (not res!652386) (not e!549237))))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!974411 (= res!652386 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29678 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29678 _keys!1717))))))

(declare-fun b!974412 () Bool)

(declare-fun e!549240 () Bool)

(declare-fun tp_is_empty!22329 () Bool)

(assert (=> b!974412 (= e!549240 tp_is_empty!22329)))

(declare-fun b!974413 () Bool)

(declare-fun e!549235 () Bool)

(assert (=> b!974413 (= e!549237 e!549235)))

(declare-fun res!652389 () Bool)

(assert (=> b!974413 (=> (not res!652389) (not e!549235))))

(assert (=> b!974413 (= res!652389 (not (validKeyInArray!0 (select (arr!29198 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun zeroValue!1367 () V!34755)

(declare-datatypes ((tuple2!14512 0))(
  ( (tuple2!14513 (_1!7266 (_ BitVec 64)) (_2!7266 V!34755)) )
))
(declare-datatypes ((List!20387 0))(
  ( (Nil!20384) (Cons!20383 (h!21545 tuple2!14512) (t!28872 List!20387)) )
))
(declare-datatypes ((ListLongMap!13223 0))(
  ( (ListLongMap!13224 (toList!6627 List!20387)) )
))
(declare-fun lt!432727 () ListLongMap!13223)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34755)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3812 (array!60677 array!60679 (_ BitVec 32) (_ BitVec 32) V!34755 V!34755 (_ BitVec 32) Int) ListLongMap!13223)

(assert (=> b!974413 (= lt!432727 (getCurrentListMap!3812 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!974414 () Bool)

(declare-fun res!652387 () Bool)

(assert (=> b!974414 (=> (not res!652387) (not e!549237))))

(declare-fun contains!5665 (ListLongMap!13223 (_ BitVec 64)) Bool)

(assert (=> b!974414 (= res!652387 (contains!5665 (getCurrentListMap!3812 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29198 _keys!1717) i!822)))))

(declare-fun b!974415 () Bool)

(declare-fun res!652393 () Bool)

(assert (=> b!974415 (=> (not res!652393) (not e!549237))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60677 (_ BitVec 32)) Bool)

(assert (=> b!974415 (= res!652393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!974416 () Bool)

(assert (=> b!974416 (= e!549235 (bvsgt (bvsub from!2118 #b00000000000000000000000000000001) (size!29678 _keys!1717)))))

(declare-fun mapNonEmpty!35503 () Bool)

(declare-fun tp!67573 () Bool)

(assert (=> mapNonEmpty!35503 (= mapRes!35503 (and tp!67573 e!549240))))

(declare-fun mapValue!35503 () ValueCell!10683)

(declare-fun mapKey!35503 () (_ BitVec 32))

(declare-fun mapRest!35503 () (Array (_ BitVec 32) ValueCell!10683))

(assert (=> mapNonEmpty!35503 (= (arr!29199 _values!1425) (store mapRest!35503 mapKey!35503 mapValue!35503))))

(declare-fun res!652391 () Bool)

(assert (=> start!83466 (=> (not res!652391) (not e!549237))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83466 (= res!652391 (validMask!0 mask!2147))))

(assert (=> start!83466 e!549237))

(assert (=> start!83466 true))

(declare-fun array_inv!22479 (array!60679) Bool)

(assert (=> start!83466 (and (array_inv!22479 _values!1425) e!549238)))

(assert (=> start!83466 tp_is_empty!22329))

(assert (=> start!83466 tp!67572))

(declare-fun array_inv!22480 (array!60677) Bool)

(assert (=> start!83466 (array_inv!22480 _keys!1717)))

(declare-fun b!974417 () Bool)

(assert (=> b!974417 (= e!549236 tp_is_empty!22329)))

(declare-fun mapIsEmpty!35503 () Bool)

(assert (=> mapIsEmpty!35503 mapRes!35503))

(declare-fun b!974418 () Bool)

(declare-fun res!652392 () Bool)

(assert (=> b!974418 (=> (not res!652392) (not e!549237))))

(declare-datatypes ((List!20388 0))(
  ( (Nil!20385) (Cons!20384 (h!21546 (_ BitVec 64)) (t!28873 List!20388)) )
))
(declare-fun arrayNoDuplicates!0 (array!60677 (_ BitVec 32) List!20388) Bool)

(assert (=> b!974418 (= res!652392 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20385))))

(declare-fun b!974419 () Bool)

(declare-fun res!652388 () Bool)

(assert (=> b!974419 (=> (not res!652388) (not e!549237))))

(assert (=> b!974419 (= res!652388 (and (= (size!29679 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29678 _keys!1717) (size!29679 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(assert (= (and start!83466 res!652391) b!974419))

(assert (= (and b!974419 res!652388) b!974415))

(assert (= (and b!974415 res!652393) b!974418))

(assert (= (and b!974418 res!652392) b!974411))

(assert (= (and b!974411 res!652386) b!974409))

(assert (= (and b!974409 res!652390) b!974414))

(assert (= (and b!974414 res!652387) b!974413))

(assert (= (and b!974413 res!652389) b!974416))

(assert (= (and b!974410 condMapEmpty!35503) mapIsEmpty!35503))

(assert (= (and b!974410 (not condMapEmpty!35503)) mapNonEmpty!35503))

(get-info :version)

(assert (= (and mapNonEmpty!35503 ((_ is ValueCellFull!10683) mapValue!35503)) b!974412))

(assert (= (and b!974410 ((_ is ValueCellFull!10683) mapDefault!35503)) b!974417))

(assert (= start!83466 b!974410))

(declare-fun m!902005 () Bool)

(assert (=> start!83466 m!902005))

(declare-fun m!902007 () Bool)

(assert (=> start!83466 m!902007))

(declare-fun m!902009 () Bool)

(assert (=> start!83466 m!902009))

(declare-fun m!902011 () Bool)

(assert (=> b!974413 m!902011))

(assert (=> b!974413 m!902011))

(declare-fun m!902013 () Bool)

(assert (=> b!974413 m!902013))

(declare-fun m!902015 () Bool)

(assert (=> b!974413 m!902015))

(declare-fun m!902017 () Bool)

(assert (=> b!974409 m!902017))

(assert (=> b!974409 m!902017))

(declare-fun m!902019 () Bool)

(assert (=> b!974409 m!902019))

(declare-fun m!902021 () Bool)

(assert (=> mapNonEmpty!35503 m!902021))

(declare-fun m!902023 () Bool)

(assert (=> b!974415 m!902023))

(declare-fun m!902025 () Bool)

(assert (=> b!974418 m!902025))

(declare-fun m!902027 () Bool)

(assert (=> b!974414 m!902027))

(assert (=> b!974414 m!902017))

(assert (=> b!974414 m!902027))

(assert (=> b!974414 m!902017))

(declare-fun m!902029 () Bool)

(assert (=> b!974414 m!902029))

(check-sat (not b!974413) b_and!31051 (not b!974414) (not b!974415) (not b!974418) (not start!83466) (not mapNonEmpty!35503) (not b_next!19431) (not b!974409) tp_is_empty!22329)
(check-sat b_and!31051 (not b_next!19431))
