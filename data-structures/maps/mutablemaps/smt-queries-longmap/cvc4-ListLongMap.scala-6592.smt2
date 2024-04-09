; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83468 () Bool)

(assert start!83468)

(declare-fun b_free!19433 () Bool)

(declare-fun b_next!19433 () Bool)

(assert (=> start!83468 (= b_free!19433 (not b_next!19433))))

(declare-fun tp!67579 () Bool)

(declare-fun b_and!31053 () Bool)

(assert (=> start!83468 (= tp!67579 b_and!31053)))

(declare-fun mapIsEmpty!35506 () Bool)

(declare-fun mapRes!35506 () Bool)

(assert (=> mapIsEmpty!35506 mapRes!35506))

(declare-fun b!974442 () Bool)

(declare-fun e!549254 () Bool)

(declare-fun from!2118 () (_ BitVec 32))

(declare-datatypes ((array!60681 0))(
  ( (array!60682 (arr!29200 (Array (_ BitVec 32) (_ BitVec 64))) (size!29680 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60681)

(assert (=> b!974442 (= e!549254 (bvsgt (bvsub from!2118 #b00000000000000000000000000000001) (size!29680 _keys!1717)))))

(declare-fun b!974443 () Bool)

(declare-fun e!549258 () Bool)

(declare-fun tp_is_empty!22331 () Bool)

(assert (=> b!974443 (= e!549258 tp_is_empty!22331)))

(declare-fun b!974445 () Bool)

(declare-fun res!652417 () Bool)

(declare-fun e!549253 () Bool)

(assert (=> b!974445 (=> (not res!652417) (not e!549253))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974445 (= res!652417 (validKeyInArray!0 (select (arr!29200 _keys!1717) i!822)))))

(declare-fun b!974446 () Bool)

(declare-fun res!652413 () Bool)

(assert (=> b!974446 (=> (not res!652413) (not e!549253))))

(assert (=> b!974446 (= res!652413 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29680 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29680 _keys!1717))))))

(declare-fun b!974447 () Bool)

(assert (=> b!974447 (= e!549253 e!549254)))

(declare-fun res!652410 () Bool)

(assert (=> b!974447 (=> (not res!652410) (not e!549254))))

(assert (=> b!974447 (= res!652410 (not (validKeyInArray!0 (select (arr!29200 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34757 0))(
  ( (V!34758 (val!11216 Int)) )
))
(declare-datatypes ((ValueCell!10684 0))(
  ( (ValueCellFull!10684 (v!13775 V!34757)) (EmptyCell!10684) )
))
(declare-datatypes ((array!60683 0))(
  ( (array!60684 (arr!29201 (Array (_ BitVec 32) ValueCell!10684)) (size!29681 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60683)

(declare-fun zeroValue!1367 () V!34757)

(declare-fun minValue!1367 () V!34757)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14514 0))(
  ( (tuple2!14515 (_1!7267 (_ BitVec 64)) (_2!7267 V!34757)) )
))
(declare-datatypes ((List!20389 0))(
  ( (Nil!20386) (Cons!20385 (h!21547 tuple2!14514) (t!28874 List!20389)) )
))
(declare-datatypes ((ListLongMap!13225 0))(
  ( (ListLongMap!13226 (toList!6628 List!20389)) )
))
(declare-fun lt!432730 () ListLongMap!13225)

(declare-fun defaultEntry!1428 () Int)

(declare-fun getCurrentListMap!3813 (array!60681 array!60683 (_ BitVec 32) (_ BitVec 32) V!34757 V!34757 (_ BitVec 32) Int) ListLongMap!13225)

(assert (=> b!974447 (= lt!432730 (getCurrentListMap!3813 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun mapNonEmpty!35506 () Bool)

(declare-fun tp!67578 () Bool)

(declare-fun e!549256 () Bool)

(assert (=> mapNonEmpty!35506 (= mapRes!35506 (and tp!67578 e!549256))))

(declare-fun mapKey!35506 () (_ BitVec 32))

(declare-fun mapRest!35506 () (Array (_ BitVec 32) ValueCell!10684))

(declare-fun mapValue!35506 () ValueCell!10684)

(assert (=> mapNonEmpty!35506 (= (arr!29201 _values!1425) (store mapRest!35506 mapKey!35506 mapValue!35506))))

(declare-fun b!974448 () Bool)

(declare-fun res!652412 () Bool)

(assert (=> b!974448 (=> (not res!652412) (not e!549253))))

(declare-fun contains!5666 (ListLongMap!13225 (_ BitVec 64)) Bool)

(assert (=> b!974448 (= res!652412 (contains!5666 (getCurrentListMap!3813 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29200 _keys!1717) i!822)))))

(declare-fun b!974449 () Bool)

(declare-fun res!652414 () Bool)

(assert (=> b!974449 (=> (not res!652414) (not e!549253))))

(declare-datatypes ((List!20390 0))(
  ( (Nil!20387) (Cons!20386 (h!21548 (_ BitVec 64)) (t!28875 List!20390)) )
))
(declare-fun arrayNoDuplicates!0 (array!60681 (_ BitVec 32) List!20390) Bool)

(assert (=> b!974449 (= res!652414 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20387))))

(declare-fun b!974450 () Bool)

(declare-fun res!652411 () Bool)

(assert (=> b!974450 (=> (not res!652411) (not e!549253))))

(assert (=> b!974450 (= res!652411 (and (= (size!29681 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29680 _keys!1717) (size!29681 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun res!652416 () Bool)

(assert (=> start!83468 (=> (not res!652416) (not e!549253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83468 (= res!652416 (validMask!0 mask!2147))))

(assert (=> start!83468 e!549253))

(assert (=> start!83468 true))

(declare-fun e!549257 () Bool)

(declare-fun array_inv!22481 (array!60683) Bool)

(assert (=> start!83468 (and (array_inv!22481 _values!1425) e!549257)))

(assert (=> start!83468 tp_is_empty!22331))

(assert (=> start!83468 tp!67579))

(declare-fun array_inv!22482 (array!60681) Bool)

(assert (=> start!83468 (array_inv!22482 _keys!1717)))

(declare-fun b!974444 () Bool)

(declare-fun res!652415 () Bool)

(assert (=> b!974444 (=> (not res!652415) (not e!549253))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60681 (_ BitVec 32)) Bool)

(assert (=> b!974444 (= res!652415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!974451 () Bool)

(assert (=> b!974451 (= e!549257 (and e!549258 mapRes!35506))))

(declare-fun condMapEmpty!35506 () Bool)

(declare-fun mapDefault!35506 () ValueCell!10684)

