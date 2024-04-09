; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83494 () Bool)

(assert start!83494)

(declare-fun b_free!19453 () Bool)

(declare-fun b_next!19453 () Bool)

(assert (=> start!83494 (= b_free!19453 (not b_next!19453))))

(declare-fun tp!67648 () Bool)

(declare-fun b_and!31073 () Bool)

(assert (=> start!83494 (= tp!67648 b_and!31073)))

(declare-fun mapIsEmpty!35545 () Bool)

(declare-fun mapRes!35545 () Bool)

(assert (=> mapIsEmpty!35545 mapRes!35545))

(declare-fun b!974797 () Bool)

(declare-fun res!652653 () Bool)

(declare-fun e!549452 () Bool)

(assert (=> b!974797 (=> (not res!652653) (not e!549452))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34793 0))(
  ( (V!34794 (val!11229 Int)) )
))
(declare-datatypes ((ValueCell!10697 0))(
  ( (ValueCellFull!10697 (v!13788 V!34793)) (EmptyCell!10697) )
))
(declare-datatypes ((array!60731 0))(
  ( (array!60732 (arr!29225 (Array (_ BitVec 32) ValueCell!10697)) (size!29705 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60731)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60733 0))(
  ( (array!60734 (arr!29226 (Array (_ BitVec 32) (_ BitVec 64))) (size!29706 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60733)

(assert (=> b!974797 (= res!652653 (and (= (size!29705 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29706 _keys!1717) (size!29705 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!35545 () Bool)

(declare-fun tp!67647 () Bool)

(declare-fun e!549450 () Bool)

(assert (=> mapNonEmpty!35545 (= mapRes!35545 (and tp!67647 e!549450))))

(declare-fun mapKey!35545 () (_ BitVec 32))

(declare-fun mapValue!35545 () ValueCell!10697)

(declare-fun mapRest!35545 () (Array (_ BitVec 32) ValueCell!10697))

(assert (=> mapNonEmpty!35545 (= (arr!29225 _values!1425) (store mapRest!35545 mapKey!35545 mapValue!35545))))

(declare-fun b!974798 () Bool)

(declare-fun res!652654 () Bool)

(assert (=> b!974798 (=> (not res!652654) (not e!549452))))

(declare-datatypes ((List!20406 0))(
  ( (Nil!20403) (Cons!20402 (h!21564 (_ BitVec 64)) (t!28891 List!20406)) )
))
(declare-fun arrayNoDuplicates!0 (array!60733 (_ BitVec 32) List!20406) Bool)

(assert (=> b!974798 (= res!652654 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20403))))

(declare-fun b!974799 () Bool)

(declare-fun res!652650 () Bool)

(assert (=> b!974799 (=> (not res!652650) (not e!549452))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974799 (= res!652650 (validKeyInArray!0 (select (arr!29226 _keys!1717) i!822)))))

(declare-fun b!974800 () Bool)

(assert (=> b!974800 (= e!549452 false)))

(declare-datatypes ((tuple2!14530 0))(
  ( (tuple2!14531 (_1!7275 (_ BitVec 64)) (_2!7275 V!34793)) )
))
(declare-datatypes ((List!20407 0))(
  ( (Nil!20404) (Cons!20403 (h!21565 tuple2!14530) (t!28892 List!20407)) )
))
(declare-datatypes ((ListLongMap!13241 0))(
  ( (ListLongMap!13242 (toList!6636 List!20407)) )
))
(declare-fun lt!432760 () ListLongMap!13241)

(declare-fun zeroValue!1367 () V!34793)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34793)

(declare-fun getCurrentListMap!3821 (array!60733 array!60731 (_ BitVec 32) (_ BitVec 32) V!34793 V!34793 (_ BitVec 32) Int) ListLongMap!13241)

(assert (=> b!974800 (= lt!432760 (getCurrentListMap!3821 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun res!652649 () Bool)

(assert (=> start!83494 (=> (not res!652649) (not e!549452))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83494 (= res!652649 (validMask!0 mask!2147))))

(assert (=> start!83494 e!549452))

(assert (=> start!83494 true))

(declare-fun e!549449 () Bool)

(declare-fun array_inv!22499 (array!60731) Bool)

(assert (=> start!83494 (and (array_inv!22499 _values!1425) e!549449)))

(declare-fun tp_is_empty!22357 () Bool)

(assert (=> start!83494 tp_is_empty!22357))

(assert (=> start!83494 tp!67648))

(declare-fun array_inv!22500 (array!60733) Bool)

(assert (=> start!83494 (array_inv!22500 _keys!1717)))

(declare-fun b!974801 () Bool)

(assert (=> b!974801 (= e!549450 tp_is_empty!22357)))

(declare-fun b!974802 () Bool)

(declare-fun e!549451 () Bool)

(assert (=> b!974802 (= e!549451 tp_is_empty!22357)))

(declare-fun b!974803 () Bool)

(declare-fun res!652652 () Bool)

(assert (=> b!974803 (=> (not res!652652) (not e!549452))))

(declare-fun contains!5671 (ListLongMap!13241 (_ BitVec 64)) Bool)

(assert (=> b!974803 (= res!652652 (contains!5671 (getCurrentListMap!3821 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29226 _keys!1717) i!822)))))

(declare-fun b!974804 () Bool)

(declare-fun res!652648 () Bool)

(assert (=> b!974804 (=> (not res!652648) (not e!549452))))

(assert (=> b!974804 (= res!652648 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29706 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29706 _keys!1717))))))

(declare-fun b!974805 () Bool)

(assert (=> b!974805 (= e!549449 (and e!549451 mapRes!35545))))

(declare-fun condMapEmpty!35545 () Bool)

(declare-fun mapDefault!35545 () ValueCell!10697)

