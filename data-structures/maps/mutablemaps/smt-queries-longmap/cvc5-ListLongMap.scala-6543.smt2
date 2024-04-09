; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83170 () Bool)

(assert start!83170)

(declare-fun b_free!19135 () Bool)

(declare-fun b_next!19135 () Bool)

(assert (=> start!83170 (= b_free!19135 (not b_next!19135))))

(declare-fun tp!66685 () Bool)

(declare-fun b_and!30641 () Bool)

(assert (=> start!83170 (= tp!66685 b_and!30641)))

(declare-fun b!969767 () Bool)

(declare-fun res!649193 () Bool)

(declare-fun e!546759 () Bool)

(assert (=> b!969767 (=> (not res!649193) (not e!546759))))

(declare-datatypes ((array!60111 0))(
  ( (array!60112 (arr!28915 (Array (_ BitVec 32) (_ BitVec 64))) (size!29395 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60111)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!969767 (= res!649193 (validKeyInArray!0 (select (arr!28915 _keys!1717) i!822)))))

(declare-fun b!969768 () Bool)

(declare-fun res!649190 () Bool)

(assert (=> b!969768 (=> (not res!649190) (not e!546759))))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!969768 (= res!649190 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29395 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29395 _keys!1717))))))

(declare-fun res!649195 () Bool)

(assert (=> start!83170 (=> (not res!649195) (not e!546759))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83170 (= res!649195 (validMask!0 mask!2147))))

(assert (=> start!83170 e!546759))

(assert (=> start!83170 true))

(declare-datatypes ((V!34361 0))(
  ( (V!34362 (val!11067 Int)) )
))
(declare-datatypes ((ValueCell!10535 0))(
  ( (ValueCellFull!10535 (v!13626 V!34361)) (EmptyCell!10535) )
))
(declare-datatypes ((array!60113 0))(
  ( (array!60114 (arr!28916 (Array (_ BitVec 32) ValueCell!10535)) (size!29396 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60113)

(declare-fun e!546760 () Bool)

(declare-fun array_inv!22273 (array!60113) Bool)

(assert (=> start!83170 (and (array_inv!22273 _values!1425) e!546760)))

(declare-fun tp_is_empty!22033 () Bool)

(assert (=> start!83170 tp_is_empty!22033))

(assert (=> start!83170 tp!66685))

(declare-fun array_inv!22274 (array!60111) Bool)

(assert (=> start!83170 (array_inv!22274 _keys!1717)))

(declare-fun b!969769 () Bool)

(declare-fun e!546758 () Bool)

(assert (=> b!969769 (= e!546758 tp_is_empty!22033)))

(declare-fun b!969770 () Bool)

(declare-fun res!649192 () Bool)

(assert (=> b!969770 (=> (not res!649192) (not e!546759))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!969770 (= res!649192 (and (= (size!29396 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29395 _keys!1717) (size!29396 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!35059 () Bool)

(declare-fun mapRes!35059 () Bool)

(assert (=> mapIsEmpty!35059 mapRes!35059))

(declare-fun b!969771 () Bool)

(declare-fun res!649191 () Bool)

(assert (=> b!969771 (=> (not res!649191) (not e!546759))))

(declare-datatypes ((List!20168 0))(
  ( (Nil!20165) (Cons!20164 (h!21326 (_ BitVec 64)) (t!28539 List!20168)) )
))
(declare-fun arrayNoDuplicates!0 (array!60111 (_ BitVec 32) List!20168) Bool)

(assert (=> b!969771 (= res!649191 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20165))))

(declare-fun b!969772 () Bool)

(assert (=> b!969772 (= e!546759 false)))

(declare-fun zeroValue!1367 () V!34361)

(declare-fun lt!431635 () Bool)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34361)

(declare-datatypes ((tuple2!14276 0))(
  ( (tuple2!14277 (_1!7148 (_ BitVec 64)) (_2!7148 V!34361)) )
))
(declare-datatypes ((List!20169 0))(
  ( (Nil!20166) (Cons!20165 (h!21327 tuple2!14276) (t!28540 List!20169)) )
))
(declare-datatypes ((ListLongMap!12987 0))(
  ( (ListLongMap!12988 (toList!6509 List!20169)) )
))
(declare-fun contains!5564 (ListLongMap!12987 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3694 (array!60111 array!60113 (_ BitVec 32) (_ BitVec 32) V!34361 V!34361 (_ BitVec 32) Int) ListLongMap!12987)

(assert (=> b!969772 (= lt!431635 (contains!5564 (getCurrentListMap!3694 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28915 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35059 () Bool)

(declare-fun tp!66684 () Bool)

(declare-fun e!546762 () Bool)

(assert (=> mapNonEmpty!35059 (= mapRes!35059 (and tp!66684 e!546762))))

(declare-fun mapKey!35059 () (_ BitVec 32))

(declare-fun mapRest!35059 () (Array (_ BitVec 32) ValueCell!10535))

(declare-fun mapValue!35059 () ValueCell!10535)

(assert (=> mapNonEmpty!35059 (= (arr!28916 _values!1425) (store mapRest!35059 mapKey!35059 mapValue!35059))))

(declare-fun b!969773 () Bool)

(assert (=> b!969773 (= e!546762 tp_is_empty!22033)))

(declare-fun b!969774 () Bool)

(assert (=> b!969774 (= e!546760 (and e!546758 mapRes!35059))))

(declare-fun condMapEmpty!35059 () Bool)

(declare-fun mapDefault!35059 () ValueCell!10535)

