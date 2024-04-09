; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82366 () Bool)

(assert start!82366)

(declare-fun b_free!18605 () Bool)

(declare-fun b_next!18605 () Bool)

(assert (=> start!82366 (= b_free!18605 (not b_next!18605))))

(declare-fun tp!64785 () Bool)

(declare-fun b_and!30111 () Bool)

(assert (=> start!82366 (= tp!64785 b_and!30111)))

(declare-fun mapNonEmpty!33955 () Bool)

(declare-fun mapRes!33955 () Bool)

(declare-fun tp!64786 () Bool)

(declare-fun e!541103 () Bool)

(assert (=> mapNonEmpty!33955 (= mapRes!33955 (and tp!64786 e!541103))))

(declare-fun mapKey!33955 () (_ BitVec 32))

(declare-datatypes ((V!33405 0))(
  ( (V!33406 (val!10709 Int)) )
))
(declare-datatypes ((ValueCell!10177 0))(
  ( (ValueCellFull!10177 (v!13266 V!33405)) (EmptyCell!10177) )
))
(declare-fun mapValue!33955 () ValueCell!10177)

(declare-fun mapRest!33955 () (Array (_ BitVec 32) ValueCell!10177))

(declare-datatypes ((array!58741 0))(
  ( (array!58742 (arr!28240 (Array (_ BitVec 32) ValueCell!10177)) (size!28720 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58741)

(assert (=> mapNonEmpty!33955 (= (arr!28240 _values!1386) (store mapRest!33955 mapKey!33955 mapValue!33955))))

(declare-fun b!959841 () Bool)

(declare-fun res!642615 () Bool)

(declare-fun e!541100 () Bool)

(assert (=> b!959841 (=> (not res!642615) (not e!541100))))

(declare-datatypes ((array!58743 0))(
  ( (array!58744 (arr!28241 (Array (_ BitVec 32) (_ BitVec 64))) (size!28721 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58743)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58743 (_ BitVec 32)) Bool)

(assert (=> b!959841 (= res!642615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!959842 () Bool)

(assert (=> b!959842 (= e!541100 false)))

(declare-fun minValue!1328 () V!33405)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33405)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun lt!430544 () Bool)

(declare-datatypes ((tuple2!13900 0))(
  ( (tuple2!13901 (_1!6960 (_ BitVec 64)) (_2!6960 V!33405)) )
))
(declare-datatypes ((List!19763 0))(
  ( (Nil!19760) (Cons!19759 (h!20921 tuple2!13900) (t!28134 List!19763)) )
))
(declare-datatypes ((ListLongMap!12611 0))(
  ( (ListLongMap!12612 (toList!6321 List!19763)) )
))
(declare-fun contains!5371 (ListLongMap!12611 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3506 (array!58743 array!58741 (_ BitVec 32) (_ BitVec 32) V!33405 V!33405 (_ BitVec 32) Int) ListLongMap!12611)

(assert (=> b!959842 (= lt!430544 (contains!5371 (getCurrentListMap!3506 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28241 _keys!1668) i!793)))))

(declare-fun b!959843 () Bool)

(declare-fun tp_is_empty!21317 () Bool)

(assert (=> b!959843 (= e!541103 tp_is_empty!21317)))

(declare-fun b!959844 () Bool)

(declare-fun res!642616 () Bool)

(assert (=> b!959844 (=> (not res!642616) (not e!541100))))

(assert (=> b!959844 (= res!642616 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28721 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28721 _keys!1668))))))

(declare-fun b!959845 () Bool)

(declare-fun res!642614 () Bool)

(assert (=> b!959845 (=> (not res!642614) (not e!541100))))

(declare-datatypes ((List!19764 0))(
  ( (Nil!19761) (Cons!19760 (h!20922 (_ BitVec 64)) (t!28135 List!19764)) )
))
(declare-fun arrayNoDuplicates!0 (array!58743 (_ BitVec 32) List!19764) Bool)

(assert (=> b!959845 (= res!642614 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19761))))

(declare-fun b!959846 () Bool)

(declare-fun e!541099 () Bool)

(assert (=> b!959846 (= e!541099 tp_is_empty!21317)))

(declare-fun b!959847 () Bool)

(declare-fun e!541101 () Bool)

(assert (=> b!959847 (= e!541101 (and e!541099 mapRes!33955))))

(declare-fun condMapEmpty!33955 () Bool)

(declare-fun mapDefault!33955 () ValueCell!10177)

