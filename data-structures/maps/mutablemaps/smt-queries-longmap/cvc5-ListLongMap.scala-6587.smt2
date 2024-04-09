; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83434 () Bool)

(assert start!83434)

(declare-fun b_free!19399 () Bool)

(declare-fun b_next!19399 () Bool)

(assert (=> start!83434 (= b_free!19399 (not b_next!19399))))

(declare-fun tp!67477 () Bool)

(declare-fun b_and!31019 () Bool)

(assert (=> start!83434 (= tp!67477 b_and!31019)))

(declare-fun b!973924 () Bool)

(declare-fun res!652048 () Bool)

(declare-fun e!548990 () Bool)

(assert (=> b!973924 (=> (not res!652048) (not e!548990))))

(declare-datatypes ((array!60615 0))(
  ( (array!60616 (arr!29167 (Array (_ BitVec 32) (_ BitVec 64))) (size!29647 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60615)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60615 (_ BitVec 32)) Bool)

(assert (=> b!973924 (= res!652048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!652050 () Bool)

(assert (=> start!83434 (=> (not res!652050) (not e!548990))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83434 (= res!652050 (validMask!0 mask!2147))))

(assert (=> start!83434 e!548990))

(assert (=> start!83434 true))

(declare-datatypes ((V!34713 0))(
  ( (V!34714 (val!11199 Int)) )
))
(declare-datatypes ((ValueCell!10667 0))(
  ( (ValueCellFull!10667 (v!13758 V!34713)) (EmptyCell!10667) )
))
(declare-datatypes ((array!60617 0))(
  ( (array!60618 (arr!29168 (Array (_ BitVec 32) ValueCell!10667)) (size!29648 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60617)

(declare-fun e!548992 () Bool)

(declare-fun array_inv!22459 (array!60617) Bool)

(assert (=> start!83434 (and (array_inv!22459 _values!1425) e!548992)))

(declare-fun tp_is_empty!22297 () Bool)

(assert (=> start!83434 tp_is_empty!22297))

(assert (=> start!83434 tp!67477))

(declare-fun array_inv!22460 (array!60615) Bool)

(assert (=> start!83434 (array_inv!22460 _keys!1717)))

(declare-fun mapIsEmpty!35455 () Bool)

(declare-fun mapRes!35455 () Bool)

(assert (=> mapIsEmpty!35455 mapRes!35455))

(declare-fun b!973925 () Bool)

(declare-fun res!652049 () Bool)

(assert (=> b!973925 (=> (not res!652049) (not e!548990))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!973925 (= res!652049 (and (= (size!29648 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29647 _keys!1717) (size!29648 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!35455 () Bool)

(declare-fun tp!67476 () Bool)

(declare-fun e!548994 () Bool)

(assert (=> mapNonEmpty!35455 (= mapRes!35455 (and tp!67476 e!548994))))

(declare-fun mapValue!35455 () ValueCell!10667)

(declare-fun mapKey!35455 () (_ BitVec 32))

(declare-fun mapRest!35455 () (Array (_ BitVec 32) ValueCell!10667))

(assert (=> mapNonEmpty!35455 (= (arr!29168 _values!1425) (store mapRest!35455 mapKey!35455 mapValue!35455))))

(declare-fun b!973926 () Bool)

(declare-fun res!652051 () Bool)

(assert (=> b!973926 (=> (not res!652051) (not e!548990))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!973926 (= res!652051 (validKeyInArray!0 (select (arr!29167 _keys!1717) i!822)))))

(declare-fun b!973927 () Bool)

(assert (=> b!973927 (= e!548990 false)))

(declare-datatypes ((tuple2!14482 0))(
  ( (tuple2!14483 (_1!7251 (_ BitVec 64)) (_2!7251 V!34713)) )
))
(declare-datatypes ((List!20360 0))(
  ( (Nil!20357) (Cons!20356 (h!21518 tuple2!14482) (t!28845 List!20360)) )
))
(declare-datatypes ((ListLongMap!13193 0))(
  ( (ListLongMap!13194 (toList!6612 List!20360)) )
))
(declare-fun lt!432679 () ListLongMap!13193)

(declare-fun zeroValue!1367 () V!34713)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34713)

(declare-fun getCurrentListMap!3797 (array!60615 array!60617 (_ BitVec 32) (_ BitVec 32) V!34713 V!34713 (_ BitVec 32) Int) ListLongMap!13193)

(assert (=> b!973927 (= lt!432679 (getCurrentListMap!3797 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!973928 () Bool)

(declare-fun e!548991 () Bool)

(assert (=> b!973928 (= e!548991 tp_is_empty!22297)))

(declare-fun b!973929 () Bool)

(declare-fun res!652047 () Bool)

(assert (=> b!973929 (=> (not res!652047) (not e!548990))))

(declare-datatypes ((List!20361 0))(
  ( (Nil!20358) (Cons!20357 (h!21519 (_ BitVec 64)) (t!28846 List!20361)) )
))
(declare-fun arrayNoDuplicates!0 (array!60615 (_ BitVec 32) List!20361) Bool)

(assert (=> b!973929 (= res!652047 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20358))))

(declare-fun b!973930 () Bool)

(declare-fun res!652046 () Bool)

(assert (=> b!973930 (=> (not res!652046) (not e!548990))))

(assert (=> b!973930 (= res!652046 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29647 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29647 _keys!1717))))))

(declare-fun b!973931 () Bool)

(declare-fun res!652045 () Bool)

(assert (=> b!973931 (=> (not res!652045) (not e!548990))))

(declare-fun contains!5654 (ListLongMap!13193 (_ BitVec 64)) Bool)

(assert (=> b!973931 (= res!652045 (contains!5654 (getCurrentListMap!3797 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29167 _keys!1717) i!822)))))

(declare-fun b!973932 () Bool)

(assert (=> b!973932 (= e!548992 (and e!548991 mapRes!35455))))

(declare-fun condMapEmpty!35455 () Bool)

(declare-fun mapDefault!35455 () ValueCell!10667)

