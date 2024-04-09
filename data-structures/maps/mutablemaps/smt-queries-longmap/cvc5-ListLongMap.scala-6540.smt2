; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83152 () Bool)

(assert start!83152)

(declare-fun b_free!19117 () Bool)

(declare-fun b_next!19117 () Bool)

(assert (=> start!83152 (= b_free!19117 (not b_next!19117))))

(declare-fun tp!66630 () Bool)

(declare-fun b_and!30623 () Bool)

(assert (=> start!83152 (= tp!66630 b_and!30623)))

(declare-fun b!969524 () Bool)

(declare-fun res!649028 () Bool)

(declare-fun e!546625 () Bool)

(assert (=> b!969524 (=> (not res!649028) (not e!546625))))

(declare-datatypes ((array!60077 0))(
  ( (array!60078 (arr!28898 (Array (_ BitVec 32) (_ BitVec 64))) (size!29378 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60077)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!969524 (= res!649028 (validKeyInArray!0 (select (arr!28898 _keys!1717) i!822)))))

(declare-fun b!969525 () Bool)

(declare-fun res!649031 () Bool)

(assert (=> b!969525 (=> (not res!649031) (not e!546625))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34337 0))(
  ( (V!34338 (val!11058 Int)) )
))
(declare-datatypes ((ValueCell!10526 0))(
  ( (ValueCellFull!10526 (v!13617 V!34337)) (EmptyCell!10526) )
))
(declare-datatypes ((array!60079 0))(
  ( (array!60080 (arr!28899 (Array (_ BitVec 32) ValueCell!10526)) (size!29379 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60079)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!969525 (= res!649031 (and (= (size!29379 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29378 _keys!1717) (size!29379 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!969527 () Bool)

(assert (=> b!969527 (= e!546625 false)))

(declare-fun lt!431608 () Bool)

(declare-fun zeroValue!1367 () V!34337)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34337)

(declare-datatypes ((tuple2!14266 0))(
  ( (tuple2!14267 (_1!7143 (_ BitVec 64)) (_2!7143 V!34337)) )
))
(declare-datatypes ((List!20157 0))(
  ( (Nil!20154) (Cons!20153 (h!21315 tuple2!14266) (t!28528 List!20157)) )
))
(declare-datatypes ((ListLongMap!12977 0))(
  ( (ListLongMap!12978 (toList!6504 List!20157)) )
))
(declare-fun contains!5559 (ListLongMap!12977 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3689 (array!60077 array!60079 (_ BitVec 32) (_ BitVec 32) V!34337 V!34337 (_ BitVec 32) Int) ListLongMap!12977)

(assert (=> b!969527 (= lt!431608 (contains!5559 (getCurrentListMap!3689 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28898 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35032 () Bool)

(declare-fun mapRes!35032 () Bool)

(assert (=> mapIsEmpty!35032 mapRes!35032))

(declare-fun mapNonEmpty!35032 () Bool)

(declare-fun tp!66631 () Bool)

(declare-fun e!546623 () Bool)

(assert (=> mapNonEmpty!35032 (= mapRes!35032 (and tp!66631 e!546623))))

(declare-fun mapKey!35032 () (_ BitVec 32))

(declare-fun mapRest!35032 () (Array (_ BitVec 32) ValueCell!10526))

(declare-fun mapValue!35032 () ValueCell!10526)

(assert (=> mapNonEmpty!35032 (= (arr!28899 _values!1425) (store mapRest!35032 mapKey!35032 mapValue!35032))))

(declare-fun b!969528 () Bool)

(declare-fun res!649030 () Bool)

(assert (=> b!969528 (=> (not res!649030) (not e!546625))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60077 (_ BitVec 32)) Bool)

(assert (=> b!969528 (= res!649030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!969529 () Bool)

(declare-fun e!546627 () Bool)

(declare-fun e!546624 () Bool)

(assert (=> b!969529 (= e!546627 (and e!546624 mapRes!35032))))

(declare-fun condMapEmpty!35032 () Bool)

(declare-fun mapDefault!35032 () ValueCell!10526)

