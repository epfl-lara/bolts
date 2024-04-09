; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82420 () Bool)

(assert start!82420)

(declare-fun b_free!18659 () Bool)

(declare-fun b_next!18659 () Bool)

(assert (=> start!82420 (= b_free!18659 (not b_next!18659))))

(declare-fun tp!64948 () Bool)

(declare-fun b_and!30165 () Bool)

(assert (=> start!82420 (= tp!64948 b_and!30165)))

(declare-fun b!960569 () Bool)

(declare-fun e!541504 () Bool)

(declare-fun tp_is_empty!21371 () Bool)

(assert (=> b!960569 (= e!541504 tp_is_empty!21371)))

(declare-fun b!960570 () Bool)

(declare-fun e!541506 () Bool)

(assert (=> b!960570 (= e!541506 tp_is_empty!21371)))

(declare-fun b!960571 () Bool)

(declare-fun e!541508 () Bool)

(assert (=> b!960571 (= e!541508 false)))

(declare-fun lt!430625 () Bool)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33477 0))(
  ( (V!33478 (val!10736 Int)) )
))
(declare-fun minValue!1328 () V!33477)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58841 0))(
  ( (array!58842 (arr!28290 (Array (_ BitVec 32) (_ BitVec 64))) (size!28770 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58841)

(declare-datatypes ((ValueCell!10204 0))(
  ( (ValueCellFull!10204 (v!13293 V!33477)) (EmptyCell!10204) )
))
(declare-datatypes ((array!58843 0))(
  ( (array!58844 (arr!28291 (Array (_ BitVec 32) ValueCell!10204)) (size!28771 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58843)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33477)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((tuple2!13932 0))(
  ( (tuple2!13933 (_1!6976 (_ BitVec 64)) (_2!6976 V!33477)) )
))
(declare-datatypes ((List!19791 0))(
  ( (Nil!19788) (Cons!19787 (h!20949 tuple2!13932) (t!28162 List!19791)) )
))
(declare-datatypes ((ListLongMap!12643 0))(
  ( (ListLongMap!12644 (toList!6337 List!19791)) )
))
(declare-fun contains!5387 (ListLongMap!12643 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3522 (array!58841 array!58843 (_ BitVec 32) (_ BitVec 32) V!33477 V!33477 (_ BitVec 32) Int) ListLongMap!12643)

(assert (=> b!960571 (= lt!430625 (contains!5387 (getCurrentListMap!3522 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28290 _keys!1668) i!793)))))

(declare-fun mapIsEmpty!34036 () Bool)

(declare-fun mapRes!34036 () Bool)

(assert (=> mapIsEmpty!34036 mapRes!34036))

(declare-fun b!960572 () Bool)

(declare-fun res!643101 () Bool)

(assert (=> b!960572 (=> (not res!643101) (not e!541508))))

(assert (=> b!960572 (= res!643101 (and (= (size!28771 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28770 _keys!1668) (size!28771 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun res!643104 () Bool)

(assert (=> start!82420 (=> (not res!643104) (not e!541508))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82420 (= res!643104 (validMask!0 mask!2088))))

(assert (=> start!82420 e!541508))

(assert (=> start!82420 true))

(assert (=> start!82420 tp_is_empty!21371))

(declare-fun array_inv!21859 (array!58841) Bool)

(assert (=> start!82420 (array_inv!21859 _keys!1668)))

(declare-fun e!541505 () Bool)

(declare-fun array_inv!21860 (array!58843) Bool)

(assert (=> start!82420 (and (array_inv!21860 _values!1386) e!541505)))

(assert (=> start!82420 tp!64948))

(declare-fun b!960573 () Bool)

(declare-fun res!643100 () Bool)

(assert (=> b!960573 (=> (not res!643100) (not e!541508))))

(declare-datatypes ((List!19792 0))(
  ( (Nil!19789) (Cons!19788 (h!20950 (_ BitVec 64)) (t!28163 List!19792)) )
))
(declare-fun arrayNoDuplicates!0 (array!58841 (_ BitVec 32) List!19792) Bool)

(assert (=> b!960573 (= res!643100 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19789))))

(declare-fun b!960574 () Bool)

(declare-fun res!643102 () Bool)

(assert (=> b!960574 (=> (not res!643102) (not e!541508))))

(assert (=> b!960574 (= res!643102 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28770 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28770 _keys!1668))))))

(declare-fun b!960575 () Bool)

(declare-fun res!643099 () Bool)

(assert (=> b!960575 (=> (not res!643099) (not e!541508))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!960575 (= res!643099 (validKeyInArray!0 (select (arr!28290 _keys!1668) i!793)))))

(declare-fun mapNonEmpty!34036 () Bool)

(declare-fun tp!64947 () Bool)

(assert (=> mapNonEmpty!34036 (= mapRes!34036 (and tp!64947 e!541504))))

(declare-fun mapRest!34036 () (Array (_ BitVec 32) ValueCell!10204))

(declare-fun mapValue!34036 () ValueCell!10204)

(declare-fun mapKey!34036 () (_ BitVec 32))

(assert (=> mapNonEmpty!34036 (= (arr!28291 _values!1386) (store mapRest!34036 mapKey!34036 mapValue!34036))))

(declare-fun b!960576 () Bool)

(declare-fun res!643103 () Bool)

(assert (=> b!960576 (=> (not res!643103) (not e!541508))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58841 (_ BitVec 32)) Bool)

(assert (=> b!960576 (= res!643103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!960577 () Bool)

(assert (=> b!960577 (= e!541505 (and e!541506 mapRes!34036))))

(declare-fun condMapEmpty!34036 () Bool)

(declare-fun mapDefault!34036 () ValueCell!10204)

