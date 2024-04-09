; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83182 () Bool)

(assert start!83182)

(declare-fun b_free!19147 () Bool)

(declare-fun b_next!19147 () Bool)

(assert (=> start!83182 (= b_free!19147 (not b_next!19147))))

(declare-fun tp!66720 () Bool)

(declare-fun b_and!30653 () Bool)

(assert (=> start!83182 (= tp!66720 b_and!30653)))

(declare-fun b!969931 () Bool)

(declare-fun res!649306 () Bool)

(declare-fun e!546848 () Bool)

(assert (=> b!969931 (=> (not res!649306) (not e!546848))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34377 0))(
  ( (V!34378 (val!11073 Int)) )
))
(declare-datatypes ((ValueCell!10541 0))(
  ( (ValueCellFull!10541 (v!13632 V!34377)) (EmptyCell!10541) )
))
(declare-datatypes ((array!60135 0))(
  ( (array!60136 (arr!28927 (Array (_ BitVec 32) ValueCell!10541)) (size!29407 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60135)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60137 0))(
  ( (array!60138 (arr!28928 (Array (_ BitVec 32) (_ BitVec 64))) (size!29408 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60137)

(assert (=> b!969931 (= res!649306 (and (= (size!29407 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29408 _keys!1717) (size!29407 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!969932 () Bool)

(declare-fun res!649303 () Bool)

(assert (=> b!969932 (=> (not res!649303) (not e!546848))))

(declare-fun zeroValue!1367 () V!34377)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34377)

(declare-fun i!822 () (_ BitVec 32))

(declare-datatypes ((tuple2!14284 0))(
  ( (tuple2!14285 (_1!7152 (_ BitVec 64)) (_2!7152 V!34377)) )
))
(declare-datatypes ((List!20177 0))(
  ( (Nil!20174) (Cons!20173 (h!21335 tuple2!14284) (t!28548 List!20177)) )
))
(declare-datatypes ((ListLongMap!12995 0))(
  ( (ListLongMap!12996 (toList!6513 List!20177)) )
))
(declare-fun contains!5568 (ListLongMap!12995 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3698 (array!60137 array!60135 (_ BitVec 32) (_ BitVec 32) V!34377 V!34377 (_ BitVec 32) Int) ListLongMap!12995)

(assert (=> b!969932 (= res!649303 (contains!5568 (getCurrentListMap!3698 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28928 _keys!1717) i!822)))))

(declare-fun b!969933 () Bool)

(declare-fun res!649301 () Bool)

(assert (=> b!969933 (=> (not res!649301) (not e!546848))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60137 (_ BitVec 32)) Bool)

(assert (=> b!969933 (= res!649301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!969934 () Bool)

(declare-fun res!649305 () Bool)

(assert (=> b!969934 (=> (not res!649305) (not e!546848))))

(assert (=> b!969934 (= res!649305 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29408 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29408 _keys!1717))))))

(declare-fun b!969936 () Bool)

(assert (=> b!969936 (= e!546848 (or (bvslt from!2118 #b00000000000000000000000000000000) (bvsgt from!2118 (size!29408 _keys!1717))))))

(declare-fun b!969937 () Bool)

(declare-fun e!546849 () Bool)

(declare-fun e!546852 () Bool)

(declare-fun mapRes!35077 () Bool)

(assert (=> b!969937 (= e!546849 (and e!546852 mapRes!35077))))

(declare-fun condMapEmpty!35077 () Bool)

(declare-fun mapDefault!35077 () ValueCell!10541)

