; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82432 () Bool)

(assert start!82432)

(declare-fun b_free!18671 () Bool)

(declare-fun b_next!18671 () Bool)

(assert (=> start!82432 (= b_free!18671 (not b_next!18671))))

(declare-fun tp!64983 () Bool)

(declare-fun b_and!30177 () Bool)

(assert (=> start!82432 (= tp!64983 b_and!30177)))

(declare-fun b!960748 () Bool)

(declare-fun res!643226 () Bool)

(declare-fun e!541598 () Bool)

(assert (=> b!960748 (=> (not res!643226) (not e!541598))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33493 0))(
  ( (V!33494 (val!10742 Int)) )
))
(declare-fun minValue!1328 () V!33493)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58863 0))(
  ( (array!58864 (arr!28301 (Array (_ BitVec 32) (_ BitVec 64))) (size!28781 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58863)

(declare-datatypes ((ValueCell!10210 0))(
  ( (ValueCellFull!10210 (v!13299 V!33493)) (EmptyCell!10210) )
))
(declare-datatypes ((array!58865 0))(
  ( (array!58866 (arr!28302 (Array (_ BitVec 32) ValueCell!10210)) (size!28782 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58865)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33493)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((tuple2!13942 0))(
  ( (tuple2!13943 (_1!6981 (_ BitVec 64)) (_2!6981 V!33493)) )
))
(declare-datatypes ((List!19799 0))(
  ( (Nil!19796) (Cons!19795 (h!20957 tuple2!13942) (t!28170 List!19799)) )
))
(declare-datatypes ((ListLongMap!12653 0))(
  ( (ListLongMap!12654 (toList!6342 List!19799)) )
))
(declare-fun contains!5392 (ListLongMap!12653 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3527 (array!58863 array!58865 (_ BitVec 32) (_ BitVec 32) V!33493 V!33493 (_ BitVec 32) Int) ListLongMap!12653)

(assert (=> b!960748 (= res!643226 (contains!5392 (getCurrentListMap!3527 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28301 _keys!1668) i!793)))))

(declare-fun b!960749 () Bool)

(declare-fun res!643225 () Bool)

(assert (=> b!960749 (=> (not res!643225) (not e!541598))))

(assert (=> b!960749 (= res!643225 (and (= (size!28782 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28781 _keys!1668) (size!28782 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!960750 () Bool)

(declare-fun res!643230 () Bool)

(assert (=> b!960750 (=> (not res!643230) (not e!541598))))

(declare-datatypes ((List!19800 0))(
  ( (Nil!19797) (Cons!19796 (h!20958 (_ BitVec 64)) (t!28171 List!19800)) )
))
(declare-fun arrayNoDuplicates!0 (array!58863 (_ BitVec 32) List!19800) Bool)

(assert (=> b!960750 (= res!643230 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19797))))

(declare-fun b!960751 () Bool)

(declare-fun e!541596 () Bool)

(declare-fun e!541594 () Bool)

(declare-fun mapRes!34054 () Bool)

(assert (=> b!960751 (= e!541596 (and e!541594 mapRes!34054))))

(declare-fun condMapEmpty!34054 () Bool)

(declare-fun mapDefault!34054 () ValueCell!10210)

