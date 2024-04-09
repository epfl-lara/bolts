; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83294 () Bool)

(assert start!83294)

(declare-fun b_free!19259 () Bool)

(declare-fun b_next!19259 () Bool)

(assert (=> start!83294 (= b_free!19259 (not b_next!19259))))

(declare-fun tp!67057 () Bool)

(declare-fun b_and!30765 () Bool)

(assert (=> start!83294 (= tp!67057 b_and!30765)))

(declare-fun b!971539 () Bool)

(declare-fun res!650404 () Bool)

(declare-fun e!547690 () Bool)

(assert (=> b!971539 (=> (not res!650404) (not e!547690))))

(declare-datatypes ((array!60345 0))(
  ( (array!60346 (arr!29032 (Array (_ BitVec 32) (_ BitVec 64))) (size!29512 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60345)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!971539 (= res!650404 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29512 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29512 _keys!1717))))))

(declare-fun b!971540 () Bool)

(declare-fun res!650408 () Bool)

(assert (=> b!971540 (=> (not res!650408) (not e!547690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971540 (= res!650408 (validKeyInArray!0 (select (arr!29032 _keys!1717) i!822)))))

(declare-fun res!650405 () Bool)

(assert (=> start!83294 (=> (not res!650405) (not e!547690))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83294 (= res!650405 (validMask!0 mask!2147))))

(assert (=> start!83294 e!547690))

(assert (=> start!83294 true))

(declare-datatypes ((V!34525 0))(
  ( (V!34526 (val!11129 Int)) )
))
(declare-datatypes ((ValueCell!10597 0))(
  ( (ValueCellFull!10597 (v!13688 V!34525)) (EmptyCell!10597) )
))
(declare-datatypes ((array!60347 0))(
  ( (array!60348 (arr!29033 (Array (_ BitVec 32) ValueCell!10597)) (size!29513 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60347)

(declare-fun e!547691 () Bool)

(declare-fun array_inv!22359 (array!60347) Bool)

(assert (=> start!83294 (and (array_inv!22359 _values!1425) e!547691)))

(declare-fun tp_is_empty!22157 () Bool)

(assert (=> start!83294 tp_is_empty!22157))

(assert (=> start!83294 tp!67057))

(declare-fun array_inv!22360 (array!60345) Bool)

(assert (=> start!83294 (array_inv!22360 _keys!1717)))

(declare-fun mapNonEmpty!35245 () Bool)

(declare-fun mapRes!35245 () Bool)

(declare-fun tp!67056 () Bool)

(declare-fun e!547688 () Bool)

(assert (=> mapNonEmpty!35245 (= mapRes!35245 (and tp!67056 e!547688))))

(declare-fun mapRest!35245 () (Array (_ BitVec 32) ValueCell!10597))

(declare-fun mapValue!35245 () ValueCell!10597)

(declare-fun mapKey!35245 () (_ BitVec 32))

(assert (=> mapNonEmpty!35245 (= (arr!29033 _values!1425) (store mapRest!35245 mapKey!35245 mapValue!35245))))

(declare-fun b!971541 () Bool)

(declare-fun res!650406 () Bool)

(assert (=> b!971541 (=> (not res!650406) (not e!547690))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60345 (_ BitVec 32)) Bool)

(assert (=> b!971541 (= res!650406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!971542 () Bool)

(declare-fun res!650409 () Bool)

(assert (=> b!971542 (=> (not res!650409) (not e!547690))))

(declare-datatypes ((List!20260 0))(
  ( (Nil!20257) (Cons!20256 (h!21418 (_ BitVec 64)) (t!28631 List!20260)) )
))
(declare-fun arrayNoDuplicates!0 (array!60345 (_ BitVec 32) List!20260) Bool)

(assert (=> b!971542 (= res!650409 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20257))))

(declare-fun mapIsEmpty!35245 () Bool)

(assert (=> mapIsEmpty!35245 mapRes!35245))

(declare-fun b!971543 () Bool)

(assert (=> b!971543 (= e!547690 false)))

(declare-fun zeroValue!1367 () V!34525)

(declare-datatypes ((tuple2!14370 0))(
  ( (tuple2!14371 (_1!7195 (_ BitVec 64)) (_2!7195 V!34525)) )
))
(declare-datatypes ((List!20261 0))(
  ( (Nil!20258) (Cons!20257 (h!21419 tuple2!14370) (t!28632 List!20261)) )
))
(declare-datatypes ((ListLongMap!13081 0))(
  ( (ListLongMap!13082 (toList!6556 List!20261)) )
))
(declare-fun lt!431803 () ListLongMap!13081)

(declare-fun minValue!1367 () V!34525)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun getCurrentListMap!3741 (array!60345 array!60347 (_ BitVec 32) (_ BitVec 32) V!34525 V!34525 (_ BitVec 32) Int) ListLongMap!13081)

(assert (=> b!971543 (= lt!431803 (getCurrentListMap!3741 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!971544 () Bool)

(declare-fun res!650407 () Bool)

(assert (=> b!971544 (=> (not res!650407) (not e!547690))))

(assert (=> b!971544 (= res!650407 (and (= (size!29513 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29512 _keys!1717) (size!29513 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!971545 () Bool)

(declare-fun e!547689 () Bool)

(assert (=> b!971545 (= e!547691 (and e!547689 mapRes!35245))))

(declare-fun condMapEmpty!35245 () Bool)

(declare-fun mapDefault!35245 () ValueCell!10597)

