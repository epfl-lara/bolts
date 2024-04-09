; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82356 () Bool)

(assert start!82356)

(declare-fun b_free!18595 () Bool)

(declare-fun b_next!18595 () Bool)

(assert (=> start!82356 (= b_free!18595 (not b_next!18595))))

(declare-fun tp!64755 () Bool)

(declare-fun b_and!30101 () Bool)

(assert (=> start!82356 (= tp!64755 b_and!30101)))

(declare-fun mapIsEmpty!33940 () Bool)

(declare-fun mapRes!33940 () Bool)

(assert (=> mapIsEmpty!33940 mapRes!33940))

(declare-fun b!959705 () Bool)

(declare-fun res!642524 () Bool)

(declare-fun e!541027 () Bool)

(assert (=> b!959705 (=> (not res!642524) (not e!541027))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58721 0))(
  ( (array!58722 (arr!28230 (Array (_ BitVec 32) (_ BitVec 64))) (size!28710 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58721)

(declare-datatypes ((V!33393 0))(
  ( (V!33394 (val!10704 Int)) )
))
(declare-datatypes ((ValueCell!10172 0))(
  ( (ValueCellFull!10172 (v!13261 V!33393)) (EmptyCell!10172) )
))
(declare-datatypes ((array!58723 0))(
  ( (array!58724 (arr!28231 (Array (_ BitVec 32) ValueCell!10172)) (size!28711 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58723)

(assert (=> b!959705 (= res!642524 (and (= (size!28711 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28710 _keys!1668) (size!28711 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!959706 () Bool)

(declare-fun res!642526 () Bool)

(assert (=> b!959706 (=> (not res!642526) (not e!541027))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!959706 (= res!642526 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28710 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28710 _keys!1668))))))

(declare-fun b!959707 () Bool)

(declare-fun e!541028 () Bool)

(declare-fun tp_is_empty!21307 () Bool)

(assert (=> b!959707 (= e!541028 tp_is_empty!21307)))

(declare-fun mapNonEmpty!33940 () Bool)

(declare-fun tp!64756 () Bool)

(declare-fun e!541026 () Bool)

(assert (=> mapNonEmpty!33940 (= mapRes!33940 (and tp!64756 e!541026))))

(declare-fun mapKey!33940 () (_ BitVec 32))

(declare-fun mapValue!33940 () ValueCell!10172)

(declare-fun mapRest!33940 () (Array (_ BitVec 32) ValueCell!10172))

(assert (=> mapNonEmpty!33940 (= (arr!28231 _values!1386) (store mapRest!33940 mapKey!33940 mapValue!33940))))

(declare-fun res!642527 () Bool)

(assert (=> start!82356 (=> (not res!642527) (not e!541027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82356 (= res!642527 (validMask!0 mask!2088))))

(assert (=> start!82356 e!541027))

(assert (=> start!82356 true))

(assert (=> start!82356 tp_is_empty!21307))

(declare-fun array_inv!21827 (array!58721) Bool)

(assert (=> start!82356 (array_inv!21827 _keys!1668)))

(declare-fun e!541024 () Bool)

(declare-fun array_inv!21828 (array!58723) Bool)

(assert (=> start!82356 (and (array_inv!21828 _values!1386) e!541024)))

(assert (=> start!82356 tp!64755))

(declare-fun b!959708 () Bool)

(declare-fun res!642528 () Bool)

(assert (=> b!959708 (=> (not res!642528) (not e!541027))))

(declare-datatypes ((List!19755 0))(
  ( (Nil!19752) (Cons!19751 (h!20913 (_ BitVec 64)) (t!28126 List!19755)) )
))
(declare-fun arrayNoDuplicates!0 (array!58721 (_ BitVec 32) List!19755) Bool)

(assert (=> b!959708 (= res!642528 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19752))))

(declare-fun b!959709 () Bool)

(declare-fun res!642523 () Bool)

(assert (=> b!959709 (=> (not res!642523) (not e!541027))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58721 (_ BitVec 32)) Bool)

(assert (=> b!959709 (= res!642523 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!959710 () Bool)

(assert (=> b!959710 (= e!541027 false)))

(declare-fun lt!430529 () Bool)

(declare-fun minValue!1328 () V!33393)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33393)

(declare-datatypes ((tuple2!13890 0))(
  ( (tuple2!13891 (_1!6955 (_ BitVec 64)) (_2!6955 V!33393)) )
))
(declare-datatypes ((List!19756 0))(
  ( (Nil!19753) (Cons!19752 (h!20914 tuple2!13890) (t!28127 List!19756)) )
))
(declare-datatypes ((ListLongMap!12601 0))(
  ( (ListLongMap!12602 (toList!6316 List!19756)) )
))
(declare-fun contains!5366 (ListLongMap!12601 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3501 (array!58721 array!58723 (_ BitVec 32) (_ BitVec 32) V!33393 V!33393 (_ BitVec 32) Int) ListLongMap!12601)

(assert (=> b!959710 (= lt!430529 (contains!5366 (getCurrentListMap!3501 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28230 _keys!1668) i!793)))))

(declare-fun b!959711 () Bool)

(declare-fun res!642525 () Bool)

(assert (=> b!959711 (=> (not res!642525) (not e!541027))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959711 (= res!642525 (validKeyInArray!0 (select (arr!28230 _keys!1668) i!793)))))

(declare-fun b!959712 () Bool)

(assert (=> b!959712 (= e!541024 (and e!541028 mapRes!33940))))

(declare-fun condMapEmpty!33940 () Bool)

(declare-fun mapDefault!33940 () ValueCell!10172)

