; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83284 () Bool)

(assert start!83284)

(declare-fun b_free!19249 () Bool)

(declare-fun b_next!19249 () Bool)

(assert (=> start!83284 (= b_free!19249 (not b_next!19249))))

(declare-fun tp!67026 () Bool)

(declare-fun b_and!30755 () Bool)

(assert (=> start!83284 (= tp!67026 b_and!30755)))

(declare-fun b!971389 () Bool)

(declare-fun res!650300 () Bool)

(declare-fun e!547616 () Bool)

(assert (=> b!971389 (=> (not res!650300) (not e!547616))))

(declare-datatypes ((array!60327 0))(
  ( (array!60328 (arr!29023 (Array (_ BitVec 32) (_ BitVec 64))) (size!29503 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60327)

(declare-datatypes ((List!20253 0))(
  ( (Nil!20250) (Cons!20249 (h!21411 (_ BitVec 64)) (t!28624 List!20253)) )
))
(declare-fun arrayNoDuplicates!0 (array!60327 (_ BitVec 32) List!20253) Bool)

(assert (=> b!971389 (= res!650300 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20250))))

(declare-fun b!971390 () Bool)

(declare-fun res!650303 () Bool)

(assert (=> b!971390 (=> (not res!650303) (not e!547616))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!971390 (= res!650303 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29503 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29503 _keys!1717))))))

(declare-fun b!971391 () Bool)

(declare-fun e!547617 () Bool)

(declare-fun tp_is_empty!22147 () Bool)

(assert (=> b!971391 (= e!547617 tp_is_empty!22147)))

(declare-fun b!971392 () Bool)

(declare-fun res!650302 () Bool)

(assert (=> b!971392 (=> (not res!650302) (not e!547616))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971392 (= res!650302 (validKeyInArray!0 (select (arr!29023 _keys!1717) i!822)))))

(declare-fun res!650305 () Bool)

(assert (=> start!83284 (=> (not res!650305) (not e!547616))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83284 (= res!650305 (validMask!0 mask!2147))))

(assert (=> start!83284 e!547616))

(assert (=> start!83284 true))

(declare-datatypes ((V!34513 0))(
  ( (V!34514 (val!11124 Int)) )
))
(declare-datatypes ((ValueCell!10592 0))(
  ( (ValueCellFull!10592 (v!13683 V!34513)) (EmptyCell!10592) )
))
(declare-datatypes ((array!60329 0))(
  ( (array!60330 (arr!29024 (Array (_ BitVec 32) ValueCell!10592)) (size!29504 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60329)

(declare-fun e!547615 () Bool)

(declare-fun array_inv!22351 (array!60329) Bool)

(assert (=> start!83284 (and (array_inv!22351 _values!1425) e!547615)))

(assert (=> start!83284 tp_is_empty!22147))

(assert (=> start!83284 tp!67026))

(declare-fun array_inv!22352 (array!60327) Bool)

(assert (=> start!83284 (array_inv!22352 _keys!1717)))

(declare-fun b!971393 () Bool)

(declare-fun res!650304 () Bool)

(assert (=> b!971393 (=> (not res!650304) (not e!547616))))

(declare-fun zeroValue!1367 () V!34513)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34513)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14364 0))(
  ( (tuple2!14365 (_1!7192 (_ BitVec 64)) (_2!7192 V!34513)) )
))
(declare-datatypes ((List!20254 0))(
  ( (Nil!20251) (Cons!20250 (h!21412 tuple2!14364) (t!28625 List!20254)) )
))
(declare-datatypes ((ListLongMap!13075 0))(
  ( (ListLongMap!13076 (toList!6553 List!20254)) )
))
(declare-fun contains!5604 (ListLongMap!13075 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3738 (array!60327 array!60329 (_ BitVec 32) (_ BitVec 32) V!34513 V!34513 (_ BitVec 32) Int) ListLongMap!13075)

(assert (=> b!971393 (= res!650304 (contains!5604 (getCurrentListMap!3738 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29023 _keys!1717) i!822)))))

(declare-fun b!971394 () Bool)

(declare-fun res!650301 () Bool)

(assert (=> b!971394 (=> (not res!650301) (not e!547616))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60327 (_ BitVec 32)) Bool)

(assert (=> b!971394 (= res!650301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!971395 () Bool)

(declare-fun e!547613 () Bool)

(declare-fun mapRes!35230 () Bool)

(assert (=> b!971395 (= e!547615 (and e!547613 mapRes!35230))))

(declare-fun condMapEmpty!35230 () Bool)

(declare-fun mapDefault!35230 () ValueCell!10592)

