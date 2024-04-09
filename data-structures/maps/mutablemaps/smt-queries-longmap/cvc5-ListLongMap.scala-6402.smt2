; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82236 () Bool)

(assert start!82236)

(declare-fun b_free!18481 () Bool)

(declare-fun b_next!18481 () Bool)

(assert (=> start!82236 (= b_free!18481 (not b_next!18481))))

(declare-fun tp!64405 () Bool)

(declare-fun b_and!29987 () Bool)

(assert (=> start!82236 (= tp!64405 b_and!29987)))

(declare-fun b!958022 () Bool)

(declare-fun e!540127 () Bool)

(assert (=> b!958022 (= e!540127 false)))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58491 0))(
  ( (array!58492 (arr!28115 (Array (_ BitVec 32) (_ BitVec 64))) (size!28595 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58491)

(declare-datatypes ((V!33233 0))(
  ( (V!33234 (val!10644 Int)) )
))
(declare-datatypes ((ValueCell!10112 0))(
  ( (ValueCellFull!10112 (v!13201 V!33233)) (EmptyCell!10112) )
))
(declare-datatypes ((array!58493 0))(
  ( (array!58494 (arr!28116 (Array (_ BitVec 32) ValueCell!10112)) (size!28596 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58493)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33233)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun minValue!1328 () V!33233)

(declare-fun lt!430358 () Bool)

(declare-datatypes ((tuple2!13810 0))(
  ( (tuple2!13811 (_1!6915 (_ BitVec 64)) (_2!6915 V!33233)) )
))
(declare-datatypes ((List!19676 0))(
  ( (Nil!19673) (Cons!19672 (h!20834 tuple2!13810) (t!28047 List!19676)) )
))
(declare-datatypes ((ListLongMap!12521 0))(
  ( (ListLongMap!12522 (toList!6276 List!19676)) )
))
(declare-fun contains!5329 (ListLongMap!12521 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3461 (array!58491 array!58493 (_ BitVec 32) (_ BitVec 32) V!33233 V!33233 (_ BitVec 32) Int) ListLongMap!12521)

(assert (=> b!958022 (= lt!430358 (contains!5329 (getCurrentListMap!3461 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28115 _keys!1668) i!793)))))

(declare-fun b!958024 () Bool)

(declare-fun res!641381 () Bool)

(assert (=> b!958024 (=> (not res!641381) (not e!540127))))

(assert (=> b!958024 (= res!641381 (and (= (size!28596 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28595 _keys!1668) (size!28596 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!33760 () Bool)

(declare-fun mapRes!33760 () Bool)

(declare-fun tp!64404 () Bool)

(declare-fun e!540125 () Bool)

(assert (=> mapNonEmpty!33760 (= mapRes!33760 (and tp!64404 e!540125))))

(declare-fun mapRest!33760 () (Array (_ BitVec 32) ValueCell!10112))

(declare-fun mapKey!33760 () (_ BitVec 32))

(declare-fun mapValue!33760 () ValueCell!10112)

(assert (=> mapNonEmpty!33760 (= (arr!28116 _values!1386) (store mapRest!33760 mapKey!33760 mapValue!33760))))

(declare-fun b!958025 () Bool)

(declare-fun e!540126 () Bool)

(declare-fun tp_is_empty!21187 () Bool)

(assert (=> b!958025 (= e!540126 tp_is_empty!21187)))

(declare-fun b!958026 () Bool)

(assert (=> b!958026 (= e!540125 tp_is_empty!21187)))

(declare-fun b!958027 () Bool)

(declare-fun res!641382 () Bool)

(assert (=> b!958027 (=> (not res!641382) (not e!540127))))

(assert (=> b!958027 (= res!641382 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28595 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28595 _keys!1668))))))

(declare-fun b!958028 () Bool)

(declare-fun res!641383 () Bool)

(assert (=> b!958028 (=> (not res!641383) (not e!540127))))

(declare-datatypes ((List!19677 0))(
  ( (Nil!19674) (Cons!19673 (h!20835 (_ BitVec 64)) (t!28048 List!19677)) )
))
(declare-fun arrayNoDuplicates!0 (array!58491 (_ BitVec 32) List!19677) Bool)

(assert (=> b!958028 (= res!641383 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19674))))

(declare-fun b!958029 () Bool)

(declare-fun res!641385 () Bool)

(assert (=> b!958029 (=> (not res!641385) (not e!540127))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58491 (_ BitVec 32)) Bool)

(assert (=> b!958029 (= res!641385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun mapIsEmpty!33760 () Bool)

(assert (=> mapIsEmpty!33760 mapRes!33760))

(declare-fun b!958030 () Bool)

(declare-fun res!641384 () Bool)

(assert (=> b!958030 (=> (not res!641384) (not e!540127))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958030 (= res!641384 (validKeyInArray!0 (select (arr!28115 _keys!1668) i!793)))))

(declare-fun res!641380 () Bool)

(assert (=> start!82236 (=> (not res!641380) (not e!540127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82236 (= res!641380 (validMask!0 mask!2088))))

(assert (=> start!82236 e!540127))

(assert (=> start!82236 true))

(assert (=> start!82236 tp_is_empty!21187))

(declare-fun array_inv!21751 (array!58491) Bool)

(assert (=> start!82236 (array_inv!21751 _keys!1668)))

(declare-fun e!540124 () Bool)

(declare-fun array_inv!21752 (array!58493) Bool)

(assert (=> start!82236 (and (array_inv!21752 _values!1386) e!540124)))

(assert (=> start!82236 tp!64405))

(declare-fun b!958023 () Bool)

(assert (=> b!958023 (= e!540124 (and e!540126 mapRes!33760))))

(declare-fun condMapEmpty!33760 () Bool)

(declare-fun mapDefault!33760 () ValueCell!10112)

