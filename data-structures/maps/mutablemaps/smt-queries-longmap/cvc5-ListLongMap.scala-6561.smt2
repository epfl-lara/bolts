; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83278 () Bool)

(assert start!83278)

(declare-fun b_free!19243 () Bool)

(declare-fun b_next!19243 () Bool)

(assert (=> start!83278 (= b_free!19243 (not b_next!19243))))

(declare-fun tp!67008 () Bool)

(declare-fun b_and!30749 () Bool)

(assert (=> start!83278 (= tp!67008 b_and!30749)))

(declare-fun b!971299 () Bool)

(declare-fun res!650238 () Bool)

(declare-fun e!547569 () Bool)

(assert (=> b!971299 (=> (not res!650238) (not e!547569))))

(declare-datatypes ((array!60315 0))(
  ( (array!60316 (arr!29017 (Array (_ BitVec 32) (_ BitVec 64))) (size!29497 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60315)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60315 (_ BitVec 32)) Bool)

(assert (=> b!971299 (= res!650238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!971300 () Bool)

(declare-fun res!650239 () Bool)

(assert (=> b!971300 (=> (not res!650239) (not e!547569))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971300 (= res!650239 (validKeyInArray!0 (select (arr!29017 _keys!1717) i!822)))))

(declare-fun b!971301 () Bool)

(declare-fun e!547572 () Bool)

(declare-fun tp_is_empty!22141 () Bool)

(assert (=> b!971301 (= e!547572 tp_is_empty!22141)))

(declare-fun mapIsEmpty!35221 () Bool)

(declare-fun mapRes!35221 () Bool)

(assert (=> mapIsEmpty!35221 mapRes!35221))

(declare-fun b!971302 () Bool)

(assert (=> b!971302 (= e!547569 false)))

(declare-datatypes ((V!34505 0))(
  ( (V!34506 (val!11121 Int)) )
))
(declare-datatypes ((ValueCell!10589 0))(
  ( (ValueCellFull!10589 (v!13680 V!34505)) (EmptyCell!10589) )
))
(declare-datatypes ((array!60317 0))(
  ( (array!60318 (arr!29018 (Array (_ BitVec 32) ValueCell!10589)) (size!29498 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60317)

(declare-datatypes ((tuple2!14358 0))(
  ( (tuple2!14359 (_1!7189 (_ BitVec 64)) (_2!7189 V!34505)) )
))
(declare-datatypes ((List!20248 0))(
  ( (Nil!20245) (Cons!20244 (h!21406 tuple2!14358) (t!28619 List!20248)) )
))
(declare-datatypes ((ListLongMap!13069 0))(
  ( (ListLongMap!13070 (toList!6550 List!20248)) )
))
(declare-fun lt!431779 () ListLongMap!13069)

(declare-fun zeroValue!1367 () V!34505)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34505)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3735 (array!60315 array!60317 (_ BitVec 32) (_ BitVec 32) V!34505 V!34505 (_ BitVec 32) Int) ListLongMap!13069)

(assert (=> b!971302 (= lt!431779 (getCurrentListMap!3735 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!971303 () Bool)

(declare-fun e!547571 () Bool)

(assert (=> b!971303 (= e!547571 (and e!547572 mapRes!35221))))

(declare-fun condMapEmpty!35221 () Bool)

(declare-fun mapDefault!35221 () ValueCell!10589)

