; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82300 () Bool)

(assert start!82300)

(declare-fun b_free!18545 () Bool)

(declare-fun b_next!18545 () Bool)

(assert (=> start!82300 (= b_free!18545 (not b_next!18545))))

(declare-fun tp!64597 () Bool)

(declare-fun b_and!30051 () Bool)

(assert (=> start!82300 (= tp!64597 b_and!30051)))

(declare-fun b!958912 () Bool)

(declare-fun res!641986 () Bool)

(declare-fun e!540608 () Bool)

(assert (=> b!958912 (=> (not res!641986) (not e!540608))))

(declare-datatypes ((array!58615 0))(
  ( (array!58616 (arr!28177 (Array (_ BitVec 32) (_ BitVec 64))) (size!28657 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58615)

(declare-datatypes ((List!19721 0))(
  ( (Nil!19718) (Cons!19717 (h!20879 (_ BitVec 64)) (t!28092 List!19721)) )
))
(declare-fun arrayNoDuplicates!0 (array!58615 (_ BitVec 32) List!19721) Bool)

(assert (=> b!958912 (= res!641986 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19718))))

(declare-fun b!958914 () Bool)

(declare-fun res!641988 () Bool)

(assert (=> b!958914 (=> (not res!641988) (not e!540608))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958914 (= res!641988 (validKeyInArray!0 (select (arr!28177 _keys!1668) i!793)))))

(declare-fun mapNonEmpty!33856 () Bool)

(declare-fun mapRes!33856 () Bool)

(declare-fun tp!64596 () Bool)

(declare-fun e!540605 () Bool)

(assert (=> mapNonEmpty!33856 (= mapRes!33856 (and tp!64596 e!540605))))

(declare-datatypes ((V!33317 0))(
  ( (V!33318 (val!10676 Int)) )
))
(declare-datatypes ((ValueCell!10144 0))(
  ( (ValueCellFull!10144 (v!13233 V!33317)) (EmptyCell!10144) )
))
(declare-fun mapValue!33856 () ValueCell!10144)

(declare-fun mapRest!33856 () (Array (_ BitVec 32) ValueCell!10144))

(declare-fun mapKey!33856 () (_ BitVec 32))

(declare-datatypes ((array!58617 0))(
  ( (array!58618 (arr!28178 (Array (_ BitVec 32) ValueCell!10144)) (size!28658 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58617)

(assert (=> mapNonEmpty!33856 (= (arr!28178 _values!1386) (store mapRest!33856 mapKey!33856 mapValue!33856))))

(declare-fun b!958915 () Bool)

(declare-fun res!641983 () Bool)

(assert (=> b!958915 (=> (not res!641983) (not e!540608))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun minValue!1328 () V!33317)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33317)

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((tuple2!13856 0))(
  ( (tuple2!13857 (_1!6938 (_ BitVec 64)) (_2!6938 V!33317)) )
))
(declare-datatypes ((List!19722 0))(
  ( (Nil!19719) (Cons!19718 (h!20880 tuple2!13856) (t!28093 List!19722)) )
))
(declare-datatypes ((ListLongMap!12567 0))(
  ( (ListLongMap!12568 (toList!6299 List!19722)) )
))
(declare-fun contains!5352 (ListLongMap!12567 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3484 (array!58615 array!58617 (_ BitVec 32) (_ BitVec 32) V!33317 V!33317 (_ BitVec 32) Int) ListLongMap!12567)

(assert (=> b!958915 (= res!641983 (contains!5352 (getCurrentListMap!3484 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28177 _keys!1668) i!793)))))

(declare-fun b!958916 () Bool)

(declare-fun e!540604 () Bool)

(declare-fun e!540607 () Bool)

(assert (=> b!958916 (= e!540604 (and e!540607 mapRes!33856))))

(declare-fun condMapEmpty!33856 () Bool)

(declare-fun mapDefault!33856 () ValueCell!10144)

